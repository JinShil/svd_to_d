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
import arsd.dom;

private:

class NameAndDescription
{
    string name;
    string description;

    void parse(arsd.dom.Element e)
    {
        foreach(c; e.childNodes)
        {
            if      (c.tagName == "name")        { name        = c.innerText(); }
            else if (c.tagName == "description") { description = c.innerText(); }
        }
    }
}

class Device
{
    Peripheral[] peripherals;

    void parse(arsd.dom.Element e)
    {
        foreach(c; e.childNodes)
        {
            if (c.tagName == "peripherals")
            {
                foreach(pc; c.childNodes)
                {
                    if (pc.tagName == "peripheral")
                    {
                        auto p = new Peripheral();
                        peripherals ~= p;
                        p.parse(pc);
                    }
                }
            }
        }
    }
}

class Peripheral : NameAndDescription
{
    string baseAddress;
    string derivedFrom;

    Register[] registers;
    Cluster[] clusters;

    override void parse(arsd.dom.Element e)
    {
        super.parse(e);

        foreach(n, v; e.attributes)
        {
            if (n == "derivedFrom") { derivedFrom = v; }
        }

        foreach(c; e.childNodes)
        {
            if (c.tagName == "baseAddress") { baseAddress = c.innerText(); }
            if (c.tagName == "registers")
            {
                foreach(rc; c.childNodes)
                {
                    if (rc.tagName == "register")
                    {
                        auto r = new Register();
                        registers ~= r;
                        r.parse(rc);
                    }
                    else if (rc.tagName == "cluster")
                    {
                        auto cl = new Cluster();
                        clusters ~= cl;
                        cl.parse(rc);
                    }
                }
            }
        }
    }
}

class Cluster : NameAndDescription
{   
    Register[] registers;

    override void parse(arsd.dom.Element e)
    {
        super.parse(e);

        foreach(c; e.childNodes)
        {
            if (c.tagName == "register")
            {
                auto r = new Register();
                registers ~= r;
                r.parse(c);
            }
        }
    }
}

class Register : NameAndDescription
{
    uint addressOffset;
    uint numberOfRegisters;
    uint addressIncrement;
    string alternateGroup;

    Field[] fields;

    override void parse(arsd.dom.Element e)
    {
        super.parse(e);

        foreach(c; e.childNodes)
        {
            if      (c.tagName == "addressOffset")  { addressOffset     = to_uint(c.innerText()); }
            else if (c.tagName == "dim")            { numberOfRegisters = to_uint(c.innerText()); }
            else if (c.tagName == "dimIncrement")   { addressIncrement  = to_uint(c.innerText()); }
            else if (c.tagName == "alternateGroup") { alternateGroup    = c.innerText(); }
            else if (c.tagName == "fields")
            {
                foreach(fc; c.childNodes)
                {
                    if (fc.tagName == "field")
                    {
                        auto f = new Field();
                        fields ~= f;
                        f.parse(fc);
                    }
                }
            }
        }
    }
}

class Field : NameAndDescription
{
    string width;
    string bitIndex;
    string mutability;
    
    Enumeration[] values;

    override void parse(arsd.dom.Element e)
    {
        super.parse(e);

        foreach(c; e.childNodes)
        {
            if      (c.tagName == "bitWidth")         { width      = c.innerText(); }
            else if (c.tagName == "bitOffset")        { bitIndex   = c.innerText(); }
            else if (c.tagName == "access")           { mutability = c.innerText(); }
            else if (c.tagName == "enumeratedValues")
            {
                foreach(ec; c.childNodes)
                {
                    if (ec.tagName == "enumeratedValue") 
                    { 
                        auto v = new Enumeration();
                        values ~= v;
                        v.parse(ec);
                        
                    }
                }
            }
        }
    }
}

class Enumeration : NameAndDescription
{
    string value;

    override void parse(arsd.dom.Element e)
    {
        super.parse(e);
        foreach(c; e.childNodes)
        {
            if (c.tagName == "value") { value = c.innerText(); }
        }
    }
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
    immutable auto svdxml = readText(svdFile);

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

    auto doc = new arsd.dom.Document(svdxml, true, true);
    Device device = new Device();
    device.parse(doc.root);

