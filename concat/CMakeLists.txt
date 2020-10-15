add_executable(concat)

target_sources(
  concat
 
  PRIVATE
    concat/concat.cpp
    concat/concat.hpp
    concat/main.cpp
)

find_package(LLVM 10 REQUIRED CONFIG)

message(STATUS "Found LLVM ${LLVM_PACKAGE_VERSION}")
message(STATUS "Using LLVMConfig.cmake in: ${LLVM_DIR}")

target_include_directories(
  concat
  SYSTEM
  PRIVATE
    ${LLVM_INCLUDE_DIRS}
)

target_link_libraries(
  concat
  PRIVATE
    LLVM-10
    clang-10
)
