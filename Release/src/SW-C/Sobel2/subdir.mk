################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
CPP_SRCS += \
../src/SW-C/Sobel2/SWC_Sobel2.cpp 

OBJS += \
./src/SW-C/Sobel2/SWC_Sobel2.o 

CPP_DEPS += \
./src/SW-C/Sobel2/SWC_Sobel2.d 


# Each subdirectory must supply rules for building sources it contributes
src/SW-C/Sobel2/%.o: ../src/SW-C/Sobel2/%.cpp
	@echo 'Building file: $<'
	@echo 'Invoking: NVCC Compiler'
	/usr/local/cuda-11.1/bin/nvcc -O3 -gencode arch=compute_53,code=compute_53 -gencode arch=compute_53,code=sm_53 -m64 -x c++ -I. -dc "$<" -o "$@" -lcudart -lcudadevrt
	@echo 'Finished building: $<'
	@echo ' '


