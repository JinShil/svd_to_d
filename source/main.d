/*
Copyright © 2017 Michael V. Franklin

This file is free software: you can redistribute it and/or modify
it under the terms of the GNU General Public License as published by
the Free Software Foundation, either version 3 of the License, or
(at your option) any later version.

This file is distributed in the hope that it will be useful,
but WITHOUT ANY WARRANTY; without even the implied warranty of
MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
GNU General Public License for more details.

You should have received a copy of the GNU General Public License
along with this file.  If not, see <http://www.gnu.org/licenses/>.
*/

import std.file;
import std.stdio;
import std.getopt;
import std.xml;
import std.string;
import std.array;
import std.conv;
import std.path;
import std.format;
import std.range;

private:

class Device
{
    Peripheral[] peripherals;
}

class Peripheral
{
    string name;
    string description;
    string baseAddress;
    string derivedFrom;

    Register[] registers;
}

class Register
{
    string name;
    string description;
    uint addressOffset;
    uint numberOfRegisters;
    uint addressIncrement;

    BitField[] fields;
}

class BitField
{
    string name;
    string description;
    string width;
    string bitIndex;
    string mutability;
    
    Enumeration[] values;
}

class Enumeration
{
    string name;
    string description;
    string value;
}

uint to_uint(string s)
{
    if (s.startsWith("0x"))
    {
        s = s.drop(2);
        return to!uint(s, 16);
    }
    else
    {
        return to!uint(s);
    }
}

