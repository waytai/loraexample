main: main.o cmac.o aes.o LoRaMacCrypto.o utilities.o
	gcc -o main  main.o cmac.o aes.o LoRaMacCrypto.o utilities.o

main.o: main.c cmac.o aes.o LoRaMacCrypto.o utilities.o
	gcc -c main.c
cmac.o: cmac.c cmac.h
	gcc -c cmac.c

aes.o: aes.c aes.h
	gcc -c aes.c

LoRaMacCrypto.o: LoRaMacCrypto.c LoRaMacCrypto.h
	gcc -c LoRaMacCrypto.c

utilities.o: utilities.c utilities.h
	gcc -c utilities.c

clean:
	rm *.o
	rm main
