<?xml version='1.0' encoding='UTF-8'?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:i18n="http://apache.org/cocoon/i18n/2.1" version="1.0">

<xsl:output method="xml" version="1.0" encoding="UTF-8" indent="yes" doctype-public="-//UIT//DTD Corpus V1.0//EN" doctype-system="http://giellatekno.uit.no/dtd/corpus.dtd"/>

<!-- Add the metainformation manually -->
<!-- variable filename contains the original name of the file (from submitter)-->
<xsl:variable name="filename" select="'http://www.regjeringen.no/upload/kilde/000/nou/1993/0034/ddd/pdts/nou199319930034000dddpdts.pdf'"/>
<xsl:variable name="title" select="'Vuoigatvuohta Finnmárkku eatnamiidda ja čáziide ja daid hálddašeapmi'"/>
<xsl:variable name="author1_fn" select="'Tor'"/>
<xsl:variable name="author1_ln" select="'Falch'"/>
<xsl:variable name="author1_gender" select="'m'"/>
<xsl:variable name="author1_born" select="''"/>
<xsl:variable name="author1_nat" select="'nor'"/>
<xsl:variable name="author2_fn" select="'Jon'"/>
<xsl:variable name="author2_ln" select="'Gauslaa'"/>
<xsl:variable name="author2_gender" select="'m'"/>
<xsl:variable name="author2_born" select="''"/>
<xsl:variable name="author2_nat" select="'nor'"/>
<xsl:variable name="author3_fn" select="'Ingunn'"/>
<xsl:variable name="author3_ln" select="'Åsgård Bendiksen'"/>
<xsl:variable name="author3_gender" select="'f'"/>
<xsl:variable name="author3_born" select="''"/>
<xsl:variable name="author3_nat" select="'nor'"/>
<xsl:variable name="author4_fn" select="'Stein'"/>
<xsl:variable name="author4_ln" select="'Larsen'"/>
<xsl:variable name="author4_gender" select="'m'"/>
<xsl:variable name="author4_born" select="''"/>
<xsl:variable name="author4_nat" select="'nor'"/>
<xsl:variable name="publisher" select="'Justis- ja bolesdepartemeantta'"/>
<xsl:variable name="publChannel" select="''"/>
<xsl:variable name="year" select="'1993'"/>
<xsl:variable name="ISBN" select="''"/>
<xsl:variable name="ISSN" select="''"/>
<xsl:variable name="place" select="'Oslo'"/>
<xsl:variable name="genre" select="'laws'"/>
<xsl:variable name="collection" select="''"/>
<xsl:variable name="translated_from" select="'nob'"/>
<xsl:variable name="translator_fn" select="''"/>
<xsl:variable name="translator_ln" select="''"/>
<xsl:variable name="translator_gender" select="'unknown'"/>
<xsl:variable name="translator_born" select="''"/>
<xsl:variable name="translator_nat" select="''"/>
<!-- select license type: free, standard or other -->
<xsl:variable name="license_type" select="'free'"/>
<xsl:variable name="sub_name" select="'Trond Trosterud'"/>
<xsl:variable name="sub_email" select="'trond.trosterud@hum.uit.no'"/>
<xsl:variable name="wordcount" select="'332467'"/>
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
	<language xml:lang="eng"/>
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
	</xsl:variable>

<xsl:variable name="main_sizes" select="'12pt,13pt,14pt'"/>
<xsl:variable name="title_sizes" select="'14pt,16pt,18pt'"/>
<xsl:variable name="title_styles" select="'Bold'"/>

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
            <xsl:with-param name="target" select="'cuoñománu/??/uo?o/lá?k/Mu?ka/ske?ke/A?kke/E?lánddas/má?/jo?at/bá?ko/juo?a/Á?ko/'"/> <!--'"/>-->
            <xsl:with-param name="replacement" select="'cuoŋománu/ŋŋ/uoŋo/láŋk/Muŋka/skeŋke/Aŋkke/Eŋlánddas/máŋ/joŋat/báŋko/juoŋa/Áŋko/'"/> <!--'"/>-->
            <xsl:with-param name="continue" select="0"/>
        </xsl:call-template>
    </xsl:element>
</xsl:template>

<xsl:variable name="bottom_margin" select="all=7"/>
<xsl:variable name="left_margin" select="all=7"/>
<xsl:variable name="top_margin" select="all=7"/>
<xsl:variable name="right_margin" select="all=7"/>
</xsl:stylesheet>