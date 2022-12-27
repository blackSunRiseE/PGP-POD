#include "stdio.h"

__global__ void kernel(void){
   printf("Hello World!\n");
}

int main() {
    kernel<<< 1, 10>>>();
    cudaDeviceSynchronize(); 
    return 0;
}