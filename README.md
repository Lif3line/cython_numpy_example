# Numpy Array to C Code Example

Example of sending a numpy array to C code using Cython. Build + tested on linux, will need recompilation of library for other operating systems.

## Usage

Running `python test.py` will check correctness of 4 C functions taking in numpy arrays. 

If you want to recompile the library then use `python setup.py build_ext --inplace`. You will need [Cython](https://cython.org/) set up for this to work.

## Notes
`basic_funcs.cpp` and `basic_funcs.hpp` are where the C code is written, other c++ files are generated during compilation via Cython.

The `.pyx` file provides the wrapper functions to glue numpy to C.

Pleasse expand if you find anything useful to add.


