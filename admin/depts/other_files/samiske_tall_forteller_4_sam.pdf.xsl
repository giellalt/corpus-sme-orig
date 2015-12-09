<?xml version='1.0' encoding='UTF-8'?>
<!-- Format query results for display --><xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:i18n="http://apache.org/cocoon/i18n/2.1" version="1.0">

<xsl:output method="xml" version="1.0" encoding="UTF-8" indent="yes" doctype-public="-//UIT//DTD Corpus V1.0//EN" doctype-system="http://giellatekno.uit.no/dtd/corpus.dtd"/>

<!-- Add the metainformation manually -->
<!-- variable filename contains the original name of the file (from submitter)-->
<xsl:variable name="filename" select="'http://samediggi.no/Filnedlasting.aspx?MId1=3296&amp;FilId=3219'"/>
<xsl:variable name="text_encoding" select="'Sámi logut muitalit 4'"/>
<xsl:variable name="title" select="''"/>
<xsl:variable name="author1_fn" select="'Jon'"/>
<xsl:variable name="author1_ln" select="'Todal'"/>
<xsl:variable name="author1_gender" select="'m'"/>
<xsl:variable name="author1_nat" select="'NO'"/>
<xsl:variable name="author1_born" select="''"/>
<xsl:variable name="author2_fn" select="'Ole-Bjørn'"/>
<xsl:variable name="author2_ln" select="'Fossbakk'"/>
<xsl:variable name="author2_gender" select="'m'"/>
<xsl:variable name="author2_nat" select="'NO'"/>
<xsl:variable name="author2_born" select="''"/>
<xsl:variable name="author3_fn" select="'Ann Ragnhild'"/>
<xsl:variable name="author3_ln" select="'Broderstad'"/>
<xsl:variable name="author3_gender" select="'f'"/>
<xsl:variable name="author3_nat" select="'NO'"/>
<xsl:variable name="author3_born" select="''"/>
<xsl:variable name="author4_fn" select="'Else Grete'"/>
<xsl:variable name="author4_ln" select="'Broderstad'"/>
<xsl:variable name="author4_gender" select="'f'"/>
<xsl:variable name="author4_nat" select="'NO'"/>
<xsl:variable name="author4_born" select="''"/>
<xsl:variable name="publisher" select="''"/>
<xsl:variable name="publChannel" select="''"/>
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
<xsl:variable name="sub_name" select="'Børre Gaup'"/>
<xsl:variable name="sub_email" select="'borre.gaup@uit.no'"/>
<xsl:variable name="wordcount" select="'24092'"/>
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
	<parallel_text location="samiske_tall_forteller_4_no.pdf" xml:lang="nob"/>
</xsl:variable>

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

<xsl:variable name="bottom_margin" select="'all=11,2=52,20=16,22=50,24=35,25=44,28=16,29=37,30=16,32=16,36=24,37=16,40=16,41=22,43=60,46=14,47=16,49=16,50=22,52=16,53=16,55=22,56=15,58=16,59=16,60=20,61=16,62=16,63=72,64=20,66=62,68=17,69=15,70=16,72=14,73=14,75=78,76=54,85=16,86=15,87=17,88=18,89=20,90=20,93=16,95=16,97=62,98=58,101=18,102=16,110=48,111=26,112=18,115=14,119=18,128=54,131=78,134=43'"/>
<xsl:variable name="left_margin" select="all=7"/>
<xsl:variable name="top_margin" select="'all=7,23=40,24=38,31=56,33=38,34=66,35=38,53=48,54=46,55=44,56=42,57=40,58=42,65=54,72=64,74=52,92=64,93=58,99=48,108=68,124=66,125=44,140=48'"/>
<xsl:variable name="right_margin" select="all=7"/>
<xsl:variable name="inner_top_margin" select="'20=44,21=44,26=45,27=42,28=50,45=32,68=30,73=36,107=29,109=34,111=39,114=30,116=29,118=12,119=48,121=32,122=21,126=29,127=12,129=36,130=24,133=22,135=36,136=40,137=16,138=14,139=14'"/>
<xsl:variable name="inner_bottom_margin" select="'20=30,21=24,26=32,27=34,28=26,45=60,68=36,73=24,107=30,109=48,111=46,114=33,116=36,118=48,119=28,121=42,122=56,126=26,127=65,129=38,130=28,133=70,135=30,136=24,137=52,138=50,139=49'"/>
<xsl:variable name="inner_left_margin" select="''"/>
<xsl:variable name="inner_right_margin" select="''"/>
<xsl:variable name="skip_pages" select="'1,8-14,44,79-84,132,141'"/>
</xsl:stylesheet>
