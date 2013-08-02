<?xml version='1.0' encoding='UTF-8'?>
<xsl:stylesheet xmlns:i18n="http://apache.org/cocoon/i18n/2.1" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
  <xsl:output doctype-public="-//UIT//DTD Corpus V1.0//EN" doctype-system="http://giellatekno.uit.no/dtd/corpus.dtd" encoding="UTF-8" indent="yes" method="xml" version="1.0"/>
  <!-- Add the metainformation manually -->
  <xsl:variable name="filename" select="'NAC_1994_24.pdf'"/>
  <xsl:variable name="title" select="'Finnmárkku eatnamiid ja čázádagaid geavaheapmi historjjálaš'"/>
  <xsl:variable name="author1_fn" select="'Steinar'"/>
  <xsl:variable name="author1_ln" select="'Pedersen'"/>
  <xsl:variable name="author1_gender" select="'m'"/>
  <xsl:variable name="author1_born" select="''"/>
  <xsl:variable name="author1_nat" select="'nor'"/>
  <xsl:variable name="author2_fn" select="'Hans'"/>
  <xsl:variable name="author2_ln" select="'Prestbakmo'"/>
  <xsl:variable name="author2_gender" select="'m'"/>
  <xsl:variable name="author2_born" select="''"/>
  <xsl:variable name="author2_nat" select="'nor'"/>
  <xsl:variable name="author3_fn" select="'Einar'"/>
  <xsl:variable name="author3_ln" select="'Richter Hanssen'"/>
  <xsl:variable name="author3_gender" select="'m'"/>
  <xsl:variable name="author3_born" select="''"/>
  <xsl:variable name="author3_nat" select="'nor'"/>
  <xsl:variable name="author4_fn" select="'Einar'"/>
  <xsl:variable name="author4_ln" select="'Niemi'"/>
  <xsl:variable name="author4_gender" select="'m'"/>
  <xsl:variable name="author4_born" select="''"/>
  <xsl:variable name="author4_nat" select="'nor'"/>
  <xsl:variable name="translated_from" select="'nob'"/>
  <xsl:variable name="publisher" select="'Stáhta hálddáhusdoaimmahus'"/>
  <xsl:variable name="publChannel" select="''"/>
  <xsl:variable name="year" select="'1994'"/>
  <xsl:variable name="ISBN" select="''"/>
  <xsl:variable name="ISSN" select="''"/>
  <xsl:variable name="place" select="'Oslo'"/>
  <xsl:variable name="genre" select="'admin'"/>
  <xsl:variable name="collection" select="''"/>
  <xsl:variable name="translator_fn" select="''"/>
  <xsl:variable name="translator_ln" select="''"/>
  <xsl:variable name="translator_gender" select="'unknown'"/>
  <xsl:variable name="translator_born" select="''"/>
  <xsl:variable name="translator_nat" select="''"/>
  <xsl:variable name="license_type" select="'free'"/>
  <xsl:variable name="sub_name" select="'Trond Trosterud'"/>
  <xsl:variable name="sub_email" select="'trond.trosterud@hum.uit.no'"/>
  <xsl:variable name="wordcount" select="'159251'"/>
  <xsl:variable name="metadata" select="'uncomplete'"/>
  <xsl:variable name="template_version" select="' 1.9 '"/>
  <xsl:variable name="current_version" select="'$Revision: 1.20 $'"/>
<!-- Free text field for notes -->
<xsl:variable name="note" select="''"/>

  <!-- The main language of the document -->
  <xsl:variable name="mainlang" select="'sme'"/>
  <!-- Other languages, in case of multilingual document. -->
<!-- Select "1" for the variable multilingual -->
<!-- and for the languages present -->
  <!--Select "1" for monolingual to turn language recog off-->
<xsl:variable name="monolingual" select="''"/>
<xsl:variable name="multilingual" select="'1'"/>

  <xsl:variable name="mlang_sme" select="''"/>
  <xsl:variable name="mlang_smj" select="''"/>
  <xsl:variable name="mlang_sma" select="''"/>
  <xsl:variable name="mlang_nob" select="'1'"/>
  <xsl:variable name="mlang_nno" select="''"/>
  <xsl:variable name="mlang_swe" select="''"/>
  <xsl:variable name="mlang_fin" select="''"/>
  <xsl:variable name="mlang_ger" select="''"/>
  <xsl:variable name="mlang_eng" select="'1'"/>
  <xsl:variable name="mlang_oth" select="''"/>
  <!-- Tag the specified elements with the specified language: -->
  <xsl:variable name="smelang" select="'sme'"/>
  <xsl:variable name="smjlang" select="'smj'"/>
  <xsl:variable name="smalang" select="'sma'"/>
  <xsl:variable name="noblang" select="'nob'"/>
  <xsl:variable name="nnolang" select="'nno'"/>
  <xsl:variable name="swelang" select="'swe'"/>
  <xsl:variable name="finlang" select="'fin'"/>
  <xsl:variable name="englang" select="'eng'"/>
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
<xsl:variable name="para_nob" select="'nou199419940021000dddpdfa.pdf'"/>
<xsl:variable name="para_nno" select="''"/>
<xsl:variable name="para_swe" select="''"/>
<xsl:variable name="para_fin" select="''"/>
<xsl:variable name="para_ger" select="''"/>
<xsl:variable name="para_eng" select="''"/>

<xsl:variable name="main_sizes" select="'10pt,11pt,12pt,14pt'"/>
<xsl:variable name="title_sizes" select="'14pt,15pt,16pt,50pt'"/>
<xsl:variable name="title_styles" select="''"/>
<xsl:variable name="excluded" select="'4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,189,190,191,192,193,194,195,196,197,198,199,313,314,315,316,317,318'"/>

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

            <xsl:call-template name="globalTextReplace">
               <xsl:with-param name="inputString" select="translate($text,'ðñçóþÑÝýÇÓÐ','đŋčšŽŊŦŧČŠĐ')"/>
     <xsl:with-param name="target" select="'Adelaer/gaefhes/haes/daen/siidaer/omgaaes/saae/mae/undgaae/taen/taed/baer/vaer/raer/naes/saer/saet/saet/naer/Nae/raep/vaeg/raen/Fae/Rae/jael/'"/>
<xsl:with-param name="replacement" select="'Adelær/gæfhes/hæs/dæn/siidær/omgaæs/saæ/mæ/undgaæ/tæn/tæd/bær/vær/rær/næs/sær/sæt/sæd/nær/Næ/ræp/væg/ræn/Fæ/Ræ/jæl/'"/>
            <xsl:with-param name="continue" select="1"/>
            </xsl:call-template>

</xsl:element>
</xsl:template>



</xsl:stylesheet>