<?xml version='1.0' encoding='UTF-8'?>
<!-- Format query results for display --><xsl:stylesheet xmlns:i18n="http://apache.org/cocoon/i18n/2.1" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
  <xsl:output doctype-public="-//UIT//DTD Corpus V1.0//EN" doctype-system="http://giellatekno.uit.no/dtd/corpus.dtd" encoding="UTF-8" indent="yes" method="xml" version="1.0"/>
  <!-- Add the metainformation manually -->
  <xsl:variable name="filename" select="'RAPPORT_00.doc'"/>
  <xsl:variable name="title" select="'Rapport 2000'"/>
  <xsl:variable name="author1_fn" select="'inger Marie'"/>
  <xsl:variable name="author1_ln" select="'Åsli'"/>
  <xsl:variable name="author1_gender" select="'f'"/>
  <xsl:variable name="author1_born" select="'1964'"/>
  <xsl:variable name="author1_nat" select="'nor'"/>
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
  <xsl:variable name="publisher" select="'Kåfjord kommune'"/>
  <xsl:variable name="publChannel" select="''"/>
  <xsl:variable name="year" select="'2000'"/>
  <xsl:variable name="ISBN" select="''"/>
  <xsl:variable name="ISSN" select="''"/>
  <xsl:variable name="place" select="'Kåfjord kommune'"/>
  <xsl:variable name="genre" select="'facta'"/>
  <xsl:variable name="collection" select="''"/>
  <xsl:variable name="translator_fn" select="'Lene'"/>
  <xsl:variable name="translator_ln" select="'Antonsen'"/>
  <xsl:variable name="translator_gender" select="'unknown'"/>
  <xsl:variable name="translator_born" select="''"/>
  <xsl:variable name="translator_nat" select="''"/>
  <xsl:variable name="license_type" select="'free'"/>
  <xsl:variable name="sub_name" select="'Inger Marie Åsli'"/>
  <xsl:variable name="sub_email" select="'inger.marie.asli@kafjord.kommune.no'"/>
  <xsl:variable name="wordcount" select="'5439'"/>
  <xsl:variable name="conversion_status" select="'standard'"/>
  <xsl:variable name="metadata" select="'uncomplete'"/>
  <xsl:variable name="template_version" select="' 1.9 '"/>
  <xsl:variable name="current_version" select="'$Revision: 1.1 $'"/>
<!-- Free text field for notes -->
<xsl:variable name="note" select="''"/>

  <!-- The main language of the document -->
  <xsl:variable name="mainlang" select="'nob'"/>
  <!-- Other languages, in case of multilingual document. -->
<!-- Select "1" for the variable multilingual -->
<!-- and for the languages present -->
<xsl:variable name="monolingual" select="''"/> <!-- checked for all the languages below. -->
  

<!-- If monolingual is not set, the language is multilingual.
     Uncomment the languages you want to check for (or add new lines
     with the right ISO-639-3 language codes).

     If *no* languages are uncommented (and monolingual is not 1),
     then the document is checked for all supported languages.
-->
<xsl:variable name="mlangs">
	<language xml:lang="sme"/>
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
               <xsl:with-param name="target" select="'Riđđu/'"/>
               <xsl:with-param name="replacement" select="'Ri˜˜u/'"/>
                <xsl:with-param name="continue" select="0"/>
            </xsl:call-template>
</xsl:element>
</xsl:template>

</xsl:stylesheet>