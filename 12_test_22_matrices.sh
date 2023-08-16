#!/bin/bash
cd HASpGEMM/
make 12
sh 12-22.sh
make info
./info /home/codeis123/MM/Mittelmann/rail2586/rail2586.cbd | tee -a ../plot/DATA/rail_info.csv
cd ../Three_kernels/
make
sh test-22-12.sh
cd ../MKL/
make spgemm
sh test-mkl-22.sh
cd ../plot/
python3 output.py
python3 figure10-12.py
python3 figure11.py
python3 figure12-12.py