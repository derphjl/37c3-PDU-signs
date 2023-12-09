#! /bin/bash
echo "PDU Sign Generator"
echo "Starting generation..."
for i in {1..400}
do
	cp document.tex document-$i.tex
	sed -E -i '' "s/999/$i/g" document-$i.tex
	xelatex document-$i.tex
	mv document-$i.pdf pdf/
	rm document-$i.*
done

