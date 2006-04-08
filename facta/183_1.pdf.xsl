<?xml version="1.0" encoding="UTF-8"?>

<!-- Format query results for display -->
<xsl:stylesheet version="1.0" xmlns:i18n="http://apache.org/cocoon/i18n/2.1" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
  <xsl:output doctype-public="-//UIT//DTD Corpus V1.0//EN" doctype-system="http://giellatekno.uit.no/dtd/corpus.dtd" encoding="UTF-8" indent="yes" method="xml" version="1.0"/>
   

<!-- Add the metainformation manually -->
  <xsl:variable name="title" select="'Boazodoallo ođđasat'"/>
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
  <xsl:variable name="year" select="'2003'"/>
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
  <xsl:variable name="sub_name" select="'Børre Gaup'"/>
  <xsl:variable name="sub_email" select="'borre.gaup@samediggi.no'"/>
  <xsl:variable name="wordcount" select="''"/>
  <xsl:variable name="metadata" select="'uncomplete'"/>
  <xsl:variable name="mainlang" select="'sme'"/>
  

<!-- These id:s are for identifying paragraph/section languages -->
<!-- Example: <xsl:variable name="id" select="'1234' and '5678'"/> -->
  <xsl:variable name="smeid" select="''"/>
  <xsl:variable name="smjid" select="''"/>
  <xsl:variable name="smaid" select="''"/>
  <xsl:variable name="nobid" select="''"/>
  <xsl:variable name="nnoid" select="''"/>
  <xsl:variable name="sweid" select="''"/>
  <xsl:variable name="finid" select="''"/>
  <xsl:include href="/usr/local/share/corp/bin/common.xsl"/>
  

<!-- Tag the specified elements with the specified language: -->
<!-- Change the language to what is needed. -->
<!-- The numbers in the expression [@id = '1234'] are generated automatically,
     see the output from conversion to xml for the correct number for the
     paragraphs to change. Then add that number below, and rerun the  script. -->
  <xsl:template match="id('$smeid')">
    
    <!-- Add the language specified below to the sections specified above: -->
    <xsl:attribute name="xml:lang">
      <xsl:value-of select="$smelang"/>
    </xsl:attribute>
    <xsl:apply-templates/>
  </xsl:template>
  <xsl:template match="id('$smjid')">
    
    <!-- Add the language specified below to the sections specified above: -->
    <xsl:attribute name="xml:lang">
      <xsl:value-of select="$smjlang"/>
    </xsl:attribute>
    <xsl:apply-templates/>
  </xsl:template>
  <xsl:template match="id('$smaid')">
    
    <!-- Add the language specified below to the sections specified above: -->
    <xsl:attribute name="xml:lang">
      <xsl:value-of select="$smalang"/>
    </xsl:attribute>
    <xsl:apply-templates/>
  </xsl:template>
  <xsl:template match="id('$nobid')">
    
    <!-- Add the language specified below to the sections specified above: -->
    <xsl:attribute name="xml:lang">
      <xsl:value-of select="$noblang"/>
    </xsl:attribute>
    <xsl:apply-templates/>
  </xsl:template>
  <xsl:template match="id('$nnoid')">
    
    <!-- Add the language specified below to the sections specified above: -->
    <xsl:attribute name="xml:lang">
      <xsl:value-of select="$nnolang"/>
    </xsl:attribute>
    <xsl:apply-templates/>
  </xsl:template>
  <xsl:template match="id('$sweid')">
    
    <!-- Add the language specified below to the sections specified above: -->
    <xsl:attribute name="xml:lang">
      <xsl:value-of select="$swelang"/>
    </xsl:attribute>
    <xsl:apply-templates/>
  </xsl:template>
  <xsl:template match="id('$finid')">
    
    <!-- Add the language specified below to the sections specified above: -->
    <xsl:attribute name="xml:lang">
      <xsl:value-of select="$finlang"/>
    </xsl:attribute>
    <xsl:apply-templates/>
  </xsl:template>
</xsl:stylesheet>
