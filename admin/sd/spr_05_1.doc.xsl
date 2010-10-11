<?xml version="1.0"?>
<!-- Format query results for display -->
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
  <xsl:output doctype-system="http://giellatekno.uit.no/dtd/corpus.dtd" method="xml" doctype-public="-//UIT//DTD Corpus V1.0//EN" version="1.0" indent="yes" encoding="UTF-8"/>
<!-- Add the metainformation manually -->  <xsl:variable select="'spr01_05.doc'" name="filename"/>
  <xsl:variable select="'SPR beavdegirji 01/05'" name="title"/>
  <xsl:variable select="'Elli Sivi'" name="author1_fn"/>
  <xsl:variable select="'N&#xE4;kk&#xE4;l&#xE4;j&#xE4;rvi Utsi'" name="author1_ln"/>
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
  <xsl:variable select="''" name="translated_from"/>
  <xsl:variable select="''" name="publisher"/>
  <xsl:variable select="''" name="publChannel"/>
  <xsl:variable select="'2006'" name="year"/>
  <xsl:variable select="''" name="ISBN"/>
  <xsl:variable select="''" name="ISSN"/>
  <xsl:variable select="''" name="place"/>
  <xsl:variable select="'facta'" name="genre"/>
  <xsl:variable select="''" name="collection"/>
  <xsl:variable select="''" name="translator_fn"/>
  <xsl:variable select="''" name="translator_ln"/>
  <xsl:variable select="'unknown'" name="translator_gender"/>
  <xsl:variable select="''" name="translator_born"/>
  <xsl:variable select="''" name="translator_nat"/>
  <xsl:variable name="license_type" select="'free'"/>
  <xsl:variable select="'B&#xF8;rre Gaup'" name="sub_name"/>
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
<xsl:variable name="monolingual" select="''"/>
<xsl:variable name="multilingual" select="'1'"/>

  <xsl:variable select="''" name="mlang_sme"/>
  <xsl:variable select="''" name="mlang_smj"/>
  <xsl:variable select="''" name="mlang_sma"/>
  <xsl:variable name="mlang_nob" select="'1'"/>
  <xsl:variable select="''" name="mlang_nno"/>
  <xsl:variable select="''" name="mlang_swe"/>
  <xsl:variable select="''" name="mlang_fin"/>
  <xsl:variable select="''" name="mlang_ger"/>
  <xsl:variable select="''" name="mlang_eng"/>
  <xsl:variable select="''" name="mlang_oth"/>

<!-- Tag the specified elements with the specified language: -->  
<xsl:variable select="'sme'" name="smelang"/>
  <xsl:variable select="'smj'" name="smjlang"/>
  <xsl:variable select="'sma'" name="smalang"/>
  <xsl:variable select="'nob'" name="noblang"/>
  <xsl:variable select="'nno'" name="nnolang"/>
  <xsl:variable select="'swe'" name="swelang"/>
  <xsl:variable select="'fin'" name="finlang"/>
  <xsl:variable select="'swe'" name="englang"/>
  <xsl:variable select="'fin'" name="gerlang"/>
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

<!-- If the document has parallel texts, select "1" for parallel_texts -->
<!-- Add the locations of the parallel files to the variables-->

<xsl:variable name="parallel_texts" select="''"/>
<xsl:variable name="para_sme" select="''"/>
<xsl:variable name="para_smj" select="''"/>
<xsl:variable name="para_sma" select="''"/>
<xsl:variable name="para_nob" select="''"/>
<xsl:variable name="para_nno" select="''"/>
<xsl:variable name="para_swe" select="''"/>
<xsl:variable name="para_fin" select="''"/>
<xsl:variable name="para_ger" select="''"/>
<xsl:variable name="para_eng" select="''"/>



</xsl:stylesheet>
