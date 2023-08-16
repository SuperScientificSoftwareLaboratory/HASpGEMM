#!/bin/bash
cd HASpGEMM/
make 13
sh 13-22.sh
cd ../Three_kernels/
make
sh test-22-13.sh
cd ../MKL/
make spgemm
sh test-mkl-22.sh
cd ../plot/
python3 output.py
python3 figure10-13.py
python3 figure12-13.py