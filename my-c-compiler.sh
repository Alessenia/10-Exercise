#! /usr/bin/bash

touch results.txt

echo "To create a new C file, type the file name :"
read filename

echo "The c file has been created"

echo "Do you want to compile your file?"
echo "write y for yes or n for no "
read choice

if [ "$choice" = "y" ];
then
echo "compiling $filename... "
sleep 2

if  gcc $filename -o filename;
    then
        chmod +x ./$filename
        echo "Succesful compilation" | cat >> results.txt
        echo "
        " | cat >> results.txt
        echo "Your program results :" | cat >> results.txt
        echo "
        " | cat >> results.txt

          else
       echo "Your program hasn't been compiled" | cat >> results.txt

    fi

elif [ "$choice" = "n" ];
then
echo "The end"
fi
