################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
CPP_SRCS += \
../src/GPUart/GPUart.cpp 

OBJS += \
./src/GPUart/GPUart.o 

CPP_DEPS += \
./src/GPUart/GPUart.d 


# Each subdirectory must supply rules for building sources it contributes
src/GPUart/%.o: ../src/GPUart/%.cpp
	@echo 'Building file: $<'
	@echo 'Invoking: NVCC Compiler'
	/usr/local/cuda-11.1/bin/nvcc -O3 -ccbin x86_64-linux-gnu-g++ -gencode arch=compute_53,code=sm_53 -m64 -odir "src/GPUart" -M -o "$(@:%.o=%.d)" "$<"
	/usr/local/cuda-11.1/bin/nvcc -O3 --compile -m64 -ccbin x86_64-linux-gnu-g++  -x c++ -o  "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


