#!/bin/bash
clear

##################################
## Hcrack by Yokai Seishinkage. ##
##################################

main() {

sub_main() {

echo -e " What kind of hash would you like to crack?\n"
echo -e "~~~~~~~~~~~~~~~~~~~~~~~~ "
echo -e "1.) md5                 |"
echo -e "2.) sha1                |"
echo -e "3.) sha256              |"
echo -e "4.) sha384              |"
echo -e "5.) sha512              |"
echo -e "6.) Quit                |"
echo -e "~~~~~~~~~~~~~~~~~~~~~~~~ "
read CHOICE
clear

if [ "$CHOICE" == "1" ]; then
   ALGO="md5sum"

      elif [ "$CHOICE" == "2" ]; then
         ALGO="sha1sum"

         elif [ "$CHOICE" == "3" ]; then
            ALGO="sha256sum"

            elif [ "$CHOICE" == "4" ]; then
               ALGO="sha384sum"

               elif [ "$CHOICE" == "5" ]; then
                  ALGO="sha512sum"

                  elif [ "$CHOICE" == "6" ]; then
                     clear
                     exit 0
fi

    echo -e " Enter the hash to crack.\n"
    read MD5
    echo -e " Enter the wordlist to use.\n"
    read LIST

clear
COUNT="$(wc -l $LIST)"
    echo -e " $COUNT max line count.\n"

range() {

    echo -e " Enter the starting line number of the wordlist.\n"
    read NUM1
    echo -e " Enter the ending line number of the wordlist.\n"
    read NUM2

	if [ "$NUM1" -gt "$NUM2" ]; then
	clear
	echo -e " Starting number must be lower than ending number!\n"
	read -p "Press <enter> to continue"
	clear
        exit 1
	fi
}

range

for i in $(seq $NUM1 $NUM2)
do
  GEN1="$(head -n $i $LIST | tail -n 1)"
  GEN2="$(echo -n $GEN1 | $ALGO)"
    clear
    echo " Input  Hash is: -  $MD5"
    echo " Output hash is: -  $GEN2"
    echo -e "\n Passkey attempted: $GEN1\n"
    echo -e " Wordlist line number: $i\n"

	if [ "$GEN2" == "$MD5" ]
	then
	echo " Password found: $GEN1"
	exit 0
	fi
done
}

sub_main

echo -e "\n Passkey not found. \n"
        read -p "Press <enter> to continue"
        clear

}

while true
do
main
done
