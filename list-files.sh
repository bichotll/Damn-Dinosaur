#create rutes
tree -fi | sed -r 's/\.\/|.md//g' | tail -n +2 | \
while read CMD; do
	echo '['$CMD']('$CMD')'
	echo ''
done > list-files.md

#check the file length
numberLines=$(cat list-files.md | wc -l)

#remove the last not real link
sed -i $numberLines's/(.*)//' list-files.md

#remove the last line but one
numberLines=`expr $numberLines - 1`
sed -i $numberLines's/.*/\n/' list-files.md

#add result to Home.md
numberLines=$(cat Home.md | wc -l)
lineListPages=$(grep '#List pages' Home.md -ns | sed 's/:.*//g')
#if lineListPages does not exist
if ! [ -z "$lineListPages" ]
	then 
	sed $lineListPages','$numberLines'd' Home.md -i
fi

echo '#List pages' >> Home.md
echo '' >> Home.md
cat list-files.md >> Home.md