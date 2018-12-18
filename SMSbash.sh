#!/bin/bash

# Nota- Este script esta hecho para enviar SMS 
# directamente desde bash a un modem 3g conectado en un Linux i previamente configurado.
# No esta acabado.

echo 'AT+CMGF=1\r' > /dev/ttyUSB2
echo 'AT+CMGS="+34TELEFONO"\r' > /dev/ttyUSB2
echo $2'\032' > /dev/ttyUSB2

