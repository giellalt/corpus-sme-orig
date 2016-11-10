<?xml version='1.0' encoding='UTF-8'?>
<!-- Format query results for display --><xsl:stylesheet xmlns:i18n="http://apache.org/cocoon/i18n/2.1" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">

<xsl:output method="xml" version="1.0" encoding="UTF-8" indent="yes" doctype-public="-//UIT//DTD Corpus V1.0//EN" doctype-system="http://giellatekno.uit.no/dtd/corpus.dtd"/>

<!-- Add the metainformation manually -->
<xsl:variable name="filename" select="''"/>
<xsl:variable name="title" select="''"/>
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
<xsl:variable name="publisher" select="''"/>
<xsl:variable name="publChannel" select="''"/>
<xsl:variable name="year" select="'2001'"/>
<xsl:variable name="ISBN" select="''"/>
<xsl:variable name="ISSN" select="''"/>
<xsl:variable name="place" select="''"/>
<xsl:variable name="genre" select="'admin'"/>
<xsl:variable name="collection" select="''"/>
<xsl:variable name="translator_fn" select="''"/>
<xsl:variable name="translator_ln" select="''"/>
<xsl:variable name="translator_gender" select="'unknown'"/>
<xsl:variable name="translator_born" select="''"/>
<xsl:variable name="translator_nat" select="''"/>
<xsl:variable name="license_type" select="'free'"/>
<xsl:variable name="sub_name" select="''"/>
<xsl:variable name="sub_email" select="''"/>
<xsl:variable name="wordcount" select="'37094'"/>
<xsl:variable name="conversion_status" select="'standard'"/>
<xsl:variable name="metadata" select="'uncomplete'"/>
<xsl:variable name="template_version" select="' 1.9 '"/>
<xsl:variable name="current_version" select="'$Revision: 1.15 $'"/>


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
	<parallel_text location="nou200120010035000dddpdfa.pdf" xml:lang="nob"/>
</xsl:variable>

<xsl:variable name="main_sizes" select="'11pt'"/>
<xsl:variable name="title_sizes" select="'11pt,13pt'"/>
<xsl:variable name="title_styles" select="'Bold'"/>
<xsl:variable name="columns" select="'2'"/>
<xsl:variable name="lower" select="'50'"/>
<xsl:variable name="excluded" select="'1,2,3,4,5,6,32'"/>




<xsl:variable name="bottom_margin" select="'all=7,3=56,10=10,15=12,16=10,25=10,45=12,51=12,60=12,61=10,66=13,68=16,69=10,71=12,72=10'"/>
<xsl:variable name="left_margin" select="all=7"/>
<xsl:variable name="top_margin" select="'all=8'"/>
<xsl:variable name="right_margin" select="all=7"/>
<xsl:variable name="inner_top_margin" select="'8=90,9=90,10=89,11=87,12=89,13=90,14=87,16=88,17=85,20=90,21=85,24=86,25=87,30=90,33=90,34=90,35=89,37=90,38=90,41=89,43=90,44=89,45=81,47=84,48=90,50=90,52=88,54=88,55=89,57=86,58=88,59=87,60=84,61=87,62=90,64=88,68=81,69=89,70=87,72=88,73=87'"/>
<xsl:variable name="inner_bottom_margin" select="'8=0,9=0,10=0,11=0,12=0,13=0,14=0,16=0,17=0,20=0,21=0,24=0,25=0,30=0,33=0,34=0,35=0,37=0,38=0,41=0,43=0,44=0,45=0,47=0,48=0,50=0,52=0,54=0,55=0,57=0,58=0,59=0,60=0,61=0,62=0,64=0,68=0,69=0,70=0,72=0,73=0'"/>
<xsl:variable name="inner_left_margin" select="'8=50,9=50,10=50,11=50,12=0,13=50,14=0,16=50,17=50,20=0,21=50,24=0,25=50,30=0,33=50,34=0,35=0,37=0,38=0,41=50,43=50,44=0,45=50,47=50,48=50,50=50,52=50,54=50,55=0,57=50,58=50,59=50,60=0,61=50,62=50,64=50,68=0,69=0,70=50,72=50,73=0'"/>
<xsl:variable name="inner_right_margin" select="'8=0,9=0,10=0,11=0,12=50,13=0,14=50,16=0,17=0,20=50,21=0,24=50,25=0,30=50,33=0,34=50,35=50,37=50,38=50,41=0,43=0,44=50,45=0,47=0,48=0,50=0,52=0,54=0,55=50,57=0,58=0,59=0,60=50,61=0,62=0,64=0,68=50,69=50,70=0,72=0,73=50'"/>
<xsl:variable name="skip_pages" select="'1,2,4-6,32'"/>
</xsl:stylesheet>