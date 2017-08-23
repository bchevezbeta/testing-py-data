for i in `ls /Users/bchevez/Desktop/Otis_Test_Data/batch/doc/*.docx`;
do s=${i##*/};
echo "Begin MS DOCX to PDF processing... ${s%%.docx}";
soffice --headless --convert-to pdf /Users/bchevez/Desktop/Otis_Test_Data/batch/doc/${s%%.docx}.docx
echo "Moving file... ${s%%.docx}";
mv ${s%%.docx}.pdf /Users/bchevez/Desktop/Otis_Test_Data/batch/pdf/${s%%.docx}.pdf
echo "Done processing... ${s%%.docx}";
done

for i in `ls /Users/bchevez/Desktop/Otis_Test_Data/batch/xls/*.xlsx`;
do s=${i##*/};
echo "Begin MS XLSX to PDF processing... ${s%%.xlsx}";
soffice --headless --convert-to pdf /Users/bchevez/Desktop/Otis_Test_Data/batch/xls/${s%%.xlsx}.xlsx
echo "Moving file... ${s%%.xlsx}";
mv ${s%%.xlsx}.pdf /Users/bchevez/Desktop/Otis_Test_Data/batch/pdf/${s%%.xlsx}.pdf
echo "Done processing... ${s%%.xlsx}";
done


for i in `ls /Users/bchevez/Desktop/Otis_Test_Data/batch/pdf/*.pdf`;
do s=${i##*/};
echo "Begin PDF to PNG processing... ${s%%.pdf}";
convert -density 300 "$i" "/Users/bchevez/Desktop/Otis_Test_Data/batch/png/${s%%.pdf}.png"; 
echo "Done processing... ${s%%.pdf}";
done
