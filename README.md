# iso4217_to_rdf #

Transform documents in ISO 4217 format to RDF. Basically, there is only one document source for this, and that is at http://www.currency-iso.org/dam/downloads/lists/list_one.xml so the script `generate_rdf_currency_codes.sh` will use `saxon` to pull directly from that source and product the file `currency-iso.rdf`.



