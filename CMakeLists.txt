cmake_minimum_required(VERSION 3.10)

project(QuizGame)

# Set the C++ standard
set(CMAKE_CXX_STANDARD 11)
set(CMAKE_CXX_STANDARD_REQUIRED ON)

# Include directories
include_directories(include)
include_directories(include/Model)
include_directories(include/Controller)
include_directories(include/View)

# Source files - be more specific for better control
file(GLOB_RECURSE SOURCES
    "src/Controller/*.cpp"
    "src/Model/*.cpp"
)

# Executable
add_executable(quizgame ${SOURCES})

# Target executable
set_target_properties(quizgame PROPERTIES OUTPUT_NAME "quizgame")
set_target_properties(quizgame PROPERTIES RUNTIME_OUTPUT_DIRECTORY "${CMAKE_BINARY_DIR}/compiled")