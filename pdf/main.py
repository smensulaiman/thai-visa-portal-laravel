#!/usr/bin/env python
import tika
import sys
from tika import parser

argList = sys.argv
pdfFile = argList[1]

# print(pdfFile)

parsed = parser.from_file(pdfFile)
# print(parsed["metadata"])
print(parsed["content"])