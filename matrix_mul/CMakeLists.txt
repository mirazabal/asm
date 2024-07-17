cmake_minimum_required (VERSION 3.15)

project (assembly-x64 LANGUAGES C ASM_NASM)
 


add_compile_options("-g")

set(CMAKE_ASM_NASM_FLAGS_DEBUG "-g -F dwarf")
set(CMAKE_ASM_NASM_OBJECT_FORMAT elf64)
set(CMAKE_ASM_NASM_COMPILE_OBJECT "<CMAKE_ASM_NASM_COMPILER> <INCLUDES> \
    <FLAGS> -f ${CMAKE_ASM_NASM_OBJECT_FORMAT} -o <OBJECT> <SOURCE>")


add_executable(assembly-x64 main.c mat_mul.asm)

#target_compile_features(assembly-x64 PUBLIC cxx_std_17)

#target_sources(assembly-x64 PRIVATE main.c mat_mul.s)




