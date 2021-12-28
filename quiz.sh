read number

if [ $(($number % 2)) -eq 0 ]
then
	echo "$number even"
else
	i=1
	str=""
	while [ $i -ne $number ]
	do
		diff=$(($number-$i))
		diff=$(($diff/2))
		str=""
		for j in $(seq 1 $diff);
		do
			str+="-"
			
		done
		for j in $(seq 1 $i);
		do
			str+="o"
		done
		for j in $(seq 1 $diff);
		do
			str+="-"
		done
		echo $str
		i=$(($i+2))
	done
	i=1
	str="o"
	while [ $i -ne $number ]
	do
		str+="o"
		i=$(($i+1))
	done
	echo $str

	i=$(($number-2))
	while [ $i -gt 0 ]
	do
		diff=$(($number-$i))
		diff=$(($diff/2))
		str=""
		for j in $(seq 1 $diff);
		do
			str+="-"
			
		done
		for j in $(seq 1 $i);
		do
			str+="o"
		done
		for j in $(seq 1 $diff);
		do
			str+="-"
		done
		echo $str
		i=$(($i-2))
	done
fi