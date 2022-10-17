nv=$(sudo find /home/zaynab/Documents/Script/JOB9/Shell_Userlist.csv -mtime 1 | wc -l)

if [ $nv = "1" ]
then
	echo "Fichier modifié, relancement du script"
	../home/zaynab/Documents/Script/JOB9/accessrights.sh
elif [ $nv = "0" ]
then
	echo "Aucune modification"
else
	echo "Vérifier le contenu du fichier"
fi