    // Now that we have our object model for the entire XML file, generate D code
    // for each peripheral
    foreach(Peripheral p; device.peripherals)
    {
        auto code = appender!string;
        auto registers = p.registers;
        auto clusters = p.clusters;

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
                    clusters = dp.clusters;
                    found = true;
                    break;
                }
            }

            if (!found)
            {
                throw new Exception("Couldn't find peripheral '" ~ p.derivedFrom ~ "'");
            }
        }    

        void outputRegister(string indent, Register r, string name, uint addressIncrement = 0)
        {
            immutable auto tab = "    ";

            immutable uint addressOffset = r.addressOffset + addressIncrement;

            code.put(indent ~ "/*************************************************************************\n");
            code.put(indent ~ " " ~ r.description ~ "\n");
            code.put(indent ~ "*/\n");
            code.put(indent ~ "final abstract class ");
            
            // If register has an alternateGroup, make name = "name_alternateGroup"
            if (r.alternateGroup !is null && r.alternateGroup.length > 0)
            {
                name ~= "_" ~ r.alternateGroup;
            }
            code.put(name ~ " : Register!(" ~ format("%02#x", addressOffset) ~ ")\n");
            
            code.put(indent ~ "{\n");

            // Generate D code for each bit field in the register
            bool firstField = true;
            foreach(Field f; r.fields)
            {
                if (firstField)
                {
                    firstField = false;
                }
                else
                {
                    code.put("\n");
                }

                code.put(indent ~ tab ~ "/*********************************************************************\n");
                code.put(indent ~ tab ~ " " ~ f.description ~ "\n");
                code.put(indent ~ tab ~ "*/\n");

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
                    code.put(indent ~ tab ~ "final abstract class " ~ f.name ~ "\n");
                    code.put(indent ~ tab ~ "{\n");

                    code.put(indent ~ tab ~ tab ~ "/*****************************************************************\n");
                    code.put(indent ~ tab ~ tab ~ " " ~ f.name ~ "'s possible values\n");
                    code.put(indent ~ tab ~ tab ~ "*/\n");
                    code.put(indent ~ tab ~ tab ~ "enum Values\n");
                    code.put(indent ~ tab ~ tab ~ "{\n");

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
                            code.put(indent ~ tab ~ tab ~ tab ~ "/*************************************************************\n");
                            code.put(indent ~ tab ~ tab ~ tab ~ " " ~ v.description ~ "\n");
                            code.put(indent ~ tab ~ tab ~ tab ~ "*/\n");
                        }

                        // some svd files have numbers for the name.  Prepend _ in that case
                        code.put(indent ~ tab ~ tab ~ tab);
                        if (v.name[0] >= '0' && v.name[0] <= '9')
                        {
                            code.put("_");
                        }
                        code.put(v.name ~ " = " ~ v.value ~ ",\n");
                    }
                    code.put(indent ~ tab ~ tab ~ "}\n");
                    code.put(indent ~ tab ~ tab ~ "mixin BitFieldImplementation!(" ~ to!string(msb) ~ ", " ~ to!string(lsb) ~ ", ");
                    outputMutability(); code.put(", Values);\n");
                    code.put(indent ~ tab ~ "}\n");
                }
                else
                {
                    // If this bit field is a single bit
                    if (w == 1)
                    {
                        code.put(indent ~ tab ~ "alias " ~ f.name ~ " = Bit!(" ~ f.bitIndex ~ ", ");
                    }
                    else
                    {
                        code.put(indent ~ tab ~ "alias " ~ f.name ~ " = BitField!(" ~ to!string(msb) ~ ", " ~ to!string(lsb) ~ ", ");
                    }

                    outputMutability(); code.put(");\n");
                }               
            }
            code.put(indent ~ "}\n");
        }

        void outputRegisters(string tab, Register[] registers)
        {
            bool firstRegister = true;
            foreach(r; registers)
            {
                if (firstRegister)
                {
                    firstRegister = false;
                }
                else
                {
                    code.put("\n");
                }

                if (r.numberOfRegisters <= 1)
                {
                    outputRegister(tab, r, r.name.replace("%s", ""));
                }
                else
                {
                    for(uint i = 1; i <= r.numberOfRegisters; i++)
                    {
                        outputRegister(tab, r, format(r.name, i), cast(uint)((i - 1) * r.addressIncrement));
                    }
                }
            }
        }

        // Generate D code for each register in the peripheral
        outputRegisters("    ", registers);

        foreach(Cluster c; clusters)
        {
            auto tab = "    ";

            code.put(tab ~ "/*****************************************************************************\n");
            code.put(tab ~ " " ~ c.description ~ "\n");
            code.put(tab ~ "*/\n");
            code.put(tab ~ "final abstract class " ~ c.name ~ " : Peripheral!(" ~ p.baseAddress ~ ")\n");
            code.put(tab ~ "{\n");

            outputRegisters(tab ~ tab, c.registers);

            code.put(tab ~ "}\n");
        }

        code.put("}\n");

        //writeln(code.data);
        std.file.write(outputFolder ~ dirSeparator ~ p.name ~ ".d", code.data);
    }

    return 0;
}