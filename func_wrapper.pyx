#This is a Cython file and extracts the relevant classes from the C++ header file.

# These distutils comments are directives and therefore must be here
# distutils: language = c++
# distutils: sources = basic_funcs.cpp

cimport numpy as np

cdef extern from "basic_funcs.hpp" namespace "test":
    cdef double sum_array(double arr[], unsigned int n) 
    cdef void sum_array_rbr(double arr[], unsigned int n, double* result)
    cdef double sum_array_subcall(double arr[], unsigned int n) 

cdef extern from "basic_funcs.hpp":
    cdef double std_sum_array(double arr[], unsigned int n) 

def sum_array_py(np.ndarray arr, unsigned int n):
    cdef double[::1] arr_memview = arr
    total = sum_array(&arr_memview[0], n)

    return total

def sum_array_rbr_py(np.ndarray arr, unsigned int n):
    cdef double[::1] arr_memview = arr
    cdef double total = 0

    sum_array_rbr(&arr_memview[0], n, &total)

    return total

def sum_array_subcall_py(np.ndarray arr, unsigned int n):
    cdef double[::1] arr_memview = arr
    total = sum_array_subcall(&arr_memview[0], n)

    return total

def sum_array_std_py(np.ndarray arr, unsigned int n):
    cdef double[::1] arr_memview = arr
    total = std_sum_array(&arr_memview[0], n)

    return total