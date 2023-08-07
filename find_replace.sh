#! /bin/bash

read -p "Enter your file name: " file_name
read -p "Enter your word you want to replace: " replace_word
read -p "Enter your new word: " new_word


sed -i 's/$replace_word/$new_word/g' $file_name
echo "done"


























sed -i 's/Andrew/James/g' /home/oleksandr/names.txt
