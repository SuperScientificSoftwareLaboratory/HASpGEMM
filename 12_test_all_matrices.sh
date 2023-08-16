#!/bin/bash
cd HASpGEMM/
make 12
sh 12-all.sh
cd ../Three_kernels/
make
sh test-all-12.sh
cd ../MKL/
make spgemm
sh test-mkl-all.sh
cd ../plot/
python3 Auxiliary_12.py
python3 figure9-12.py