<?xml version = '1.0' encoding = 'UTF-8'?>
<!-- Format query results for display --><xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0" >
  <xsl:output xmlns:xsl="http://www.w3.org/1999/XSL/Transform" doctype-system="http://giellatekno.uit.no/dtd/corpus.dtd" method="xml" doctype-public="-//UIT//DTD Corpus V1.0//EN" version="1.0" indent="yes" encoding="UTF-8" />
<!-- Add the metainformation manually -->  <xsl:variable xmlns:xsl="http://www.w3.org/1999/XSL/Transform" select="'spr01_05.doc'" name="filename" />
  <xsl:variable xmlns:xsl="http://www.w3.org/1999/XSL/Transform" select="'SPR beavdegirji 01/05'" name="title" />
  <xsl:variable xmlns:xsl="http://www.w3.org/1999/XSL/Transform" select="'Elli Sivi'" name="author1_fn" />
  <xsl:variable xmlns:xsl="http://www.w3.org/1999/XSL/Transform" select="'Näkkäläjärvi Utsi'" name="author1_ln" />
  <xsl:variable xmlns:xsl="http://www.w3.org/1999/XSL/Transform" select="'f'" name="author1_gender" />
  <xsl:variable xmlns:xsl="http://www.w3.org/1999/XSL/Transform" select="''" name="author1_born" />
  <xsl:variable xmlns:xsl="http://www.w3.org/1999/XSL/Transform" select="'fin'" name="author1_nat" />
  <xsl:variable xmlns:xsl="http://www.w3.org/1999/XSL/Transform" select="''" name="author2_fn" />
  <xsl:variable xmlns:xsl="http://www.w3.org/1999/XSL/Transform" select="''" name="author2_ln" />
  <xsl:variable xmlns:xsl="http://www.w3.org/1999/XSL/Transform" select="''" name="author2_gender" />
  <xsl:variable xmlns:xsl="http://www.w3.org/1999/XSL/Transform" select="''" name="author2_born" />
  <xsl:variable xmlns:xsl="http://www.w3.org/1999/XSL/Transform" select="''" name="author2_nat" />
  <xsl:variable xmlns:xsl="http://www.w3.org/1999/XSL/Transform" select="''" name="author3_fn" />
  <xsl:variable xmlns:xsl="http://www.w3.org/1999/XSL/Transform" select="''" name="author3_ln" />
  <xsl:variable xmlns:xsl="http://www.w3.org/1999/XSL/Transform" select="''" name="author3_gender" />
  <xsl:variable xmlns:xsl="http://www.w3.org/1999/XSL/Transform" select="''" name="author3_born" />
  <xsl:variable xmlns:xsl="http://www.w3.org/1999/XSL/Transform" select="''" name="author3_nat" />
  <xsl:variable xmlns:xsl="http://www.w3.org/1999/XSL/Transform" select="''" name="author4_fn" />
  <xsl:variable xmlns:xsl="http://www.w3.org/1999/XSL/Transform" select="''" name="author4_ln" />
  <xsl:variable xmlns:xsl="http://www.w3.org/1999/XSL/Transform" select="''" name="author4_gender" />
  <xsl:variable xmlns:xsl="http://www.w3.org/1999/XSL/Transform" select="''" name="author4_born" />
  <xsl:variable xmlns:xsl="http://www.w3.org/1999/XSL/Transform" select="''" name="author4_nat" />
  <xsl:variable xmlns:xsl="http://www.w3.org/1999/XSL/Transform" select="''" name="translated_from" />
  <xsl:variable xmlns:xsl="http://www.w3.org/1999/XSL/Transform" select="''" name="publisher" />
  <xsl:variable xmlns:xsl="http://www.w3.org/1999/XSL/Transform" select="''" name="publChannel" />
  <xsl:variable xmlns:xsl="http://www.w3.org/1999/XSL/Transform" select="'2006'" name="year" />
  <xsl:variable xmlns:xsl="http://www.w3.org/1999/XSL/Transform" select="''" name="ISBN" />
  <xsl:variable xmlns:xsl="http://www.w3.org/1999/XSL/Transform" select="''" name="ISSN" />
  <xsl:variable xmlns:xsl="http://www.w3.org/1999/XSL/Transform" select="''" name="place" />
  <xsl:variable xmlns:xsl="http://www.w3.org/1999/XSL/Transform" select="'facta'" name="genre" />
  <xsl:variable xmlns:xsl="http://www.w3.org/1999/XSL/Transform" select="''" name="collection" />
  <xsl:variable xmlns:xsl="http://www.w3.org/1999/XSL/Transform" select="''" name="translator_fn" />
  <xsl:variable xmlns:xsl="http://www.w3.org/1999/XSL/Transform" select="''" name="translator_ln" />
  <xsl:variable xmlns:xsl="http://www.w3.org/1999/XSL/Transform" select="'unknown'" name="translator_gender" />
  <xsl:variable xmlns:xsl="http://www.w3.org/1999/XSL/Transform" select="''" name="translator_born" />
  <xsl:variable xmlns:xsl="http://www.w3.org/1999/XSL/Transform" select="''" name="translator_nat" />
  <xsl:variable xmlns:xsl="http://www.w3.org/1999/XSL/Transform" select="'free'" name="license_type" />
  <xsl:variable xmlns:xsl="http://www.w3.org/1999/XSL/Transform" select="'Børre Gaup'" name="sub_name" />
  <xsl:variable xmlns:xsl="http://www.w3.org/1999/XSL/Transform" select="'borre.gaup@samediggi.no'" name="sub_email" />
  <xsl:variable xmlns:xsl="http://www.w3.org/1999/XSL/Transform" select="''" name="wordcount" />
  <xsl:variable xmlns:xsl="http://www.w3.org/1999/XSL/Transform" select="'uncomplete'" name="metadata" />
  <xsl:variable xmlns:xsl="http://www.w3.org/1999/XSL/Transform" select="'$Revision: 1.1 $'" name="template_version" />
  <xsl:variable xmlns:xsl="http://www.w3.org/1999/XSL/Transform" select="'Revision'" name="current_version" />
