<?xml version='1.0' encoding='UTF-8'?>
<xsl:stylesheet xmlns:i18n="http://apache.org/cocoon/i18n/2.1" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
  <xsl:output doctype-public="-//UIT//DTD Corpus V1.0//EN" doctype-system="http://giellatekno.uit.no/dtd/corpus.dtd" encoding="UTF-8" indent="yes" method="xml" version="1.0"/>
  <!-- Add the metainformation manually -->
  <xsl:variable name="filename" select="'http://skuvla.info/skolehist/eidheim-s.htm'"/>
  <xsl:variable name="title" select="'Heahteoahpaheaddji Sámis - vásáhusat ja dárkostusat'"/>
  <xsl:variable name="author1_fn" select="'Harald'"/>
  <xsl:variable name="author1_ln" select="'Eidheim'"/>
  <xsl:variable name="author1_gender" select="'m'"/>
  <xsl:variable name="author1_born" select="'1925'"/>
  <xsl:variable name="author1_nat" select="'NO'"/>
  <xsl:variable name="author2_fn" select="''"/>
  <xsl:variable name="author2_ln" select="''"/>
  <xsl:variable name="author2_gender" select="''"/>
  <xsl:variable name="author2_born" select="''"/>
  <xsl:variable name="author2_nat" select="''"/>
  <xsl:variable name="author3_fn" select="''"/>
  <xsl:variable name="author3_ln" select="''"/>
  <xsl:variable name="author3_gender" select="''"/>
  <xsl:variable name="author3_born" select="''"/>
  <xsl:variable name="author3_nat" select="''"/>
  <xsl:variable name="author4_fn" select="''"/>
  <xsl:variable name="author4_ln" select="''"/>
  <xsl:variable name="author4_gender" select="''"/>
  <xsl:variable name="author4_born" select="''"/>
  <xsl:variable name="author4_nat" select="''"/>
  <xsl:variable name="translated_from" select="'nno'"/>
  <xsl:variable name="publisher" select="'Davvi girji'"/>
  <xsl:variable name="publChannel" select="''"/>
  <xsl:variable name="year" select="'2005'"/>
  <xsl:variable name="ISBN" select="''"/>
  <xsl:variable name="ISSN" select="''"/>
  <xsl:variable name="place" select="''"/>
  <xsl:variable name="genre" select="'facta'"/>
  <xsl:variable name="collection" select="''"/>
  <xsl:variable name="translator_fn" select="'Máret'"/>
  <xsl:variable name="translator_ln" select="'Sárá'"/>
  <xsl:variable name="translator_gender" select="'f'"/>
  <xsl:variable name="translator_born" select="''"/>
  <xsl:variable name="translator_nat" select="''"/>
  <xsl:variable name="license_type" select="'free'"/>
  <xsl:variable name="sub_name" select="'Børre Gaup'"/>
  <xsl:variable name="sub_email" select="'boerre.gaup@samediggi.no'"/>
  <xsl:variable name="wordcount" select="'3091'"/>
  <xsl:variable name="metadata" select="'uncomplete'"/>
  <xsl:variable name="template_version" select="' 1.9 '"/>
  <xsl:variable name="current_version" select="'$Revision: 1.3 $'"/>
<!-- Free text field for notes -->
<xsl:variable name="note" select="''"/>

  <!-- The main language of the document -->
  <xsl:variable name="mainlang" select="'sme'"/>
  <!-- Other languages, in case of multilingual document. -->
<!-- Select "1" for the variable multilingual -->
<!-- and for the languages present -->
<xsl:variable name="monolingual" select="''"/> 

<!-- If monolingual is not set, the language is multilingual.
     Uncomment the languages you want to check for (or add new lines
     with the right ISO-639-3 language codes).

     If *no* languages are uncommented (and monolingual is not 1),
     then the document is checked for all supported languages.
-->
<xsl:variable name="mlangs">
	<language xml:lang="nob"/>
</xsl:variable>

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
	<parallel_text location="eidheim-n.htm" xml:lang="nno"/>
	<parallel_text location="eidheim-e.htm" xml:lang="eng"/>
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

</xsl:stylesheet>