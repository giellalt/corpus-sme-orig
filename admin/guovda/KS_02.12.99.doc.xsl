<?xml version="1.0"?>
<!-- Format query results for display -->
<xsl:stylesheet xmlns:i18n="http://apache.org/cocoon/i18n/2.1" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">

<xsl:output method="xml" version="1.0" encoding="UTF-8" indent="yes" doctype-public="-//UIT//DTD Corpus V1.0//EN" doctype-system="http://giellatekno.uit.no/dtd/corpus.dtd"/>

<!-- Add the metainformation manually -->
<xsl:variable name="filename" select="''"/>
<xsl:variable name="title" select="''"/>
<xsl:variable name="author1_fn" select="'H&#xE6;tta'"/>
<xsl:variable name="author1_ln" select="'Maia'"/>
<xsl:variable name="author1_gender" select="'f'"/>
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
<xsl:variable name="translated_from" select="''"/>
<xsl:variable name="publisher" select="''"/>
<xsl:variable name="publChannel" select="''"/>
<xsl:variable name="year" select="'1999'"/>
<xsl:variable name="ISBN" select="''"/>
<xsl:variable name="ISSN" select="''"/>
<xsl:variable name="place" select="''"/>
<xsl:variable name="genre" select="''"/>
<xsl:variable name="collection" select="''"/>
<xsl:variable name="translator_fn" select="''"/>
<xsl:variable name="translator_ln" select="''"/>
<xsl:variable name="translator_gender" select="'unknown'"/>
<xsl:variable name="translator_born" select="''"/>
<xsl:variable name="translator_nat" select="''"/>
<xsl:variable name="license_type" select="'free'"/>
<xsl:variable name="sub_name" select="''"/>
<xsl:variable name="sub_email" select="''"/>
<xsl:variable name="wordcount" select="'5786'"/>
<xsl:variable name="metadata" select="'uncomplete'"/>
<xsl:variable name="template_version" select="' 1.9 '"/>
<xsl:variable name="current_version" select="'$Revision: 1.18 $'"/>


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

			<xsl:value-of select="translate($text,'&#x392;&#x3C5;&#x3BF;&#x3C4;&#x3C3;&#x3B7;&#x3BA;&#x3B1;&#x3BD;&#x3C4;&#x3C1;&#x3B3;&#x3B1;&#x3C3;&#x3BB;&#x21B5;&#x3A5;&#x3C6;&#x399;&#x2111;&#x3C6;&#x393;&#x2260;&#x201C;&#x3B2;&#x3A3;&#x3008;&#x3D6;&#x3C2;&#x3D5;&#x397;&#x39B;&#x3D1;&#x3C7;&#x3BC;&#x3B9;&#x3B4;&#x3B5;&#x39D;&#x3C0;&#x2211;&#x394;&#x39A;&#x39F;&#x3A4;&#x3A6;&#x39C;&#x2663;&#x3A1;&#x3C8;&#x3BA;','')"/>
</xsl:element>
</xsl:template>




</xsl:stylesheet>
