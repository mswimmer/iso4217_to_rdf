#!/bin/bash
saxon -xsl:iso4217_to_rdf.xsl -s:http://www.currency-iso.org/dam/downloads/lists/list_one.xml -o:currency-iso.rdf

