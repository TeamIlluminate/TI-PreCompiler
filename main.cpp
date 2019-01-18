#include <iostream>
#include <experimental/filesystem>
#include <fstream>
#include <ostream>
#include <list>
#include <algorithm>
#include <string>

namespace fs = std::experimental::filesystem;

int main(int, char **)
{
    std::cout << "\n(==|==========> TI-PreCompiler started! <==========(==|\n";
    std::cout << "\nLoading serializable vtable...\n";

    std::ifstream open;
    open.open("svtable.tipc");
    std::list<std::string> source;
    std::string line;
    while (std::getline(open, line))
    {
        source.push_back(line);
    }
    open.close();

    for (std::string sType : source)
    {
        std::cout << "Serializable type: " << sType << '\n';
    }

    std::cout << "\nGenereting serializable vtable...\n";

    {
        fs::recursive_directory_iterator begin("src");
        fs::recursive_directory_iterator end;

        std::vector<fs::path> subdirs;
        std::copy_if(begin, end, std::back_inserter(subdirs), [](const fs::path &path) {
            return fs::is_directory(path);
        });
    }

    fs::recursive_directory_iterator begin("src");
    fs::recursive_directory_iterator end;

    std::vector<fs::path> files;
    std::copy_if(begin, end, std::back_inserter(files), [](const fs::path &path_) {
        return fs::is_regular_file(path_) && (path_.extension() == ".h" || path_.extension() == ".cpp");
    });

    std::list<std::string> s_Types;
    std::string includes;
    //Вынес отдельно. В будущем будет юзабилити.
    std::string attribute = "//[Serializable]";

    for (fs::path s_file : files)
    {
        std::ifstream sourceType;
        sourceType.open(s_file);

        std::string line;
        while (std::getline(sourceType, line))
        {
            if (line.find(attribute) != std::string::npos)
            {
                s_Types.push_back(s_file.filename().replace_extension());
                std::string st = s_file.native();
                st.replace(0, 4, "");
                includes += "#include \"" + st + "\"\n";
            }
        }
        sourceType.close();
    }

    std::cout << "\nComparing types" << '\n';

    bool isGenereted = false;

    std::list<std::string> genTypes;
    for (std::string sType : s_Types)
    {
        for (std::string lType : source)
        {
            if (sType == lType)
            {
                std::cout << "Type " << sType << " already genereted!" << '\n';
                isGenereted = true;
            }
        }

        if (!isGenereted)
        {
            std::cout << "Type: " << sType << " will be genereted!" << '\n';
            genTypes.push_back(sType);
            isGenereted = false;
        }
    }

    std::cout << "\nSaving table..." << '\n';
    std::ofstream save;
    save.open("svtable.tipc");
    std::string sTable;
    for (std::string sType : s_Types)
    {
        sTable += sType + '\n';
    }
    save << sTable;
    save.close();

    std::string sTypeGen;
    for (auto genType : genTypes)
    {
        sTypeGen += "Serializable::RegisterComponentConstructor(\"" + genType + "\", []() -> shared_ptr<Component> { return make_shared<" + genType + ">(); });\n";
    }

    std::list<std::string> SerType;

    SerType.push_back("#include \"Serializable.h\" \n");
    SerType.push_back(includes);
    SerType.push_back("#pragma once\n");
    SerType.push_back("namespace eng\n");
    SerType.push_back("{\n");
    SerType.push_back("class SerializableGenerator\n");
    SerType.push_back("{\n");
    SerType.push_back("public:\n");
    SerType.push_back("SerializableGenerator()\n");
    SerType.push_back("{\n");
    SerType.push_back("Generate();\n");
    SerType.push_back("}\n");
    SerType.push_back("private:\n");
    SerType.push_back("void Generate(){\n");
    SerType.push_back(sTypeGen);
    SerType.push_back("}\n");
    SerType.push_back("};\n");
    SerType.push_back("}");

    std::ofstream sGen;
    sGen.open("src/SerializableGenerator.cpp");
    for(auto classGen : SerType)
    sGen << classGen;
    sGen.close();

    std::cout << "\nSerializationGenerator class generated!" << '\n';
}
