#! /bin/bash
for i in {1..400}
do
echo "generating QR code number" $i
qrencode --output="./qr/$i.png" --background="FFFFFF00" --size="20" --margin="2" "https://pdu.c3power.de/pdu.php?pdu=$i"
done
