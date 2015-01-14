<?xml version='1.0' encoding='UTF-8'?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
  <xsl:output doctype-system="http://giellatekno.uit.no/dtd/corpus.dtd" method="xml" doctype-public="-//UIT//DTD Corpus V1.0//EN" version="1.0" indent="yes" encoding="UTF-8"/>
<!-- Add the metainformation manually -->  <xsl:variable select="'spr01_05.doc'" name="filename"/>
  <xsl:variable select="'SPR beavdegirji 01/05'" name="title"/>
  <xsl:variable select="'Elli Sivi'" name="author1_fn"/>
  <xsl:variable select="'Näkkäläjärvi Utsi'" name="author1_ln"/>
  <xsl:variable select="'f'" name="author1_gender"/>
  <xsl:variable select="''" name="author1_born"/>
  <xsl:variable select="'fin'" name="author1_nat"/>
  <xsl:variable select="''" name="author2_fn"/>
  <xsl:variable select="''" name="author2_ln"/>
  <xsl:variable select="''" name="author2_gender"/>
  <xsl:variable select="''" name="author2_born"/>
  <xsl:variable select="''" name="author2_nat"/>
  <xsl:variable select="''" name="author3_fn"/>
  <xsl:variable select="''" name="author3_ln"/>
  <xsl:variable select="''" name="author3_gender"/>
  <xsl:variable select="''" name="author3_born"/>
  <xsl:variable select="''" name="author3_nat"/>
  <xsl:variable select="''" name="author4_fn"/>
  <xsl:variable select="''" name="author4_ln"/>
  <xsl:variable select="''" name="author4_gender"/>
  <xsl:variable select="''" name="author4_born"/>
  <xsl:variable select="''" name="author4_nat"/>
  <xsl:variable name="translated_from" select="''"/>
  <xsl:variable select="''" name="publisher"/>
  <xsl:variable select="''" name="publChannel"/>
  <xsl:variable select="'2006'" name="year"/>
  <xsl:variable select="''" name="ISBN"/>
  <xsl:variable select="''" name="ISSN"/>
  <xsl:variable select="''" name="place"/>
  <xsl:variable select="'admin'" name="genre"/>
  <xsl:variable select="''" name="collection"/>
  <xsl:variable select="''" name="translator_fn"/>
  <xsl:variable select="''" name="translator_ln"/>
  <xsl:variable select="'unknown'" name="translator_gender"/>
  <xsl:variable select="''" name="translator_born"/>
  <xsl:variable select="''" name="translator_nat"/>
  <xsl:variable name="license_type" select="'free'"/>
  <xsl:variable select="'Børre Gaup'" name="sub_name"/>
  <xsl:variable select="'borre.gaup@samediggi.no'" name="sub_email"/>
  <xsl:variable select="'620'" name="wordcount"/>
  <xsl:variable select="'uncomplete'" name="metadata"/>
  <xsl:variable select="'$Revision: 1.7 $'" name="template_version"/>
  <xsl:variable select="'Revision'" name="current_version"/>
<!-- Free text field for notes -->
<xsl:variable name="note" select="''"/>

<!-- The main language of the document -->  
<xsl:variable select="'sme'" name="mainlang"/>

<!-- Other languages, in case of multilingual document. -->
<!-- Select "1" for the variable multilingual -->
<!-- and for the languages present -->  

<!--Select "1" for monolingual to turn language recog off-->
<xsl:variable name="monolingual" select="1"/>


<!-- If monolingual is not set, the language is multilingual.
     Uncomment the languages you want to check for (or add new lines
     with the right ISO-639-3 language codes).

     If *no* languages are uncommented (and monolingual is not 1),
     then the document is checked for all supported languages.
-->
<xsl:variable name="mlangs">
	<language xml:lang="nob"/>
</xsl:variable>

<!-- Add all paragraphs that should have xml:lang=X-->
<!-- Uncomment the following and add the paths, for example: -->
<!-- <xsl:template match="/root/section[2]/paragraph[5] |
                      /root/section[3]/paragraph[2] "> -->
<!--
<xsl:template match="">
	<xsl:element name="p">
	<xsl:attribute name="xml:lang">
		<xsl:value-of select="$smelang"/>
	</xsl:attribute>
	<xsl:apply-templates/>
</xsl:element>
 </xsl:template>
-->

<!-- Add the locations of the parallel files to the variables-->



<!-- If the document has parallel texts, uncomment the right languages
     (or add new lines with the right ISO-639-3 language codes) and
     add the filename of the parallel files to the 'location'
     variables.

     Don't write the full directory; we expect the file to be in the
     same directory as this file, with only the language code and
     filename changed.
     -->
<xsl:variable name="parallels">
	</xsl:variable>

</xsl:stylesheet>