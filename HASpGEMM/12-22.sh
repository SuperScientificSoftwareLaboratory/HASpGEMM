export OMP_NUM_THREADS=24
export GOMP_CPU_AFFINITY="0-23"
input="../input_data/22.csv"
{
	read
	i=1
	while IFS=',' read -r num str
	do
		./haspgemm12 $str | tee -a ../plot/DATA/12-22.csv
	done
} < "$input"

cp ../plot/DATA/12-22.csv ../plot/DATA/12-22-1.csv