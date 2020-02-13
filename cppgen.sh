#!/bin/bash

# a simple script to generate .h and .cpp files with the arguments of the script
echo "Generating...";
touch main.cpp;
for fn in $@
do
    touch $fn.cpp $fn.h;
    upperfn=${fn^^};
    echo "#ifndef __${upperfn}_H__
#define __${upperfn}_H__

class $fn{
    public:
        $fn();
        virtual ~$fn();
};

#endif" > $fn.h;
    echo "$fn.cpp $fn.h done!";
    echo "#include \"$fn.h\"" >> main.cpp;
done
echo "
int main(int argc, char**argv){

    return 0;
}" >> main.cpp
echo "main.cpp done!";
echo "All done!";
