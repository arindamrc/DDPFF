cmake_minimum_required(VERSION 3.8 FATAL_ERROR)

project(Gui LANGUAGES CXX)

set(CMAKE_INCLUDE_CURRENT_DIR ON)
set(CMAKE_CXX_STANDARD 17)
set(CMAKE_CXX_STANDARD_REQUIRED ON)

set(OpenGL_GL_PREFERENCE GLVND)

list(APPEND CMAKE_MODULE_PATH ${CMAKE_CURRENT_SOURCE_DIR}/../cmake)

find_package(GLUT REQUIRED)
find_package(Qt5 COMPONENTS Core Xml OpenGL Gui Widgets REQUIRED)
find_package(QGLViewer REQUIRED)
find_package(OpenGL REQUIRED)
find_package(GLEW REQUIRED)

set(CMAKE_AUTOMOC ON)

add_library(${PROJECT_NAME} SHARED
    src/OpenGLSceneWidget.cpp
    src/CameraViewWidget.cpp
    src/ConfigWidget.cpp
    src/MessageQueue.cpp
    src/OpenGLViewWidget.cpp
)

target_sources(${PROJECT_NAME} PRIVATE
    include/gui/OpenGLSceneWidget.h
    include/gui/CameraViewWidget.h
    include/gui/ConfigWidget.h
    include/gui/MessageQueue.h
    include/gui/OpenGLViewWidget.h
)

target_include_directories(${PROJECT_NAME}
    PUBLIC ${PROJECT_SOURCE_DIR}/include
)

target_link_libraries(${PROJECT_NAME} PUBLIC
    Qt5::Core
    Qt5::Widgets
    Qt5::Xml
    Qt5::OpenGL
    Qt5::Gui
    ${GLEW_LIBRARIES}
    ${OPENGL_LIBRARIES}
    ${GLUT_LIBRARY}
    ${QGLVIEWER_LIBRARY}
    Globals
    Utils
    Scenes
    Control
)
