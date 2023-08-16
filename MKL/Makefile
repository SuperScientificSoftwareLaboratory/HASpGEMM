spgemm:
	gcc -O3 -I/home/chl-12/intel/oneapi/mkl/2023.2.0/include/ \
	-fopenmp mkl_spgemm.c -o mkl_spgemm -lmkl_rt \
	-L/home/chl-12/intel/oneapi/mkl/2023.2.0/lib/intel64/  \
	-lmkl_intel_lp64 -lmkl_intel_thread -lmkl_core -liomp5 -lpthread -lm -ldl