<?xml version='1.0' encoding='UTF-8'?>
<!-- Format query results for display --><xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:i18n="http://apache.org/cocoon/i18n/2.1" version="1.0">

    <xsl:output method="xml" version="1.0" encoding="UTF-8" indent="yes" doctype-public="-//UIT//DTD Corpus V1.0//EN" doctype-system="http://giellatekno.uit.no/dtd/corpus.dtd"/>

    <!-- Add the metainformation manually -->
    <!-- variable filename contains the original name of the file (from submitter)-->
    <xsl:variable name="filename" select="'http://samediggi.no/content/download/502/4726/version/1/file/S%C3%A1medikki+bu%C5%A1eahtta+%282009%29.pdf'"/>
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
    <parallel_text location="sametingets_budsjett_2009_.pdf" xml:lang="nob"/>
</xsl:variable>


    <!--
        For pdf documents, mark which pages should be ignored.
        The format for this is a comma separated list of page number that
        should be skipped. It is also possible to use ranges.
        Examples:
        1, 2, 3, 4
        1, 6-10, 15, 20, 25-30
    -->
    <xsl:variable name="skip_pages" select="'1-4,55,108'"/>

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
    <xsl:variable name="top_margin" select="'9=36,26=21,63=23,70=22,76=37,78=57,86=20,90=26,91=22,95=19,99=20'"/>
    <xsl:variable name="bottom_margin" select="'6=53,8=43,21=33,26=28,43=20,52=49,53=40,66=25,85=43,87=24,89=35'"/>

    <xsl:variable name="inner_right_margin" select="'5=0,6=0,12=0,15=0,18=0,19=0,20=0,24=0,25=0,26=0,27=0,28=0,29=0,31=0,33=0,34=0,35=0,36=0,37=0,38=0,39=0,40=0,42=0,45=0,46=0,47=0,49=0,50=0,56=0,58=0,60=0,61=0,63=0,65=0,66=0,67=0,68=0,70=0,71=0,72=0,73=0,74=0,79=0,80=0,81=0,82=0,83=0,84=0,86=0,87=0,91=0,92=0,93=0,96=0,98=0,99=0,101=0,102=0,104=0'"/>
    <xsl:variable name="inner_left_margin" select="'5=0,6=0,12=0,15=0,18=0,19=0,20=0,24=0,25=0,26=0,27=0,28=0,29=0,31=0,33=0,34=0,35=0,36=0,37=0,38=0,39=0,40=0,42=0,45=0,46=0,47=0,49=0,50=0,56=0,58=0,60=0,61=0,63=0,65=0,66=0,67=0,68=0,70=0,71=0,72=0,73=0,74=0,79=0,80=0,81=0,82=0,83=0,84=0,86=0,87=0,91=0,92=0,93=0,96=0,98=0,99=0,101=0,102=0,104=0'"/>
    <xsl:variable name="inner_top_margin" select="'5=12,6=11,12=46,15=40,18=28,19=36,20=59,24=40,25=11,26=31,27=68,28=61,29=53,31=16,33=25,34=63,35=58,36=45,37=22,38=11,39=11,40=35,42=62,45=24,46=63,47=79,49=49,50=69,56=40,58=24,60=11,61=71,63=42,65=31,66=26,67=30,68=19,70=28,71=19,72=37,73=57,74=14,79=54,80=45,81=42,82=46,83=52,84=53,86=49,87=30,91=66,92=54,93=11,96=28,98=49,99=46,101=43,102=10,104=42'"/>
    <xsl:variable name="inner_bottom_margin" select="'5=68,6=59,12=43,15=51,18=46,19=54,20=31,24=36,25=80,26=43,27=18,28=18,29=24,31=74,33=17,34=22,35=29,36=44,37=63,38=74,39=64,40=16,42=28,45=65,46=28,47=13,49=25,50=14,56=59,58=66,60=78,61=19,63=49,65=60,66=62,67=60,68=71,70=59,71=48,72=52,73=31,74=77,79=37,80=46,81=48,82=44,83=37,84=37,86=19,87=58,91=25,92=23,93=52,96=63,98=29,99=27,101=45,102=67,104=28'"/>

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
