#!/usr/bin/env python
import tika
import sys
from tika import parser

argList = sys.argv
arg1 = argList[1]

parsed = parser.from_file('C:/wamp64/www/thai-mvc/assets/uploads/'+arg1)
print(parsed["metadata"])
print(parsed["content"])