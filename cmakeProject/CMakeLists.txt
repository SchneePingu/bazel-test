project(cmakeProject)
cmake_minimum_required(VERSION 2.8)

# Set up rules to include source files from 'src' directory
# and header files from 'include' directory
include_directories(${CMAKE_CURRENT_SOURCE_DIR}/include)
file(GLOB SOURCES
    ${CMAKE_CURRENT_SOURCE_DIR}/include/*.h
    ${CMAKE_CURRENT_SOURCE_DIR}/src/*.cpp
)

set(LIBTARGET "physicsLib")
# Set up rules to build the library 'physicsLib' out of files defined above
# and store library in 'lib' directory
add_library(${LIBTARGET} ${SOURCES})
set_target_properties(${LIBTARGET} PROPERTIES PREFIX "")
set_target_properties(${LIBTARGET} PROPERTIES OUTPUT_NAME "${LIBTARGET}")
set_target_properties(${LIBTARGET} PROPERTIES ARCHIVE_OUTPUT_DIRECTORY "${CMAKE_CURRENT_SOURCE_DIR}/lib")

set(DEPLOYMENTTARGET "deployment")
# Set up rules to deploy library defined above by means of 'deploy.sh'
add_custom_target(${DEPLOYMENTTARGET} ALL COMMAND bash ${CMAKE_CURRENT_SOURCE_DIR}/deploy.sh)
add_dependencies(${DEPLOYMENTTARGET} ${LIBTARGET})
