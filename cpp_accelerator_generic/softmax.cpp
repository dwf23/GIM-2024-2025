// defines the softmax function for large classification problems
#include "gim_model.h"

SoftMax softmax(fixed_16 output_array[ARRAY_SIZE2]) {
    SoftMax e;
    fixed_16 sum = 0;
    // first, subtrct the max from the vector
    fixed_16 max = output_array[0];
    for (int j = 0; j < ARRAY_SIZE2; j++) {
        if (output_array[j] > max) {
            max = output_array[j];
        }
    }
    // now, create the new softmax vector with probabilities
    for (int i = 0; i < ARRAY_SIZE2; i++) {
        e.out_vector[i] = std::exp(output_array[i] - max);
        sum = sum + e.out_vector[i];
    }
    for (int k = 0; k < ARRAY_SIZE; k++) {
        e.out_vector[k] = e.out_vector[k] / sum;
    }
    return e
}