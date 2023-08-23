# The Flutter tooling requires that developers have CMake 3.10 or later
# installed. You should not increase this version, as doing so will cause
# the plugin to fail to compile for some customers of the plugin.
cmake_minimum_required(VERSION 3.10)

project(openiothub_gateway_service_library VERSION 0.0.1 LANGUAGES C)

add_library(openiothub_gateway_service SHARED
  "openiothub_gateway_service.c"
)

set_target_properties(openiothub_gateway_service PROPERTIES
  PUBLIC_HEADER openiothub_gateway_service.h
  OUTPUT_NAME "openiothub_gateway_service"
)

target_compile_definitions(openiothub_gateway_service PUBLIC DART_SHARED_LIB)
