<?xml version='1.0' encoding='UTF-8'?>
<!-- Format query results for display --><xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:i18n="http://apache.org/cocoon/i18n/2.1" version="1.0">

    <xsl:output method="xml" version="1.0" encoding="UTF-8" indent="yes" doctype-public="-//UIT//DTD Corpus V1.0//EN" doctype-system="http://giellatekno.uit.no/dtd/corpus.dtd"/>

    <!-- Add the metainformation manually -->
    <!-- variable filename contains the original name of the file (from submitter)-->
    <xsl:variable name="filename" select="'http://samediggi.no/content/download/510/4758/version/1/file/S%C3%A1medikki+bu%C5%A1eahtta+%282011%29.pdf'"/>
    <xsl:variable name="text_encoding" select="''"/>
    <xsl:variable name="title" select="''"/>
    <xsl:variable name="author1_fn" select="''"/>
    <xsl:variable name="author1_ln" select="''"/>
    <xsl:variable name="author1_gender" select="'unknown'"/>
    <xsl:variable name="author1_nat" select="''"/>
    <xsl:variable name="author1_born" select="''"/>
    <xsl:variable name="author2_fn" select="''"/>
    <xsl:variable name="author2_ln" select="''"/>
    <xsl:variable name="author2_gender" select="'unknown'"/>
    <xsl:variable name="author2_nat" select="''"/>
    <xsl:variable name="author2_born" select="''"/>
    <xsl:variable name="author3_fn" select="''"/>
    <xsl:variable name="author3_ln" select="''"/>
    <xsl:variable name="author3_gender" select="'unknown'"/>
    <xsl:variable name="author3_nat" select="''"/>
    <xsl:variable name="author3_born" select="''"/>
    <xsl:variable name="author4_fn" select="''"/>
    <xsl:variable name="author4_ln" select="''"/>
    <xsl:variable name="author4_gender" select="'unknown'"/>
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
    <xsl:variable name="translated_from" select="''"/>
    <xsl:variable name="translator_fn" select="''"/>
    <xsl:variable name="translator_ln" select="''"/>
    <xsl:variable name="translator_gender" select="'unknown'"/>
    <xsl:variable name="translator_born" select="''"/>
    <xsl:variable name="translator_nat" select="''"/>
    <!-- select license type: free, standard or other -->
    <xsl:variable name="license_type" select="''"/>
    <xsl:variable name="sub_name" select="''"/>
    <xsl:variable name="sub_email" select="''"/>
    <xsl:variable name="wordcount" select="''"/>
    <!-- Set this variable to 1 if the source for this doc is OCR -->
    <!-- Those docs typically contain lots of orthographic errors and need special treatment -->
    <xsl:variable name="conversion_status" select="'standard'"/>
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

    <!-- If monolingual is not set, the document is multilingual.
         Uncomment the languages you want to check for (or add new lines
         with the right ISO-639-3 language codes).

         If *no* languages are uncommented (and monolingual is not 1),
         then the document is checked for all supported languages.
         -->
    <xsl:variable name="mlangs">
        <!-- <language xml:lang="dan"/> -->
        <!-- <language xml:lang="eng"/> -->
        <!-- <language xml:lang="fin"/> -->
        <!-- <language xml:lang="fit"/> -->
        <!-- <language xml:lang="fkv"/> -->
        <!-- <language xml:lang="ger"/> -->
        <!-- <language xml:lang="isl"/> -->
        <!-- <language xml:lang="kal"/> -->
        <!-- <language xml:lang="kpv"/> -->
        <!-- <language xml:lang="nno"/> -->
        <!-- <language xml:lang="nob"/> -->
        <!-- <language xml:lang="rus"/> -->
        <!-- <language xml:lang="sma"/> -->
        <!-- <language xml:lang="sme"/> -->
        <!-- <language xml:lang="smj"/> -->
        <!-- <language xml:lang="smn"/> -->
        <!-- <language xml:lang="sms"/> -->
        <!-- <language xml:lang="swe"/> -->
    </xsl:variable>

    <!-- If the document has parallel texts, uncomment the right languages
         (or add new lines with the right ISO-639-3 language codes) and
         add the filename of the parallel files to the 'location'
         variables.

         Don't write the full directory; we expect the file to be in the
         same directory as this file, with only the language code and
         filename changed.
        -->
    <xsl:variable name="parallels">
        <!-- <parallel_text xml:lang="dan" location=""/> -->
        <!-- <parallel_text xml:lang="eng" location=""/> -->
        <!-- <parallel_text xml:lang="fin" location=""/> -->
        <!-- <parallel_text xml:lang="fit" location=""/> -->
        <!-- <parallel_text xml:lang="fkv" location=""/> -->
        <!-- <parallel_text xml:lang="ger" location=""/> -->
        <!-- <parallel_text xml:lang="isl" location=""/> -->
        <!-- <parallel_text xml:lang="kal" location=""/> -->
        <!-- <parallel_text xml:lang="kpv" location=""/> -->
        <!-- <parallel_text xml:lang="nno" location=""/> -->
        <!-- <parallel_text xml:lang="nob" location=""/> -->
        <!-- <parallel_text xml:lang="rus" location=""/> -->
        <!-- <parallel_text xml:lang="sma" location=""/> -->
        <!-- <parallel_text xml:lang="sme" location=""/> -->
        <!-- <parallel_text xml:lang="smj" location=""/> -->
        <!-- <parallel_text xml:lang="smn" location=""/> -->
        <!-- <parallel_text xml:lang="sms" location=""/> -->
        <!-- <parallel_text xml:lang="swe" location=""/> -->
    <parallel_text location="sametingets_budsjett_2011_.pdf" xml:lang="nob"/>
