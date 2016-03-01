<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="2.0"
	xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:html="http://www.w3.org/1999/xhtml"
	xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#" xmlns:rdfs="http://www.w3.org/2000/01/rdf-schema#"
	xmlns:ccy="http://www.currency-iso.org#" xmlns:dc="http://purl.org/dc/terms/"
	xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns:fn="http://www.w3.org/2005/xpath-functions">

	<xsl:output method="xml" />

	<xsl:variable name="date" select="/ISO_4217/@Pblshd" as="xs:date" />

	<xsl:template match="/">
		<rdf:RDF>
			<xsl:apply-templates />
		</rdf:RDF>
	</xsl:template>

	<xsl:template match="CcyTbl/CcyNtry">
		<xsl:variable name="name"
			select="concat('http://www.currency-iso.org/', fn:encode-for-uri(CtryNm), '_', fn:encode-for-uri(Ccy) )" />

		<rdf:Description rdf:about="{$name}">
			<rdf:type rdf:resource="http://www.currency-iso.org#CurrencyCode" />

			<ccy:countryName>
				<xsl:value-of select="CtryNm" />
			</ccy:countryName>

			<ccy:currencyName>
				<xsl:value-of select="CcyNm" />
			</ccy:currencyName>

			<ccy:currencySymbol>
				<xsl:value-of select="Ccy" />
			</ccy:currencySymbol>

			<ccy:currencyNumber>
				<xsl:value-of select="CcyNbr" />
			</ccy:currencyNumber>

			<ccy:currencyMinorUnits>
				<xsl:value-of select="CcyMnrUnts" />
			</ccy:currencyMinorUnits>

			<dc:date>
				<xsl:value-of select="$date" />
			</dc:date>

		</rdf:Description>
	</xsl:template>

</xsl:stylesheet>