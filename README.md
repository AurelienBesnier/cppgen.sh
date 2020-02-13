# cppgen.sh
A simple bash script to generate .h and .cpp

#Example
This script generate an empty .cpp file and a .h file like this:
```
#ifndef __TEST_H__
#define __TEST_H__

class Test{
    public:
        Test();
        virtual ~Test();
};

#endif
```

To use this script, simply do:
```
cppgen.sh <file 1> <file 2> <file 3> ...
```

This script also generate a `main.cpp` file with all of the header file included