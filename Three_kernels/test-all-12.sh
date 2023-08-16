input="../input_data/all.csv"
{
	read
	i=1
	while IFS=',' read -r num str
	do
		./spa $str | tee -a ../plot/DATA/12-spa.csv
		./hash $str | tee -a ../plot/DATA/12-hash.csv
		./esc $str | tee -a ../plot/DATA/12-esc.csv
	done
} < "$input"