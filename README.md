# iso4217 to RDF #

Transform documents in ISO 4217 format to RDF. Basically, there is only one document source for this, and that is at http://www.currency-iso.org/dam/downloads/lists/list_one.xml so the script `generate_rdf_currency_codes.sh` will use `saxon` to pull directly from that source and produce the file `currency-iso.rdf`.

## References ##

- http://www.currency-iso.org
- http://www.iso.org/iso/home/store/catalogue_tc/catalogue_detail.htm?csnumber=64758
- http://saxonica.com/products/products.xml
- http://sourceforge.net/projects/saxon/files/Saxon-HE/9.7/
