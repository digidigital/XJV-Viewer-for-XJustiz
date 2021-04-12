#!/usr/bin/python3
# coding: utf-8
import webbrowser
import lxml.etree as ET   
inputfile = "./XJustiz-Testdaten/Beispiel_synthetisch2.xml"
#inputfile = "./XJustiz-Testdaten/Beispiel_synthetisch1.xml"
#inputfile = "./XJustiz-Testdaten/xjustiz_nachricht_aaz_v3_2.xml"
#inputfile = "./XJustiz-Testdaten/xjustiz_nachricht_v3_2.xml"
xsltfile = "./XJV-Viewer.xsl"
outfile = "./XJV-Viewer.html"

originaldom = ET.parse(inputfile)
xslt = ET.parse(xsltfile)

transform = ET.XSLT(xslt)

try:
    newdom = transform(originaldom)
except:
    for error in transform.error_log:
        print(error.message, error.line)

infile = ET.tostring(newdom, pretty_print=True)
outfileHandle = open(outfile, 'w')
outfileHandle.write(infile.decode("utf-8"))
outfileHandle.close()
webbrowser.open (outfile)
