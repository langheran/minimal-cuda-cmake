cmake_minimum_required(VERSION 3.2)

set(CMAKE_EXPORT_COMPILE_COMMANDS ON CACHE STRING "VSCode Intellisense" FORCE)
set(CMAKE_C_COMPILER "C:/Program Files (x86)/Microsoft Visual Studio 14.0/VC/bin/amd64/cl.exe")
set(CMAKE_CXX_COMPILER "C:/Program Files (x86)/Microsoft Visual Studio 14.0/VC/bin/amd64/cl.exe")

set (target_name sumArraysOnGPU)
project(${target_name} LANGUAGES CUDA CXX)

if(MSVC)
	set(CMAKE_CXX_FLAGS "/FS /EHsc /FC") # No pdb concurrency, no warnings, full paths for $msCompile problemMatcher.
endif()

set(CMAKE_CXX_STANDARD 11)
set(CMAKE_CUDA_COMPILE_OBJECT ${CMAKE_CUDA_COMPILE_WHOLE_COMPILATION})

set(SOURCE
			sumArraysOnGPU.cu
	)

#set(HEADERS
#			sumArraysOnGPU.h
#	)

add_executable(${target_name} ${SOURCE}) # ${HEADERS}
# TARGET_LINK_LIBRARIES(${target_name} namepace::library)
set_target_properties(${target_name}
                       PROPERTIES CUDA_SEPARABLE_COMPILATION ON
                      )