</xsl:variable>


    <!--
        For pdf documents, mark which pages should be ignored.
        The format for this is a comma separated list of page number that
        should be skipped. It is also possible to use ranges.
        Examples:
        1, 2, 3, 4
        1, 6-10, 15, 20, 25-30
    -->
    <xsl:variable name="skip_pages" select="'1-6,71,133'"/>

    <!--
        Text outside these margins will be ignored.

        The format for margin line is:
        [all|odd|even|pagenumber]=integer

        Margin lines *must* contain the keywords all, even, odd or a page
        number followed by a = sign and an integer. Pages with the same margin
        may be separated with ;.

        The integer must be between 0 and 100.

        If there are several values, they are divided by commas.
        Setting different margins for odd and even pages is done by writing
        e.g. odd=8, even=15
        It is also possible to set margins for particular pages:
        8=8, 10=12
        It is also possible to set margins for odd and even pages and
        exceptions from those rules on particular pages.

        Examples on how the select part could look:
        odd=5, even=8, 8=15, 11=3
        all=9, 8=12
        1;3;8=20, 4;5;7=10
    -->
    <xsl:variable name="right_margin" select="''"/>
    <xsl:variable name="left_margin" select="''"/>
    <xsl:variable name="top_margin" select="'10=34,13=23,33=30,42=53,69=21,72=22,92=20,106=19,114=66,115=19,116=45,119=20,123=24'"/>
    <xsl:variable name="bottom_margin" select="'9=46,12=68,30=30,32=57,33=25,35=36,41=29,70=50,105=47,113=32,118=63,120=18,121=19'"/>

    <xsl:variable name="inner_right_margin" select="'8=0,9=0,17=0,20=0,24=0,25=0,27=0,30=0,31=0,34=0,38=0,43=0,45=0,46=0,47=0,48=0,49=0,51=0,54=0,56=0,58=0,60=0,62=0,63=0,65=0,66=0,68=0,69=0,74=0,76=0,79=0,83=0,84=0,85=0,87=0,91=0,92=0,93=0,95=0,98=0,101=0,102=0,103=0,104=0,107=0,108=0,109=0,111=0,112=0,115=0,116=0,121=0,122=0,123=0,124=0,126=0,127=0'"/>
    <xsl:variable name="inner_left_margin" select="'8=0,9=0,17=0,20=0,24=0,25=0,27=0,30=0,31=0,34=0,38=0,43=0,45=0,46=0,47=0,48=0,49=0,51=0,54=0,56=0,58=0,60=0,62=0,63=0,65=0,66=0,68=0,69=0,74=0,76=0,79=0,83=0,84=0,85=0,87=0,91=0,92=0,93=0,95=0,98=0,101=0,102=0,103=0,104=0,107=0,108=0,109=0,111=0,112=0,115=0,116=0,121=0,122=0,123=0,124=0,126=0,127=0'"/>
    <xsl:variable name="inner_top_margin" select="'8=11,9=14,17=15,20=65,24=48,25=59,27=11,30=24,31=37,34=48,38=43,43=55,45=11,46=27,47=31,48=37,49=43,51=11,54=39,56=23,58=15,60=26,62=11,63=70,65=10,66=49,68=53,69=24,74=26,76=57,79=19,83=32,84=39,85=20,87=18,91=19,92=33,93=54,95=45,98=42,101=11,102=10,103=46,104=67,107=40,108=52,109=79,111=18,112=35,115=34,116=66,121=17,122=53,123=41,124=24,126=22,127=42'"/>
    <xsl:variable name="inner_bottom_margin" select="'8=67,9=53,17=73,20=23,24=27,25=30,27=64,30=51,31=50,34=32,38=48,43=32,45=76,46=63,47=55,48=46,49=40,51=47,54=50,56=66,58=74,60=62,62=80,63=21,65=80,66=34,68=45,69=48,74=63,76=32,79=47,83=59,84=14,85=31,87=73,91=72,92=57,93=37,95=20,98=20,101=78,102=67,103=17,104=22,107=51,108=38,109=12,111=73,112=55,115=25,116=22,121=59,122=19,123=19,124=27,126=64,127=35'"/>

    <!-- Add all paragraphs that should have xml:lang=X           -->
    <!-- Uncomment the following and add the paths, for example:  -->
    <!-- <xsl:template match="/root/section[2]/paragraph[5] |
                        /root/section[3]/paragraph[2] ">        -->
    <!--
    <xsl:template match="//body/p[5]">
            <xsl:element name="p">
            <xsl:attribute name="xml:lang">sme</xsl:attribute>
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
