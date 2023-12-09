# 37c3 PDU signs

The old signs for PDUs did not contain much information. The new signs include an FAQ and the POWR hotline

# Generate the signs

First, do the typesetting as desired in document.tex. Make your font choices, note that the fonts need to be installed locally. Search up the fonts in the example and install them on your system if not already installed. Try typesetting the example `document.tex` with your favourite suite. Note, you have to use `XeLaTeX` for this to work as we are working with custom True Type Fonts.

  xelatex document.tex

Next, generate the QR codes. You can edit `qr-generate.sh` to your liking. As is, it will generate QR codes for the c3power ticket system for PDUs numbered 1-400, naming the output files `1.png` - `400.png`.

  ./qr-generate.sh

Next, generate the PDFs. Run:

  ./create.sh

Note, you have to have `XeLaTeX` and `sed` installed. The script will iterate through the numbers, copy the file `document.tex` (it makes a copy before modifying, so it won't change the example) and replace `999` with the PDU numbers 1..400, moving the output PDF into the pdf folder.