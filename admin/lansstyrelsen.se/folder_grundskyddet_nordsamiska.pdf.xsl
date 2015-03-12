<?xml version='1.0' encoding='UTF-8'?>
<!-- Format query results for display --><xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">

<xsl:import href="file:///home/kiwibird/.local/lib/python2.7/site-packages/CorpusTools-0.9.0a1-py2.7.egg/corpustools/xslt/common.xsl"/>

<xsl:output method="xml" version="1.0" encoding="UTF-8" indent="yes" doctype-public="-//UIT//DTD Corpus V1.0//EN" doctype-system="http://giellatekno.uit.no/dtd/corpus.dtd"/>



<!-- Add the metainformation manually -->
<!-- variable filename contains the original name of the file (from submitter)-->
<xsl:variable name="filename" select="'http://www.lansstyrelsen.se/stockholm/SiteCollectionDocuments/Sv/manniska-och-samhalle/nationella-minoriteter/Folder_grundskyddet_nordsamiska.pdf'"/>
<xsl:variable name="text_encoding" select="''"/>
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
<xsl:variable name="publChannel" select="''"/>
<xsl:variable name="year" select="''"/>
<xsl:variable name="ISBN" select="''"/>
<xsl:variable name="ISSN" select="''"/>
<xsl:variable name="place" select="''"/>
<xsl:variable name="genre" select="'admin'"/>
<xsl:variable name="collection" select="''"/>
<xsl:variable name="translated_from" select="'swe'"/>
<xsl:variable name="translator_fn" select="''"/>
<xsl:variable name="translator_ln" select="''"/>
<xsl:variable name="translator_gender" select="'unknown'"/>
<xsl:variable name="translator_born" select="''"/>
<xsl:variable name="translator_nat" select="''"/>
<!-- select license type: free, standard or other -->
<xsl:variable name="license_type" select="''"/>
<xsl:variable name="sub_name" select="'Kevin Brubeck Unhammer'"/>
<xsl:variable name="sub_email" select="'unhammer@fsfe.org'"/>
<xsl:variable name="wordcount" select="''"/>
<!-- Set this variable to 1 if the source for this doc is OCR -->
<!-- Those docs typically contain lots of orthographic errors and need special treatment -->
<xsl:variable name="ocr" select="''"/>
<xsl:variable name="metadata" select="'uncomplete'"/>
<xsl:variable name="template_version" select="'$Revision$'"/>
<xsl:variable name="current_version" select="'Revision'"/>
<!-- Free text field for notes -->
<xsl:variable name="note" select="''"/>

<!-- The main language of the document -->
<xsl:variable name="mainlang" select="'sme'"/>

<!-- In the case of a multilingual document, we may want to check for
     other languages. Set the variable monolingual to '1' to turn off
     language recognition (treating everything as mainlang) -->
<xsl:variable name="monolingual" select="''"/> 

<!-- If monolingual is not set, the language is multilingual.
     Uncomment the languages you want to check for (or add new lines
     with the right ISO-639-3 language codes).

     If *no* languages are uncommented (and monolingual is not 1),
     then the document is checked for all supported languages.
-->
<xsl:variable name="mlangs">
	<language xml:lang="swe"/>
	<language xml:lang="sme"/></xsl:variable>

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
	<parallel_text location="folder_grundskyddet_engelska.pdf" xml:lang="eng"/>
	<parallel_text location="folder_grundskyddet_finska.pdf" xml:lang="fin"/>
	<parallel_text location="folder_grundskyddet_sydsamiska.pdf" xml:lang="sma"/>
	<parallel_text location="folder_grundskyddet-lulesamiska.pdf" xml:lang="smj"/>
	<parallel_text location="folder_med_loggor_ny_strecket_cf.pdf" xml:lang="swe"/>
	<parallel_text xml:lang="fit" location="folder_grundskyddet_meankieli.pdf"/>
	<parallel_text xml:lang="rmn" location="folder_grundskyddet_romaniarli.pdf"/>
	<parallel_text xml:lang="rmy-rka" location="folder_grundskyddet_romanikelderash.pdf"/>
</xsl:variable>

<!-- For page oriented documents, mark which pages should be ignored -->
<xsl:variable name="skip_pages" select="''"/>
<!-- Text outside these margins will be ignored.
These are defaults, that are settable documentwise -->
<xsl:variable name="right_margin" select="'all=7'"/>
<xsl:variable name="left_margin" select="'all=7'"/>
<xsl:variable name="top_margin" select="'all=7'"/>
<xsl:variable name="bottom_margin" select="'all=7'"/>


<!-- Add all paragraphs that should have xml:lang=X           -->
<!-- Uncomment the following and add the paths, for example:  -->
<!-- <xsl:template match="/root/section[2]/paragraph[5] |
                      /root/section[3]/paragraph[2] ">        -->
<!--
<xsl:template match="//body/p[5]">
	<xsl:element name="p">
	<xsl:attribute name="xml:lang">
		<xsl:value-of select="$smelang"/>
	</xsl:attribute>
	<xsl:apply-templates/>
</xsl:element>
 </xsl:template>
-->

<!-- Change or remove problematic characters from the text.   -->
<!-- Specify the elements to match (here all p's within       -->
<!-- //body, that do contain text, but do NOT contain em and  -->
<!-- span elements), and specify the characters               -->
<!-- to be replaced and the replacements. If needed,          -->
<!-- copy this template and target several different elements,-->
<!-- but don't make several templates that match the same set -->
<!-- of elements - then only one of them will apply. Also try -->
<!-- to restrict the template to nodes that do not contain    -->
<!-- other markup, as such markup otherwise will be removed.  -->
<!--
<xsl:template match="p[parent::body][not(./em | ./span)][text()]">
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
            <xsl:with-param name="target" select="'str1/str2/str3/'"/>
            <xsl:with-param name="replacement" select="'rpl1/rpl2/rpl3/'"/>
            <xsl:with-param name="continue" select="0"/>
        </xsl:call-template>
    </xsl:element>
</xsl:template>
-->

</xsl:stylesheet>