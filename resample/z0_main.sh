# bash main.sh
 
#while read seq beam cell #1
#do
#   class @regrid 0495+050_05040811L $beam $cell
#done < beam.txt

ls *.bur > bur.txt #2
while read bur
do
  class @sayrms $bur
done < bur.txt

rm rms.dat #3
while read dat
do
  ipython averms.py $dat 
done < dat.txt

rm rmsfit.png #4
ipython plorms.py

