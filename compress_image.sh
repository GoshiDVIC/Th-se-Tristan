
FILES=`du -a | cut -d '.' -f 2,3 | grep jpg`

for f in $FILES
do
	echo "./$f"
	convert "./$f" -resize 800x600\> "./$f"
	jpegoptim "./$f"
done


FILES=`du -a | cut -d '.' -f 2,3 | grep png`

for f in $FILES
do
        echo "./$f"
	convert "./$f" -resize 800x600\> "./$f"
        optipng "./$f"
done
