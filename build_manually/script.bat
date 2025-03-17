gfortran ../src/hello.f90 -o hello

gfortran -c ../src/functions.f90
gfortran ../src/tabulate.f90 functions.o -o tabulate

