cmake_minimum_required(VERSION 3.16)
project(calculatorbuilder LANGUAGES CXX)

set(CMAKE_EXPORT_COMPILE_COMMANDS 1)

# for build/.gitignore
if(NOT PROJECT_SOURCE_DIR STREQUAL PROJECT_BINARY_DIR)
  file(
    GENERATE
    OUTPUT ${PROJECT_BINARY_DIR}/.gitignore
    CONTENT "*")
endif()
set(CMAKE_RUNTIME_OUTPUT_DIRECTORY "${CMAKE_BINARY_DIR}/bin")

# qt
set(CMAKE_AUTOMOC ON)
set(CMAKE_AUTOUIC ON)
find_package(Qt6 REQUIRED COMPONENTS Core Gui UiTools Widgets)
# target
set(TARGET_NAME ${PROJECT_NAME})
qt_add_executable(${TARGET_NAME} main.cpp)
set_target_properties(${TARGET_NAME} PROPERTIES WIN32_EXECUTABLE TRUE
                                                MACOSX_BUNDLE TRUE)
target_link_libraries(${TARGET_NAME} PUBLIC Qt::Core Qt::Gui Qt::UiTools
                                            Qt::Widgets)
qt6_add_resources(${TARGET_NAME} "calculatorbuilder" PREFIX "/forms" FILES
                  calculatorform.ui)
