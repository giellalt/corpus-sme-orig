<?xml version='1.0' encoding='UTF-8'?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:i18n="http://apache.org/cocoon/i18n/2.1" version="1.0">

<xsl:output method="xml" version="1.0" encoding="UTF-8" indent="yes" doctype-public="-//UIT//DTD Corpus V1.0//EN" doctype-system="http://giellatekno.uit.no/dtd/corpus.dtd"/>

<!-- Add the metainformation manually -->
<!-- variable filename contains the original name of the file (from submitter)-->
<xsl:variable name="filename" select="'http://www.regjeringen.no/upload/FAD/Vedlegg/SAMI/Samiske_tall_forteller_3_SAM.pdf'"/>
<xsl:variable name="title" select="''"/>
<xsl:variable name="author1_fn" select="''"/>
<xsl:variable name="author1_ln" select="''"/>
<xsl:variable name="author1_gender" select="'unknown'"/>
<xsl:variable name="author1_nat" select="''"/>
<xsl:variable name="author1_born" select="''"/>
<xsl:variable name="author2_fn" select="''"/>
<xsl:variable name="author2_ln" select="''"/>
<xsl:variable name="author2_gender" select="''"/>
<xsl:variable name="author2_nat" select="''"/>
<xsl:variable name="author2_born" select="''"/>
<xsl:variable name="author3_fn" select="''"/>
<xsl:variable name="author3_ln" select="''"/>
<xsl:variable name="author3_gender" select="''"/>
<xsl:variable name="author3_nat" select="''"/>
<xsl:variable name="author3_born" select="''"/>
<xsl:variable name="author4_fn" select="''"/>
<xsl:variable name="author4_ln" select="''"/>
<xsl:variable name="author4_gender" select="''"/>
<xsl:variable name="author4_nat" select="''"/>
<xsl:variable name="author4_born" select="''"/>
<xsl:variable name="publisher" select="''"/>
<xsl:variable name="publChannel" select="'http://regjeringen.no'"/>
<xsl:variable name="year" select="''"/>
<xsl:variable name="ISBN" select="''"/>
<xsl:variable name="ISSN" select="''"/>
<xsl:variable name="place" select="''"/>
<xsl:variable name="genre" select="'admin'"/>
<xsl:variable name="collection" select="''"/>
<xsl:variable name="translated_from" select="'nob'"/>
<xsl:variable name="translator_fn" select="''"/>
<xsl:variable name="translator_ln" select="''"/>
<xsl:variable name="translator_gender" select="'unknown'"/>
<xsl:variable name="translator_born" select="''"/>
<xsl:variable name="translator_nat" select="''"/>
<!-- select license type: free, standard or other -->
<xsl:variable name="license_type" select="'free'"/>
<xsl:variable name="sub_name" select="''"/>
<xsl:variable name="sub_email" select="'divvun@samediggi.no'"/>
<xsl:variable name="wordcount" select="''"/>
<xsl:variable name="conversion_status" select="'standard'"/>
<xsl:variable name="metadata" select="'uncomplete'"/>
<xsl:variable name="template_version" select="'$Revision$'"/>
<xsl:variable name="current_version" select="'Revision'"/>
<!-- Free text field for notes -->
<xsl:variable name="note" select="''"/>

<!-- The main language of the document -->
<xsl:variable name="mainlang" select="'sme'"/>

<!-- Other languages, in case of multilingual document. -->
<!-- Select "1" for the variable multilingual -->
<xsl:variable name="monolingual" select="''"/> <!-- checked for all the languages below. -->


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
	<parallel_text location="samiske_tall_forteller_3_no.pdf" xml:lang="nob"/>
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
               <xsl:with-param name="inputString" select="$text"/>
               <xsl:with-param name="target" select="'//'"/>
               <xsl:with-param name="replacement" select="'//'"/>
               <xsl:with-param name="continue" select="0"/>
            </xsl:call-template>
</xsl:element>
</xsl:template>

<xsl:variable name="bottom_margin" select="'all=8,23=12,28=42,35=22,38=12,40=50,48=24,50=18,51=24,52=64,54=87,59=36,61=52,63=78,65=20,67=83,71=65,73=80,75=32,78=56,79=18,84=22,85=51,89=45,92=32,94=66,95=22,96=81,99=24,106=37,112=74,115=72,116=54,118=87,124=87,125=67,127=42,142=82,143=64,159=66,161=76,163=30,164=80,168=79'"/>
<xsl:variable name="left_margin" select="''"/>
<xsl:variable name="top_margin" select="'24=53,25=50,28=42,30=51,32=52,36=12,41=40,55=44,56=44,65=46,69=23,79=44,80=41,82=59,85=32,88=52,90=40,97=44,117=46,120=56,122=67,123=60,126=44,129=50,130=46,131=50,132=52,135=61,137=45,139=45,140=53,141=48,147=48,153=76,155=74,165=60'"/>
<xsl:variable name="right_margin" select="''"/>
<xsl:variable name="inner_top_margin" select="'31=30,33=31,35=40,37=36,42=28,53=17,57=18,70=13,80=48,83=21,86=25,87=25,92=18,93=40,98=30,114=19,138=39,144=28,146=30,156=37,158=20,160=48,162=18,163=35'"/>
<xsl:variable name="inner_bottom_margin" select="'31=40,33=25,35=41,37=35,42=39,53=56,57=50,70=47,80=25,83=30,86=36,87=37,92=43,93=20,98=35,114=22,138=19,144=28,146=31,156=28,158=27,160=16,162=74,163=46'"/>
<xsl:variable name="inner_left_margin" select="''"/>
<xsl:variable name="inner_right_margin" select="''"/>
<xsl:variable name="skip_pages" select="'1-2,6-15,45,60,68,77,101-105,107-108,133,166-167,169'"/>
</xsl:stylesheet>