if [ "$2" = "+" ]; then
	total=$(($1"+"$3))
	echo $total
elif [ "$2" = "-" ]; then
        total=$(($1"-"$3))
        echo $total
elif [ "$2" = "x" ]; then
        total=$(($1"*"$3))
        echo $total
elif [ "$2" = "/" ]; then
        total=$(($1"/"$3))
        echo $total
else echo "Votre opération n'est pas valide"

fi
