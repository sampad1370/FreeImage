cmake_minimum_required(VERSION 3.16)
project(Examples VERSION 1.0 LANGUAGES C CXX)

if(UseQt)
    add_subdirectory(QMLFreeImage)
endif()
