#!/bin/bash

#Script para recibir por parametros numero de telefono y mensaje para enviar por SMS a través de minicom
#con un modem 3g previamente configurado en linux. No esta probado.

echo 'send AT+CMGF=1' > script.txt
#echo -e 'expect "OK"\n\n' >> script.txt
echo 'send \r\n' >> script.txt

echo 'send AT+CMGS="'$1'"' >> script.txt
echo -e 'expect "OK"\n\n' >> script.txt
echo 'send \r\n' >> script.txt

echo 'send '$2 >> script.txt
echo 'send \032' >> script.txt
echo '^z' >> script.txt
echo '^d' >> script.txt


minicom -S script.txt 
