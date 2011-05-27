<?xml version="1.0"?>
<!-- Format query results for display -->
<xsl:stylesheet xmlns:i18n="http://apache.org/cocoon/i18n/2.1" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
  <xsl:output doctype-public="-//UIT//DTD Corpus V1.0//EN" doctype-system="http://giellatekno.uit.no/dtd/corpus.dtd" encoding="UTF-8" indent="yes" method="xml" version="1.0"/>
  <!-- Add the metainformation manually -->
<!-- variable filename contains the original name of the file (from submitter)-->
  <xsl:variable name="filename" select="'OTP200620070025000SE_1.html'"/>
  <xsl:variable name="title" select="'Od.prp. nr. 25 (2006-2007)'"/>
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
  <xsl:variable name="translated_from" select="'nob'"/>
  <xsl:variable name="publisher" select="'Arbeids- og inkluderingsdepartementet'"/>
  <xsl:variable name="publChannel" select="''"/>
  <xsl:variable name="year" select="'2007'"/>
  <xsl:variable name="ISBN" select="''"/>
  <xsl:variable name="ISSN" select="''"/>
  <xsl:variable name="place" select="'http://www.regjeringen.no/se/dep/lmd/Dokumeanttat-/regpubl/otprp/2006-2007/Odprp-nr-25-2006-2007-.html?id=461192'"/>
  <xsl:variable name="genre" select="'admin'"/>
  <xsl:variable name="collection" select="''"/>
  <xsl:variable name="translator_fn" select="''"/>
  <xsl:variable name="translator_ln" select="''"/>
  <xsl:variable name="translator_gender" select="'unknown'"/>
  <xsl:variable name="translator_born" select="''"/>
  <xsl:variable name="translator_nat" select="''"/>
  <!-- select license type: free, standard or other -->
  <xsl:variable name="license_type" select="'free'"/>
  <xsl:variable name="sub_name" select="''"/>
  <xsl:variable name="sub_email" select="''"/>
  <xsl:variable name="wordcount" select="''"/>
  <xsl:variable name="metadata" select="'uncomplete'"/>
  <xsl:variable name="template_version" select="' 1.16 '"/>
  <xsl:variable name="current_version" select="'$Revision: 1.7 $'"/>
  <!-- Free text field for notes -->
  <xsl:variable name="note" select="''"/>

  <!-- The main language of the document -->
  <xsl:variable name="mainlang" select="'sme'"/>

  <!-- Other languages, in case of multilingual document. -->
  <!-- Select "1" for the variable multilingual -->
  <xsl:variable name="monolingual" select="''"/>
  <!--lg rec is off!-->
  <xsl:variable name="multilingual" select="'1'"/>
  <!--this is default-->

<!-- Select the potential langugages by adding the number "1" in the -->
<!-- selection frame. If no languages are selected, the document is -->
<!-- checked for all the languages below. -->
  <xsl:variable name="mlang_sme" select="''"/>
  <xsl:variable name="mlang_smj" select="''"/>
  <xsl:variable name="mlang_sma" select="''"/>
  <xsl:variable name="mlang_nob" select="'1'"/>
  <xsl:variable name="mlang_nno" select="''"/>
  <xsl:variable name="mlang_swe" select="''"/>
  <xsl:variable name="mlang_fin" select="''"/>
  <xsl:variable name="mlang_ger" select="''"/>
  <xsl:variable name="mlang_eng" select="''"/>
  <xsl:variable name="mlang_oth" select="''"/>
  <!-- If the document has parallel texts, select "1" for parallel_texts -->
<!-- Add the locations of the parallel files to the variables-->
  <xsl:variable name="parallel_texts" select="'1'"/>
  <xsl:variable name="para_sme" select="''"/>
  <xsl:variable name="para_smj" select="''"/>
  <xsl:variable name="para_sma" select="''"/>
  <xsl:variable name="para_nob" select="'OTP200620070025000SE_1.html'"/>
  <xsl:variable name="para_nno" select="''"/>
  <xsl:variable name="para_swe" select="''"/>
  <xsl:variable name="para_fin" select="''"/>
  <xsl:variable name="para_ger" select="''"/>
  <xsl:variable name="para_eng" select="''"/>
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

<!-- Change or remove problematic characters from the text. -->
<!-- add the template to match (here all p:s), and write the -->
<!-- replaced characters and the replacements. -->

<xsl:template match="p">
<xsl:variable name="text" select="current()"/>
<xsl:variable name="type" select="@type"/>
<xsl:variable name="lang" select="@xml:lang"/>
<xsl:element name="p">
            <xsl:if test="$type">
            <xsl:attribute name="type">
            <xsl:value-of select="$type"/>
            </xsl:attribute>
            </xsl:if>
            <xsl:if test="$lang">
            <xsl:attribute name="xml:lang">
            <xsl:value-of select="$lang"/>
            </xsl:attribute>
            </xsl:if>

			<xsl:value-of select="translate($text,'&#xFFFD;','&#x111;') "/>
</xsl:element>
</xsl:template>

<xsl:template match="p">
<xsl:variable name="text" select='current()' />
<xsl:variable name="type" select='@type' />
<xsl:variable name="lang" select='@xml:lang' />
<xsl:element name="p">
            <xsl:if test="$type">
            <xsl:attribute name="type">
            <xsl:value-of select="$type"/>
            </xsl:attribute>
            </xsl:if>
            <xsl:if test="$lang">
            <xsl:attribute name="xml:lang">
            <xsl:value-of select="$lang"/>
            </xsl:attribute>
            </xsl:if>

            <xsl:call-template name="globalTextReplace">
               <xsl:with-param name="inputString" select="$text"/>
               <xsl:with-param name="target" select="'St.die˜./'"/>
               <xsl:with-param name="replacement" select="'St.dieđ./'"/>
                <xsl:with-param name="continue" select="0"/>
            </xsl:call-template>
</xsl:element>
</xsl:template>

</xsl:stylesheet>
