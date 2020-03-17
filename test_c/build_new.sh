rm -rf build
mkdir build
gcc -c -o build/test.o test.c
gcc -fno-align-commons -c  -o build/igrf_sub.o ../igrf/fortran_code/igrf_sub.for
gcc -o build/test build/test.o build/igrf_sub.o -lgfortran -lm
cp ../igrf/fortran_code/*.dat build

cd build
./test
cd ..
