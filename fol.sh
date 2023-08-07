#Script to create required number of directories/folders having date as folder name
#Taking number of folder as input 
#declare -i number
#echo "Hello, How many folders you want to create?? : "
#read number
#Asking for path where folders has to be created
#echo "Okay, tell me the path where you want to create folders?? (ex- ~/Desktop)"

#! /bin/bash
read -p "Hello, How many folders do you want to create? : " number
read -p "path  where you want to create folders? : " path

echo $path

today=$(date +%y-%m-%d)    # Date function

# path existence 

if [ -d "$path" ]    # -d is for Directories
then
  #echo "The path $path exists is a directory"
  for ((i=1; i<=number; i++))
	
  do
	# file existence
	if [ -d "$today" ]
	then
	    echo "file $today already exist"
	    exit
	else
	    mkdir  "$path/$today"
	    echo "file $today created.....!!"
	    today=$(date -d "$today + 1 day" +%y-%m-%d)
	fi
  done
	
else
  echo "The path $path doesnot exist":
  exit
fi







