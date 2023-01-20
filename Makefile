CFLAGS=-I.

matrix : matrix.o
	$(CC) -o $@ $^ -lm

%.o : %.c
	$(CC) $(CFLAGS) -c $<

clean:
	rm matrix matrix.o
