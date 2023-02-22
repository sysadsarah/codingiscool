#!bin/bash
C=1
Str="Sarah"
Filename="${Str}${C}"
while [ -f $Filename ]
do
        if [ $C -eq 1 ]
        then
        echo "Existing files"
        fi
        echo $Filename
        ((C=C+1))
        Filename="${Str}${C}"
done
if [ $C -eq 1 ]
then
        echo "Existing Files = 0"
        echo "                   "
fi
((I=C+25))
echo "New Files"
while [ $C -lt $I ]
do
        Filename="${Str}${C}"
        if [ ! -f $Filename ]
        then
                echo $Filename
                touch $Filename
        fi
        ((C=C+1))
done
