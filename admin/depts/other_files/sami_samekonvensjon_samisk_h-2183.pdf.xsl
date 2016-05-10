<?xml version='1.0' encoding='UTF-8'?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:i18n="http://apache.org/cocoon/i18n/2.1" version="1.0">

<xsl:output method="xml" version="1.0" encoding="UTF-8" indent="yes" doctype-public="-//UIT//DTD Corpus V1.0//EN" doctype-system="http://giellatekno.uit.no/dtd/corpus.dtd"/>

<!-- Add the metainformation manually -->
<!-- variable filename contains the original name of the file (from submitter)-->
<xsl:variable name="filename" select="'http://www.regjeringen.no/Upload/AID/temadokumenter/sami/sami_samekonvensjon_samisk_H-2183.pdf'"/>
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
<xsl:variable name="translated_from" select="''"/>
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
	<language xml:lang="eng"/>
	<language xml:lang="nob"/>
	<language xml:lang="sme"/>
	<language xml:lang="swe"/>
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
	<parallel_text location="sami_samskonvensjonen_finsk_h-2183_f.pdf" xml:lang="fin"/>
	<parallel_text location="sami_samekonvensjon_norsk.pdf" xml:lang="nob"/>
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
               <xsl:with-param name="target" select="'„/“/ð/'"/>
               <xsl:with-param name="replacement" select="'«/»/đ/'"/>
                <xsl:with-param name="continue" select="0"/>
            </xsl:call-template>
</xsl:element>
</xsl:template>


<xsl:variable name="bottom_margin" select="'all=7,4=50,121=12,126=14,127=19,128=14,131=16,133=12,134=24,135=20,136=14,137=16,138=18,139=14,140=19,143=16,144=14,145=16,146=16,147=15,148=12,149=15,151=18,152=20,153=20,154=26,155=19,156=13,160=16,161=18,162=38,163=14,164=20,165=18,166=16,167=14,198=18,231=20,274=28,275=32,276=48,297=16,298=36,299=14,300=16,302=11,303=16,304=12,305=22,306=16,307=32,308=18,309=17,310=20,311=13,312=18,313=13,314=33,315=27,316=20,317=14,318=17,319=34,320=27,321=16,322=22,323=13,325=14,327=18,328=17,329=18,330=20,331=14,332=18,333=16,334=16,336=15,337=12,338=16,339=14,340=12,341=30,342=16,343=12,344=16,345=22,346=16'"/>
<xsl:variable name="left_margin" select="all=7"/>
<xsl:variable name="top_margin" select="all=7"/>
<xsl:variable name="right_margin" select="all=7"/>
<xsl:variable name="inner_top_margin" select="''"/>
<xsl:variable name="inner_bottom_margin" select="''"/>
<xsl:variable name="inner_left_margin" select="''"/>
<xsl:variable name="inner_right_margin" select="''"/>
<xsl:variable name="skip_pages" select="'1-3,5-9,119,120,272,273,290-293,350-362'"/>
</xsl:stylesheet>