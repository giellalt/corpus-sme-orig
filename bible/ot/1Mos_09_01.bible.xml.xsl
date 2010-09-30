<?xml version="1.0" encoding="UTF-8"?>

<!-- Format query results for display -->
<xsl:stylesheet version="1.0" xmlns:i18n="http://apache.org/cocoon/i18n/2.1" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
  <xsl:output doctype-public="-//UIT//DTD Corpus V1.0//EN" doctype-system="http://giellatekno.uit.no/dtd/corpus.dtd" encoding="UTF-8" indent="yes" method="xml" version="1.0"/>
  <!-- Add the metainformation manually -->
  <xsl:variable name="filename" select="'1Mos_09_01.doc'"/>
  <xsl:variable name="title" select="'Boares testamenta'"/>
  <xsl:variable name="author1_fn" select="''"/>
  <xsl:variable name="author1_ln" select="''"/>
  <xsl:variable name="author1_gender" select="'unknown'"/>
  <xsl:variable name="author1_born" select="''"/>
  <xsl:variable name="author1_nat" select="''"/>
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
  <xsl:variable name="publisher" select="'Det norske bibelselskap'"/>
  <xsl:variable name="publChannel" select="''"/>
  <xsl:variable name="year" select="'2001'"/>
  <xsl:variable name="ISBN" select="''"/>
  <xsl:variable name="ISSN" select="''"/>
  <xsl:variable name="place" select="''"/>
  <xsl:variable name="genre" select="'bible'"/>
  <xsl:variable name="collection" select="''"/>
  <xsl:variable name="translator_fn" select="''"/>
  <xsl:variable name="translator_ln" select="''"/>
  <xsl:variable name="translator_gender" select="'unknown'"/>
  <xsl:variable name="translator_born" select="''"/>
  <xsl:variable name="translator_nat" select="''"/>
  <xsl:variable name="license_type" select="'free'"/>
  <xsl:variable name="sub_name" select="'Børre Gaup'"/>
  <xsl:variable name="sub_email" select="'borre.gaup@samediggi.no'"/>
  <xsl:variable name="wordcount" select="''"/>
  <xsl:variable name="metadata" select="'uncomplete'"/>
  <xsl:variable name="template_version" select="' 1.9 '"/>
  <xsl:variable name="current_version" select="'$Revision: 1.2 $'"/>
<!-- Free text field for notes -->
<xsl:variable name="note" select="''"/>

  <!-- The main language of the document -->
  <xsl:variable name="mainlang" select="'sme'"/>

  <!-- Other languages, in case of multilingual document. -->
<xsl:variable name="monolingual" select="'1'"/> <!--lg rec is off!-->
  <xsl:variable name="multilingual" select="''"/> <!--this is the default-->

<!-- Select "1" for the variable multilingual -->
<!-- and for the languages present -->
  <xsl:variable name="mlang_sme" select="''"/>
  <xsl:variable name="mlang_smj" select="''"/>
  <xsl:variable name="mlang_sma" select="''"/>
  <xsl:variable name="mlang_nob" select="''"/>
  <xsl:variable name="mlang_nno" select="''"/>
  <xsl:variable name="mlang_swe" select="''"/>
  <xsl:variable name="mlang_fin" select="''"/>
  <xsl:variable name="mlang_ger" select="''"/>
  <xsl:variable name="mlang_eng" select="''"/>
  <xsl:variable name="mlang_oth" select="''"/>

  <!-- Tag the specified elements with the specified language: -->
  <xsl:variable name="smelang" select="'sme'"/>
  <xsl:variable name="smjlang" select="'smj'"/>
  <xsl:variable name="smalang" select="'sma'"/>
  <xsl:variable name="noblang" select="'nob'"/>
  <xsl:variable name="nnolang" select="'nno'"/>
  <xsl:variable name="swelang" select="'swe'"/>
  <xsl:variable name="finlang" select="'fin'"/>
  <xsl:variable name="englang" select="'swe'"/>
  <xsl:variable name="gerlang" select="'fin'"/>
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
<xsl:variable name="parallel_texts" select="'1'"/>
<xsl:variable name="para_sme" select="''"/>
<xsl:variable name="para_smj" select="''"/>
<xsl:variable name="para_sma" select="''"/>
<xsl:variable name="para_nob" select="'01GENNBST.bible.xml'"/>
<xsl:variable name="para_nno" select="'01GENNNST.bible.xml'"/>
<xsl:variable name="para_swe" select="'1Mos.bible.xml'"/>
<xsl:variable name="para_fin" select="''"/>
<xsl:variable name="para_ger" select="''"/>
<xsl:variable name="para_eng" select="''"/>



</xsl:stylesheet>
