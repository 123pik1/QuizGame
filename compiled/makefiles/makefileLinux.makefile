CC = g++
CFLAGS = -Iinclude -Wall -Wextra -std=c++11
SRC = src/main.cpp
OBJ = $(SRC:.cpp=.o)
TARGET = compiled/quizgame

all: $(TARGET)

$(TARGET): $(OBJ)
	$(CC) -o $@ $^

%.o: %.cpp
	$(CC) $(CFLAGS) -c $< -o $@

clean:
	find src -name "*.o" -delete

fullclean:
	rm -f $(OBJ) $(TARGET)
	find src -name "*.o" -delete