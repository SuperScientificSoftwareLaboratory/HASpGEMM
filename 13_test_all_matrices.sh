#!/bin/bash
cd HASpGEMM/
make 13
sh 13-all.sh
cd ../Three_kernels/
make
sh test-all-13.sh
cd ../MKL/
make spgemm
sh test-mkl-all.sh
cd ../plot/
python3 Auxiliary_13.py
python3 figure9-13.py