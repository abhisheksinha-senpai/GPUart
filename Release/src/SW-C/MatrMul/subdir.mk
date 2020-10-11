################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
CPP_SRCS += \
../src/SW-C/MatrMul/SWC_MM.cpp 

OBJS += \
./src/SW-C/MatrMul/SWC_MM.o 

CPP_DEPS += \
./src/SW-C/MatrMul/SWC_MM.d 


# Each subdirectory must supply rules for building sources it contributes
src/SW-C/MatrMul/%.o: ../src/SW-C/MatrMul/%.cpp
	@echo 'Building file: $<'
	@echo 'Invoking: NVCC Compiler'
	/usr/local/cuda-11.1/bin/nvcc -O3 -gencode arch=compute_53,code=compute_53 -gencode arch=compute_53,code=sm_53 -m64 -x c++ -I. -dc "$<" -o "$@" -lcudart -lcudadevrt
	@echo 'Finished building: $<'
	@echo ' '


