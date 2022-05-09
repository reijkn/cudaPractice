#include <iostream>

__global__ void Kernel()
{
    // スレッド番号の取得
    int i = blockIdx.x * blockDim.x + threadIdx.x;
    printf("Hello World! thread:%d\n", i);
}

int main(void)
{
    Kernel<<<1, 10>>>();
    cudaDeviceSynchronize();

    std::cout << "done!" << std::endl;

    return 0;
}