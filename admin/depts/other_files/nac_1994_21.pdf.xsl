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


<!-- If monolingual is not set, the language is multilingual.
     Uncomment the languages you want to check for (or add new lines
     with the right ISO-639-3 language codes).

     If *no* languages are uncommented (and monolingual is not 1),
     then the document is checked for all supported languages.
-->
<xsl:variable name="mlangs">
	<language xml:lang="nob"/>
	<language xml:lang="eng"/>
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
	<parallel_text location="nou199419940021000dddpdfa.pdf" xml:lang="nob"/>
</xsl:variable>

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



<xsl:variable name="bottom_margin" select="'all=7,21=52,22=32,23=14,24=14,25=13,26=16,28=16,30=19,31=16,32=16,33=16,34=18,35=20,36=15,37=17,38=16,39=16,40=13,41=11,42=14,43=14,44=19,45=19,46=13,47=14,48=22,49=16,50=14,51=16,52=15,53=15,54=18,55=16,56=14,57=18,58=16,59=13,60=14,61=12,62=12,63=14,64=14,65=14,68=13,70=14,71=14,72=14,73=13,74=28,76=12,77=17,78=18,79=14,80=18,81=16,82=16,83=15,85=15,86=15,87=16,89=12,90=18,92=17,93=18,94=13,96=16,97=18,98=22,99=22,100=12,101=12,103=14,104=13,105=12,106=21,108=16,110=18,111=15,112=16,113=21,114=23,115=22,116=14,117=20,118=12,119=16,120=16,121=19,122=14,123=14,124=22,125=18,126=16,127=14,128=25,129=20,130=15,131=14,132=16,133=31,134=14,135=19,136=17,137=16,138=14,139=12,140=15,141=14,142=13,143=16,144=20'"/>
<xsl:variable name="left_margin" select="all=7"/>
<xsl:variable name="top_margin" select="'all=7,93=46'"/>
<xsl:variable name="right_margin" select="all=7"/>
<xsl:variable name="inner_top_margin" select="'69=18,87=24,88=40,91=50,94=58,95=14,138=53'"/>
<xsl:variable name="inner_bottom_margin" select="'69=70,87=47,88=21,91=34,94=22,95=68,138=27'"/>
<xsl:variable name="skip_pages" select="'1-20'"/>
</xsl:stylesheet>
