################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
CPP_SRCS += \
../src/GPUart_Abstraction/GPUart_Abstraction.cpp 

OBJS += \
./src/GPUart_Abstraction/GPUart_Abstraction.o 

CPP_DEPS += \
./src/GPUart_Abstraction/GPUart_Abstraction.d 


# Each subdirectory must supply rules for building sources it contributes
src/GPUart_Abstraction/%.o: ../src/GPUart_Abstraction/%.cpp
	@echo 'Building file: $<'
	@echo 'Invoking: NVCC Compiler'
	/usr/local/cuda-11.1/bin/nvcc -O3 -gencode arch=compute_53,code=compute_53 -gencode arch=compute_53,code=sm_53 -m64 -x c++ -I. -dc "$<" -o "$@" -lcudart -lcudadevrt
	@echo 'Finished building: $<'
	@echo ' '


