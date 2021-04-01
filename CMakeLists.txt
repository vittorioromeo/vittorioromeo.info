cmake_minimum_required(VERSION 3.0)

# -----------------------------------------------------------------------------
# CPM
set(CPM_DOWNLOAD_LOCATION "${CMAKE_BINARY_DIR}/cmake/CPM.cmake")
set(CPM_DOWNLOAD_VERSION 0.25.1)

if(NOT (EXISTS ${CPM_DOWNLOAD_LOCATION} AND CPM_VERSION STREQUAL CPM_DOWNLOAD_VERSION))
  message(STATUS "Downloading CPM.cmake")
  file(DOWNLOAD https://github.com/TheLartians/CPM.cmake/releases/download/v${CPM_DOWNLOAD_VERSION}/CPM.cmake ${CPM_DOWNLOAD_LOCATION})
endif()

include(${CPM_DOWNLOAD_LOCATION})
# -----------------------------------------------------------------------------

CPMAddPackage(
    NAME discount
    GIT_REPOSITORY https://github.com/Orc/discount.git
    GIT_TAG v2.2.7
    DOWNLOAD_ONLY
)

if (discount_ADDED)
    add_definitions("-DDESTRUCTOR=")
    include("${discount_SOURCE_DIR}/cmake/CMakeLists.txt")
endif()


# Include `vrm_cmake`.
list(APPEND CMAKE_MODULE_PATH
    "${CMAKE_SOURCE_DIR}/../vrm_cmake/cmake/"
    "${CMAKE_SOURCE_DIR}/extlibs/vrm_cmake/cmake/")

include(vrm_cmake)

# Basic project setup.
vrm_cmake_init_project(vittorioromeo_dot_info)
vrm_cmake_find_extlib(vrm_pp)
vrm_cmake_find_extlib(vrm_core)
vrm_cmake_find_extlib(SSVUtils)
find_library(LIB_MARKDOWN markdown)
find_path(INC_MARKDOWN mkdio.h)

vrm_cmake_add_common_compiler_flags()

set(VRDI_SRC_DIR "${VITTORIOROMEO_DOT_INFO_SOURCE_DIR}/src/")
set(VRDI_INC_DIR "${VITTORIOROMEO_DOT_INFO_SOURCE_DIR}/include/")

include_directories("${VRDI_INC_DIR}")

add_executable(${PROJECT_NAME} "${VRDI_SRC_DIR}/main.cpp")
target_link_libraries(${PROJECT_NAME} libmarkdown)

install(TARGETS ${PROJECT_NAME} RUNTIME DESTINATION ${CMAKE_SOURCE_DIR}/build/)

