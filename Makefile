CC = gcc
CFLAGS = -Iinclude

all: prog

bin/%.o: src/%.c
	@ echo "**1** Compilation du $<..."
	@$(CC) $(CFLAGS) -c -o $@ $< -fPIC

lib/libmat.so: bin/matrix.o bin/vector.o
	@echo "**2** Edition des liens..."
	@$(CC) -shared -o $@ $^

prog: lib/libmat.so
	@echo "**3** Compilation avec librairies..."
	@$(CC) $(CFLAGS) -o $@ src/prog.c $< -lm

clean:
	@echo "NETTOYAGE !!!"
	@rm -f bin/*.o prog lib/*.so

doc:
	@echo "Compilation de la documentation !!"
	@doxygen doc/Doxyfile

progbug: progbug/%.c
	@echo "..Compilation des fichiers du dossier progbug avec gdb.."
	@$(CC) -ggdb $(CFLAGS) -o $@ $< -fPIC

.PHONY: clean all doc