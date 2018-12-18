#!/usr/bin/python
# Script para enviar SMS con Python. No probado.

import serial
import curses
import ascii
import time

modem = serial.Serial('/dev/ttyUSB2', 460800, timeout=1)
modem.write('AT+CMGF=1')
print modem.readline()
print modem.readline()

modem.write('AT+CMGS="%s"r' % 'NUMTELEFON')
modem.write('missatge de prova')
modem.write(ascii.ctrl('z'))
time.sleep(2)

print modem.readlines()
