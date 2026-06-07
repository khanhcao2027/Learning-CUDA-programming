
#include "cuda_runtime.h"
#include "device_launch_parameters.h"

#include <stdio.h>

cudaError_t addWithCuda(int *c, const int *a, const int *b, unsigned int size);

__global__ void test01()
{
	printf("\n Block ID is %d -- Thread ID is %d", blockIdx.x, threadIdx.x);
}

int main()
{
	test01<<<1, 10>>>();
	cudaDeviceSynchronize();
	return 0;
}
