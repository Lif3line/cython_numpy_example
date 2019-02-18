#include "basic_funcs.hpp"

namespace test {
    double sum_array(double arr[], unsigned int n) { 
        unsigned int i;
        double acc = 0;
        for(i = 0; i < n; i++) {
            acc += arr[i];
        }
        return acc;
    } 

    void sum_array_rbr(double arr[], unsigned int n, double* result) { 
        unsigned int i;
        double acc = 0;
        for(i = 0; i < n; i++) {
            acc += arr[i];
        }
        *result = acc;
    } 

    double sum_array_subcall(double arr[], unsigned int n) { 
        return hidden_sum_array(arr, n);
    }

    double hidden_sum_array(double arr[], unsigned int n) { 
        unsigned int i;
        double acc = 0;
        for(i = 0; i < n; i++) {
            acc += arr[i];
        }
        return acc;
    } 
}

using namespace std;

double std_sum_array(double arr[], unsigned int n) { 
    unsigned int i;
    double acc = 0;
    for(i = 0; i < n; i++) {
        acc += arr[i];
    }
    return acc;
} 
