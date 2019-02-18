import func_wrapper
import numpy as np

test_array = np.array([2, 4, 6, 8], dtype=np.dtype("d")) # Force type to double for compatability with c functions

if not test_array.flags['C_CONTIGUOUS']:
    test_array = np.ascontiguousarray(test_array) # Make sure array is contiguous in memory

total = func_wrapper.sum_array_py(test_array, test_array.shape[0])

print("Summed results: {}".format(total))


total = func_wrapper.sum_array_rbr_py(test_array, test_array.shape[0])
print("Summed results rbr: {}".format(total))

total = func_wrapper.sum_array_subcall_py(test_array, test_array.shape[0])
print("Summed results subcall: {}".format(total))

total = func_wrapper.sum_array_std_py(test_array, test_array.shape[0])
print("Summed results std: {}".format(total))