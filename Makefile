FC=gfortran -c
LD=gfortran
SRC=v1.f90 main.f90
OBJ=v1.o main.o
run:
	$(FC) $(SRC)
	$(LD) $(OBJ) -o run.x
	rm -rf *.o
clean:
	rm -rf *.x *.o

