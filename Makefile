main: ./build/main.o ./build/board.o ./build/board_print_plain.o
	gcc -o ./bin/main ./build/main.o ./build/board.o ./build/board_print_plain.o

./build/main.o: ./src/main.c
	gcc -o ./build/main.o -c ./src/main.c 

./build/board_print_plain.o: ./src/board_print_plain.c
	gcc -o ./build/board_print_plain.o -c ./src/board_print_plain.c

./build/board.o: ./src/board.c
	gcc -o ./build/board.o -c ./src/board.c


run:
	./bin/main

clean:
	rm ./bin/main
