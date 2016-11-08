<?xml version='1.0' encoding='UTF-8'?>
<!-- Format query results for display --><xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:i18n="http://apache.org/cocoon/i18n/2.1" version="1.0">

    <xsl:output method="xml" version="1.0" encoding="UTF-8" indent="yes" doctype-public="-//UIT//DTD Corpus V1.0//EN" doctype-system="http://giellatekno.uit.no/dtd/corpus.dtd"/>

    <!-- Add the metainformation manually -->
    <!-- variable filename contains the original name of the file (from submitter)-->
    <xsl:variable name="filename" select="'http://samediggi.no/content/download/6591/60885/version/1/file/Sametingets+budsjett+2015+-+Vedtatt+5.12.2014+-+nordsamisk.pdf'"/>
    <xsl:variable name="text_encoding" select="''"/>
    <xsl:variable name="title" select="'Sámedikki bušeahtta 2015'"/>
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
    <xsl:variable name="year" select="'2014'"/>
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
    <xsl:variable name="monolingual" select="'1'"/>

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
    <parallel_text location="sametingets_budsjett_2015_-_vedtatt_5.12.2014_-_norsk.pdf" xml:lang="nob"/>
</xsl:variable>


    <!--
        For pdf documents, mark which pages should be ignored.
        The format for this is a comma separated list of page number that
        should be skipped. It is also possible to use ranges.
        Examples:
        1, 2, 3, 4
        1, 6-10, 15, 20, 25-30
    -->
    <xsl:variable name="skip_pages" select="'1-8,68,123,124,144'"/>

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
    <xsl:variable name="top_margin" select="'21=20,26=22,30=29,33=46,40=34,45=27,46=38,50=60,52=22,54=22,58=37,63=35,64=26,67=26,71=47,76=24,90=26,97=28,109=25,115=23,117=23,118=27,120=42,126=21,130=29,132=23,134=26'"/>
    <xsl:variable name="bottom_margin" select="'14=90,19=29,27=60,46=39,54=33,59=72,82=26,89=30,92=35,95=33,122=71,128=45'"/>

    <xsl:variable name="inner_right_margin" select="'13=0,15=0,22=0,24=0,26=0,29=0,30=0,31=0,34=0,37=0,41=0,42=0,43=0,44=0,47=0,48=0,51=0,52=0,53=0,56=0,57=0,58=0,61=0,62=0,63=0,64=0,65=0,66=0,67=0,70=0,72=0,73=0,74=0,76=0,77=0,80=0,81=0,83=0,84=0,85=0,86=0,90=0,92=0,94=0,95=0,103=0,104=0,105=0,106=0,108=0,112=0,113=0,115=0,117=0,119=0,120=0,121=0,125=0,126=0,128=0,130=0,131=0,133=0,134=0,135=0,136=0,138=0,140=0,141=0,142=0'"/>
    <xsl:variable name="inner_left_margin" select="'13=0,15=0,22=0,24=0,26=0,29=0,30=0,31=0,34=0,37=0,41=0,42=0,43=0,44=0,47=0,48=0,51=0,52=0,53=0,56=0,57=0,58=0,61=0,62=0,63=0,64=0,65=0,66=0,67=0,70=0,72=0,73=0,74=0,76=0,77=0,80=0,81=0,83=0,84=0,85=0,86=0,90=0,92=0,94=0,95=0,103=0,104=0,105=0,106=0,108=0,112=0,113=0,115=0,117=0,119=0,120=0,121=0,125=0,126=0,128=0,130=0,131=0,133=0,134=0,135=0,136=0,138=0,140=0,141=0,142=0'"/>
    <xsl:variable name="inner_top_margin" select="'13=11,15=14,22=20,24=15,26=57,29=30,30=42,31=28,34=54,37=32,41=23,42=25,43=18,44=71,47=43,48=37,51=14,52=54,53=25,56=66,57=28,58=49,61=14,62=25,63=62,64=64,65=23,66=53,67=57,70=14,72=41,73=60,74=62,76=70,77=49,80=14,81=54,83=61,84=16,85=52,86=46,90=31,92=31,94=14,95=23,103=39,104=43,105=34,106=45,108=34,112=17,113=37,115=48,117=30,119=23,120=48,121=34,125=33,126=44,128=13,130=63,131=53,133=18,134=60,135=28,136=12,138=19,140=12,141=14,142=33'"/>
    <xsl:variable name="inner_bottom_margin" select="'13=59,15=50,22=68,24=67,26=29,29=55,30=34,31=17,34=31,37=45,41=39,42=57,43=45,44=14,47=38,48=30,51=47,52=32,53=45,56=19,57=59,58=37,61=63,62=61,63=24,64=22,65=61,66=32,67=29,70=71,72=44,73=23,74=22,76=16,77=34,80=70,81=27,83=25,84=69,85=31,86=31,90=53,92=55,94=72,95=56,103=45,104=44,105=33,106=40,108=52,112=65,113=50,115=36,117=52,119=61,120=12,121=53,125=48,126=41,128=73,130=16,131=26,133=34,134=25,135=23,136=37,138=59,140=68,141=48,142=38'"/>

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