<!-- The main language of the document -->  <xsl:variable xmlns:xsl="http://www.w3.org/1999/XSL/Transform" select="'sme'" name="mainlang" />
<!-- Other languages, in case of multilingual document. --><!-- Select "1" for the variable multilingual --><!-- and for the languages present -->  <xsl:variable xmlns:xsl="http://www.w3.org/1999/XSL/Transform" select="''" name="multilingual" />
  <xsl:variable xmlns:xsl="http://www.w3.org/1999/XSL/Transform" select="''" name="mlang_sme" />
  <xsl:variable xmlns:xsl="http://www.w3.org/1999/XSL/Transform" select="''" name="mlang_smj" />
  <xsl:variable xmlns:xsl="http://www.w3.org/1999/XSL/Transform" select="''" name="mlang_sma" />
  <xsl:variable xmlns:xsl="http://www.w3.org/1999/XSL/Transform" select="''" name="mlang_nob" />
  <xsl:variable xmlns:xsl="http://www.w3.org/1999/XSL/Transform" select="''" name="mlang_nno" />
  <xsl:variable xmlns:xsl="http://www.w3.org/1999/XSL/Transform" select="''" name="mlang_swe" />
  <xsl:variable xmlns:xsl="http://www.w3.org/1999/XSL/Transform" select="''" name="mlang_fin" />
  <xsl:variable xmlns:xsl="http://www.w3.org/1999/XSL/Transform" select="''" name="mlang_ger" />
  <xsl:variable xmlns:xsl="http://www.w3.org/1999/XSL/Transform" select="''" name="mlang_eng" />
  <xsl:variable xmlns:xsl="http://www.w3.org/1999/XSL/Transform" select="''" name="mlang_oth" />
<!-- Tag the specified elements with the specified language: -->  <xsl:variable xmlns:xsl="http://www.w3.org/1999/XSL/Transform" select="'sme'" name="smelang" />
  <xsl:variable xmlns:xsl="http://www.w3.org/1999/XSL/Transform" select="'smj'" name="smjlang" />
  <xsl:variable xmlns:xsl="http://www.w3.org/1999/XSL/Transform" select="'sma'" name="smalang" />
  <xsl:variable xmlns:xsl="http://www.w3.org/1999/XSL/Transform" select="'nob'" name="noblang" />
  <xsl:variable xmlns:xsl="http://www.w3.org/1999/XSL/Transform" select="'nno'" name="nnolang" />
  <xsl:variable xmlns:xsl="http://www.w3.org/1999/XSL/Transform" select="'swe'" name="swelang" />
  <xsl:variable xmlns:xsl="http://www.w3.org/1999/XSL/Transform" select="'fin'" name="finlang" />
  <xsl:variable xmlns:xsl="http://www.w3.org/1999/XSL/Transform" select="'swe'" name="englang" />
  <xsl:variable xmlns:xsl="http://www.w3.org/1999/XSL/Transform" select="'fin'" name="gerlang" />
<!-- Add all paragraphs that should have xml:lang=X--><!-- Uncomment the following and add the paths, for example: --><!-- <xsl:template match="/root/section[2]/paragraph[5] |
                      /root/section[3]/paragraph[2] "> --><!--
<xsl:template match="">
	<xsl:element name="p">
	<xsl:attribute name="xml:lang">
		<xsl:value-of select="$smelang"/>
	</xsl:attribute>
	<xsl:apply-templates/>
</xsl:element>
 </xsl:template>
-->  <xsl:include xmlns:xsl="http://www.w3.org/1999/XSL/Transform" href="/usr/local/share/corp/bin/common.xsl" />
</xsl:stylesheet>
