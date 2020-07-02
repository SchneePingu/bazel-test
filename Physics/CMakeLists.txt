project(PhysicsProject)
cmake_minimum_required(VERSION 2.8)

include_directories(${CMAKE_CURRENT_SOURCE_DIR}/include)
file(GLOB SOURCES
    ${CMAKE_CURRENT_SOURCE_DIR}/include/*.h
    ${CMAKE_CURRENT_SOURCE_DIR}/src/*.cpp
)


set(TARGETNAME "Physics")
add_library(${TARGETNAME} ${SOURCES})
set_target_properties(${TARGETNAME} PROPERTIES PREFIX "")
set_target_properties(${TARGETNAME} PROPERTIES OUTPUT_NAME "${TARGETNAME}Lib")
set_target_properties(${TARGETNAME} PROPERTIES ARCHIVE_OUTPUT_DIRECTORY "${CMAKE_CURRENT_SOURCE_DIR}/lib")
