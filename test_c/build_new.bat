rmdir /q  /s build
mkdir build
gcc -c -o build/test.o test.c
gcc -fno-align-commons -c  -o build/igrf_sub.o ../igrf/fortran_code/igrf_sub.for
gcc -o build/test.exe build/test.o build/igrf_sub.o -lgfortran
copy ..\igrf\fortran_code\*.dat build
del build\test.o
del build\igrf_sub.o

cd build
test
cd ..
