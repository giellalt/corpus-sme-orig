<?xml version="1.0"?>
<!-- Format query results for display -->
<xsl:stylesheet xmlns:i18n="http://apache.org/cocoon/i18n/2.1" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
  <xsl:output doctype-public="-//UIT//DTD Corpus V1.0//EN" doctype-system="http://giellatekno.uit.no/dtd/corpus.dtd" encoding="UTF-8" indent="yes" method="xml" version="1.0"/>
   

<!-- Add the metainformation manually -->
<xsl:variable name="filename" select="''"/>
  <xsl:variable name="title" select="'Boazodoallo o&#x111;&#x111;asat'"/>
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
  <xsl:variable name="publisher" select="'Reindriftsforvaltningen'"/>
  <xsl:variable name="publChannel" select="''"/>
  <xsl:variable name="year" select="'2005'"/>
  <xsl:variable name="ISBN" select="''"/>
  <xsl:variable name="ISSN" select="''"/>
  <xsl:variable name="place" select="'http://www.reindrift.no/index.gan?id=632&amp;subid=0'"/>
  <xsl:variable name="genre" select="'facta'"/>
  <xsl:variable name="collection" select="''"/>
  <xsl:variable name="translator_fn" select="''"/>
  <xsl:variable name="translator_ln" select="''"/>
  <xsl:variable name="translator_gender" select="'unknown'"/>
  <xsl:variable name="translator_born" select="''"/>
  <xsl:variable name="translator_nat" select="''"/>
  <xsl:variable name="license_type" select="'free'"/>
  <xsl:variable name="sub_name" select="'B&#xF8;rre Gaup'"/>
  <xsl:variable name="sub_email" select="'borre.gaup@samediggi.no'"/>
  <xsl:variable name="wordcount" select="''"/>
  <xsl:variable name="metadata" select="'uncomplete'"/>
<xsl:variable name="template_version" select="' 1.9 '"/>
<xsl:variable name="current_version" select="'$Revision: 1.5 $'"/>


<!-- The main language of the document -->
<xsl:variable name="mainlang" select="'sme'"/>

<!-- Other languages, in case of multilingual document. -->
<!-- Select "1" for the variable multilingual -->
<!-- and for the languages present -->
<xsl:variable name="multilingual" select="''"/>
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

<xsl:include href="/usr/local/share/corp/bin/common.xsl"/>

</xsl:stylesheet>
