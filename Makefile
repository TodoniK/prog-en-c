CC = gcc
CFLAGS = -Iinclude

SOURCES=$(wildcard src/*.c)
OBJECTS=$(SOURCES:src/%.c=bin/%.o)

all: prog

prog: lib/libmat.so
	@echo "**3** Compilation avec librairies..."
	@$(CC) $(CFLAGS) -o $@ src/prog.c -Llib -lm

bin/%.o: src/%.c
	@ echo "**1** Compilation du $<..."
	@$(CC) $(CFLAGS) -c -o $@ $< -fPIC

lib/libmat.so: $(OBJECTS)
	@echo "**2** Edition des liens..."
	@$(CC) -shared -o $@ $^

clean:
	@echo "NETTOYAGE !!!"
	@rm -f bin/*.o prog lib/*.so

.PHONY: clean all