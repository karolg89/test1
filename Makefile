CC=g++
EXEC=test
CFLAGS=-c -Wall
LDFLAGS=
SRC=main.cpp
OBJ=$(SRC:.cpp=.o)

all: $(SRC) $(EXEC)

$(EXEC): $(OBJ)
	$(CC) $(LDFLAGS) $(OBJ) -o  $@
	
.cpp.o:
	$(CC) $(CFLAGS) $< -o $@

