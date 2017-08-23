for i in `ls /Users/bchevez/Desktop/Otis_Test_Data/batch/intl_pdf/*.pdf`;
do s=${i##*/};
echo "Begin INTL PDF to INTL PNG processing... ${s%%.pdf}";
convert -density 300 "$i" "/Users/bchevez/Desktop/Otis_Test_Data/batch/intl_png/${s%%.pdf}.png"; 
echo "Done processing... ${s%%.pdf}";
done
