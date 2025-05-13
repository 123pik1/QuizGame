CC = g++
CFLAGS = -Iinclude -Wall -Wextra -std=c++11
SRC = src/main.cpp
OBJ = $(SRC:.cpp=.o)
TARGET = compiled/quizgame.exe

all: $(TARGET)

$(TARGET): $(OBJ)
    $(CC) -o $@ $^

%.o: %.cpp
    $(CC) $(CFLAGS) -c $< -o $@

clean:
    del /s src\*.o
    del $(OBJ) $(TARGET)

fullclean:
    del /s src\*.o
    del $(OBJ) $(TARGET)