BEGIN{
	FS = ","
	OFS = "\t"}

{
	if (NR == 1){
		n=NF
		for(i=1;i<=n;i++){
			printf "%s",$i
			if(i<n){
				printf "\t"
			}else{
				printf "\tAverage\n"
			}
		}
	}
	else{
		n=NF
		sum[$1]=0
		printf "%s\t",$1
		for(i=2;i<=n;i++){
			printf "%s",$i
			sum[$1] += $i
                        if(i<n){
                                printf "\t"
                        }else{
                                printf "\t%s\n",(sum[$1]/(n-1))
                        }
                }
	}
}
