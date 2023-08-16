export OMP_NUM_THREADS=16
export GOMP_CPU_AFFINITY="0-15"
input="../input_data/22.csv"
{
	read
	i=1
	while IFS=',' read -r num str
	do
		./mkl_spgemm $str | tee -a ../plot/DATA/mkl-22.csv
	done
} < "$input"

cp ../plot/DATA/mkl-22.csv ../plot/DATA/12-22-5.csv
cp ../plot/DATA/mkl-22.csv ../plot/DATA/13-22-5.csv
