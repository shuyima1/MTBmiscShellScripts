#! /bin/bash 

cd "$1"

ls -d */ | sed s'/.$//' > folders.txt 

cat folders.txt | while read LINE
do
if [ -r "./$LINE/phase_${LINE}_retained_doublingTimes.csv" ]
then
cat ./$LINE/phase_${LINE}_retained_doublingTimes.csv | cut -d ',' -f2 > $LINE.txt
fi
done

ls xy*.txt > folders2.txt
paste -d "," $(cat folders2.txt) > XYresultsSummary.csv


