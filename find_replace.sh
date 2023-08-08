#! bin/bash/
# Find and Replace program to change the perticular word?
#! /bin/bash
read -p "Enter your file name: " file_name
read -p "Enter your word you want to replace: " replace_word
read -p "Enter your new word: " new_word
sed -i 's/$replace_word/$new_word/g' $file_name   # sed This is the command itself, indicating that you're using the sed utility
echo "done"                                       #  -i This option tells sed to edit the file in-place
                                                  #  s This indicates that you want to perform a substitution
