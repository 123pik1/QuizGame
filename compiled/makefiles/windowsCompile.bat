@echo off
REM filepath: build.bat

REM Compiler and flags
set CC=g++
set CFLAGS=-Iinclude -Wall -Wextra -std=c++11

REM Source file
set SRC=src/main.cpp

REM Object file
set OBJ=%SRC:.cpp=.o%

REM Target executable
set TARGET=compiled/quizgame.exe

REM Create the object file
echo Compiling %SRC%
%CC% %CFLAGS% -c %SRC% -o %OBJ%

REM Link the object file to create the executable
echo Linking %OBJ%
%CC% -o %TARGET% %OBJ%

echo Done!

REM Clean command (optional)
:clean
del /s src\*.o
del %OBJ%
del %TARGET%

REM Fullclean command (optional)
:fullclean
del /s src\*.o
del %OBJ%
del %TARGET%