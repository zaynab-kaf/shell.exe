#!/bin/bash

export IFS=","

cat /home/zaynab/Documents/Script/JOB9/Shell_Userlist.csv | while read Id Prenom Nom Mdp Role
	do
	sudo useradd $Prenom-$Nom
	echo "$Prenom-$Nom:$Mdp" | sudo chpasswd
	sudo usermod -u "$Id" "$Prenom-$Nom"
		if [ $Rôle = "Admin" ]
		then
		sudo usermod -aG sudo "$Prenom-$Nom"
		fi
	done