int main(string[] args)
{
    string outputFolder;

    auto result = getopt
    (
        args,
        "outputFolder|o", "The ouput folder for the generated D code.", &outputFolder
    );
    
    if (result.helpWanted || args.length < 2 || outputFolder.length < 1)
    {
        writefln("USAGE: %s [options] svd_file -o=output_folder", args[0]);
        writeln();
        write("options:");
        defaultGetoptPrinter("", result.options);

        return 0;
    }

    immutable auto svdFile = args[1];

    // Ensure SVD file exists
    if (!std.file.exists(svdFile))
    {
        stderr.writefln("Could not find svd file '%s'.", svdFile);
        return 1;
    }

    // if the output directory exits...
    if (std.file.exists(outputFolder))
    {
        // make sure it's a directory
        if (!isDir(outputFolder))
        {
            stderr.writefln("'%s' is not a directory.", outputFolder);
        }
    }
    // create the output directory if it doesn't exist
    else
    {
        mkdirRecurse(outputFolder);
    }

    // TODO: handle file read errors
    immutable auto svdxml = cast(string)read(svdFile);

    // Check validity of XML
    try
    {
        check(svdxml);
    }
    catch(Exception ex)
    {
        stderr.write(ex.toString());
        return 1;
    }

    // Parse the XML file and generate an object model (see Device class) in memory
    // TODO: I'm not very happy with this code.  I only did it this way because I 
    // couldn't figure out how to use std.xml any other way.  The problem is the
    // onStartTag["name"] is called multiple times for any <name/> tag in the document
    // instead of just the current element in the parser.  Therefore, I had to add this
    // 'parent' variable to keep track of where I am in the hierarchy.
    Device device = new Device();
    string parent = null;
    auto parser = new DocumentParser(svdxml);
    parser.onStartTag["name"] = (ElementParser n)
    {
        n.onText = (string text)
        {
            if (parent == "peripheral")
            {
                device.peripherals[$-1].name = text;
            }
            else if (parent == "register")
            {
                device.peripherals[$-1].registers[$-1].name = text;
            }
            else if (parent == "field")
            {
                device.peripherals[$-1].registers[$-1].fields[$-1].name = text;
            }
            else if (parent == "enumeratedValue")
            {
                device.peripherals[$-1].registers[$-1].fields[$-1].values[$-1].name = text;
            }
        };
        n.parse();
    };
    parser.onStartTag["description"] = (ElementParser n)
    {
        n.onText = (string text)
        {
            if (parent == "peripheral")
            {
                device.peripherals[$-1].description = text;
            }
            else if (parent == "register")
            {
                device.peripherals[$-1].registers[$-1].description = text;
            }
            else if (parent == "field")
            {
                device.peripherals[$-1].registers[$-1].fields[$-1].description = text;
            }
            else if (parent == "enumeratedValue")
            {
                device.peripherals[$-1].registers[$-1].fields[$-1].values[$-1].description = text;
            }
        };
        n.parse();
    };
    parser.onStartTag["baseAddress"] = (ElementParser parser)
    {
        parser.onText = (string text)
        {
            if (parent == "peripheral")
            {
                device.peripherals[$-1].baseAddress = text;
            }
        };
        parser.parse();
    };
    parser.onStartTag["addressOffset"] = (ElementParser parser)
    {
        parser.onText = (string text)
        {
            if (parent == "register")
            {
                device.peripherals[$-1].registers[$-1].addressOffset = to_uint(text);
            }
        };
        parser.parse();
    };
    parser.onStartTag["dim"] = (ElementParser n)
    {
        n.onText = (string text)
        {
            device.peripherals[$-1].registers[$-1].numberOfRegisters = to_uint(text);
        };
        n.parse();
    };
    parser.onStartTag["dimIncrement"] = (ElementParser n)
    {
        n.onText = (string text)
        {
            device.peripherals[$-1].registers[$-1].addressIncrement = to_uint(text);
        };
        n.parse();
    };
    parser.onStartTag["bitWidth"] = (ElementParser parser)
    {
        parser.onText = (string text)
        {
            if (parent == "field")
            {
                device.peripherals[$-1].registers[$-1].fields[$-1].width = text;
            }
        };
        parser.parse();
    };
    parser.onStartTag["bitOffset"] = (ElementParser parser)
    {
        parser.onText = (string text)
        {
            if (parent == "field")
            {
                device.peripherals[$-1].registers[$-1].fields[$-1].bitIndex = text;
            }
        };
        parser.parse();
    };
    parser.onStartTag["access"] = (ElementParser parser)
    {
        parser.onText = (string text)
        {
            if (parent == "field")
            {
                device.peripherals[$-1].registers[$-1].fields[$-1].mutability = text;
            }
        };
        parser.parse();
    };
    parser.onStartTag["value"] = (ElementParser parser)
    {
        parser.onText = (string text)
        {
            if (parent == "enumeratedValue")
            {
                device.peripherals[$-1].registers[$-1].fields[$-1].values[$-1].value = text;
            }
        };
        parser.parse();
    };
    parser.onStartTag["peripheral"] = (ElementParser parser)
    {
        device.peripherals ~= new Peripheral();
        auto derivedFrom = "derivedFrom" in parser.tag.attr;
        if (derivedFrom !is null)
        {
            device.peripherals[$-1].derivedFrom = *derivedFrom;
        }
        parent = parser.tag.name;
    };
    parser.onStartTag["enumeratedValues"] = (ElementParser parser)
    {
        parent = parser.tag.name;
    };
    parser.onStartTag["enumeratedValue"] = (ElementParser parser)
    {
        device.peripherals[$-1].registers[$-1].fields[$-1].values ~= new Enumeration();
        parent = parser.tag.name;
    };
    parser.onStartTag["register"] = (ElementParser parser)
    {
        device.peripherals[$-1].registers ~= new Register();
        parent = parser.tag.name;
    };
    parser.onStartTag["cluster"] = (ElementParser parser)
    {
        parent = parser.tag.name;
    };
    parser.onStartTag["interrupt"] = (ElementParser parser)
    {
        parent = parser.tag.name;
    };
    parser.onStartTag["field"] = (ElementParser parser)
    {
        device.peripherals[$-1].registers[$-1].fields ~= new BitField();
        parent = parser.tag.name;
    };
    parser.parse();

    // Now that we have our object model for the entire XML file, generate D code
    // for each peripheral
    foreach(Peripheral p; device.peripherals)
    {
        auto code = appender!string;
        auto registers = p.registers;

        // module declaration
        code.put("module " ~ baseName(outputFolder) ~ "." ~ toLower(p.name) ~ ";\n");
        code.put("\n");

        // imports
        code.put("import " ~ baseName(outputFolder) ~ ".mmio;\n");
        code.put("\n");

        code.put("/*****************************************************************************\n");
        code.put(" " ~ p.description ~ "\n");
        code.put("*/\n");
        code.put("final abstract class " ~ p.name ~ " : Peripheral!(" ~ p.baseAddress ~ ")\n");
        code.put("{\n");

        // If this peripheral is derived from another peripheral
        if (p.derivedFrom !is null)
        {
            // get the peripheral it is derived from.
            bool found;
            foreach(Peripheral dp; device.peripherals)
            {
                if (dp.name == p.derivedFrom)
                {
                    registers = dp.registers;
                    found = true;
                    break;
                }
            }

            if (!found)
            {
                throw new Exception("Couldn't find peripheral '" ~ p.derivedFrom ~ "'");
            }
        }    

        // Generate D code for each register in the peripheral
        bool firstRegister = true;
        foreach(Register r; registers)
        {
            immutable auto tab = "    ";

            if (firstRegister)
            {
                firstRegister = false;
            }
            else
            {
                code.put("\n");
            }

            void outputRegister(string name, uint addressIncrement = 0)
            {
                uint addressOffset = r.addressOffset + addressIncrement;

                code.put(tab ~ "/*************************************************************************\n");
                code.put(tab ~ " " ~ r.description ~ "\n");
                code.put(tab ~ "*/\n");
                code.put(tab ~ "final abstract class " ~ name ~ " : Register!(" ~ format("%02#x", addressOffset) ~ ")\n");
                code.put(tab ~ "{\n");

                // Generate D code for each bit field in the register
                bool firstBitField = true;
                foreach(BitField f; r.fields)
                {
                    if (firstBitField)
                    {
                        firstBitField = false;
                    }
                    else
                    {
                        code.put("\n");
                    }

                    code.put(tab ~ tab ~ "/*********************************************************************\n");
                    code.put(tab ~ tab ~ " " ~ f.description ~ "\n");
                    code.put(tab ~ tab ~ "*/\n");

                    immutable auto lsb = to!int(f.bitIndex);
                    immutable auto w = to!int(f.width);
                    immutable auto msb = lsb + w - 1;

                    void outputMutability()
                    {
                        if (f.mutability == "read-only")
                        {
                            code.put("Mutability.r");
                        }
                        else if (f.mutability == "write-only")
                        {
                            code.put("Mutability.w");
                        }
                        else if (f.mutability == "read-write" || f.mutability == "")
                        {
                            code.put("Mutability.rw");
                        }
                        else
                        {
                            throw new Exception("Unknown mutabililty '" ~ f.mutability ~ "'.");
                        }
                    }

                    // If we have enumerated values for this bit field
                    if (f.values.length > 0)
                    {
                        code.put(tab ~ tab ~ "final abstract class " ~ f.name ~ "\n");
                        code.put(tab ~ tab ~ "{\n");

                        code.put(tab ~ tab ~ tab ~ "/*****************************************************************\n");
                        code.put(tab ~ tab ~ tab ~ " " ~ f.name ~ "'s possible values\n");
                        code.put(tab ~ tab ~ tab ~ "*/\n");
                        code.put(tab ~ tab ~ tab ~ "enum Values\n");
                        code.put(tab ~ tab ~ tab ~ "{\n");

                        bool firstEnum = true;
                        foreach(Enumeration v; f.values)
                        {
                            if (firstEnum)
                            {
                                firstEnum = false;
                            }
                            else
                            {
                                code.put("\n");
                            }

                            if (v.description !is null && v.description != "")
                            {
                                code.put(tab ~ tab ~ tab ~ tab ~ "/*************************************************************\n");
                                code.put(tab ~ tab ~ tab ~ tab ~ " " ~ v.description ~ "\n");
                                code.put(tab ~ tab ~ tab ~ tab ~ "*/\n");
                            }
                            code.put(tab ~ tab ~ tab ~ tab ~ v.name ~ " = " ~ v.value ~ ",\n");
                        }
                        code.put(tab ~ tab ~ tab ~ "}\n");
                        code.put(tab ~ tab ~ tab ~ "mixin BitFieldImplementation!(" ~ to!string(msb) ~ ", " ~ to!string(lsb) ~ ", ");
                        outputMutability(); code.put(", Values);\n");
                        code.put(tab ~ tab ~ "}\n");
                    }
                    else
                    {
                        // If this bit field is a single bit
                        if (w == 1)
                        {
                            code.put(tab ~ tab ~ "alias " ~ f.name ~ " = Bit!(" ~ f.bitIndex ~ ", ");
                        }
                        else
                        {
                            code.put(tab ~ tab ~ "alias " ~ f.name ~ " = BitField!(" ~ to!string(msb) ~ ", " ~ to!string(lsb) ~ ", ");
                        }

                        outputMutability(); code.put(");\n");
                    }               
                }
                code.put(tab ~ "}\n");
            }

            if (r.numberOfRegisters < 2)
            {
                outputRegister(r.name);
            }
            else
            {
                for(uint i = 1; i <= r.numberOfRegisters; i++)
                {
                    outputRegister(format(r.name, i), cast(uint)((i - 1) * r.addressIncrement));
                }
            }
            
        }
        code.put("}\n");

        //writeln(code.data);
        std.file.write(outputFolder ~ dirSeparator ~ p.name ~ ".d", code.data);
    }

    return 0;
}