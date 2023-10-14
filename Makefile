CC = g++

OPTIMIZE = -O

CFLAGS = $(OPTIMIZE) -Wno-unused-result -std=c++11

TARGET = src
SRCS = $(TARGET).cpp
OBJS = $(SRCS:.cpp=.o)

.cpp.o:
	$(CC) $(CFLAGS) -c $<

all: $(TARGET)

clean:
	rm -f *~ *.o core

disclean:
	rm -f *~ *.o core $(TARGET)

run: $(TARGET)
	@./$(TARGET)

test:
	@test `cat src.cpp | egrep -v "^ *//" | egrep -e "Hello world!" -o | wc -l` -eq 1

src.o: src.cpp
