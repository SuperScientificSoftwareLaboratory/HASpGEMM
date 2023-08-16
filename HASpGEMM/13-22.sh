export OMP_NUM_THREADS=32
export GOMP_CPU_AFFINITY="0-31"
input="../input_data/22.csv"
{
	read
	i=1
	while IFS=',' read -r num str
	do
		./haspgemm13 $str | tee -a ../plot/DATA/13-22.csv
	done
} < "$input"

cp ../plot/DATA/12-22.csv ../plot/DATA/13-22-1.csv