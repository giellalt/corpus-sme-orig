<?xml version='1.0' encoding='UTF-8'?>
<!-- Format query results for display --><xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:i18n="http://apache.org/cocoon/i18n/2.1" version="1.0">

    <xsl:output method="xml" version="1.0" encoding="UTF-8" indent="yes" doctype-public="-//UIT//DTD Corpus V1.0//EN" doctype-system="http://giellatekno.uit.no/dtd/corpus.dtd"/>

    <!-- Add the metainformation manually -->

    <!--
        The original name of the file that comes from the
        submitter of the document or the URL where the document has been fetched.
        These days it is automatically added by the add_files_to_corpus tool.
        https://giellalt.uit.no/ling/CorpusTools.html#add_files_to_corpus
    -->
    <xsl:variable name="filename" select="'http://samediggi.no/content/download/8952/77671/version/4/file/S%C3%A1medikki+2016+bu%C5%A1eahtta+-+Mearriduvvon+juovlam%C3%A1nu+3.+b.+2015.pdf'"/>
    <xsl:variable name="text_encoding" select="''"/>
    <xsl:variable name="title" select="'Sámedikki 2016 bušeahtta'"/>
    <!--
        Information of the first author: first name, last name,
        date or year of birth, nationality.
    -->
    <xsl:variable name="author1_fn" select="''"/>
    <xsl:variable name="author1_ln" select="''"/>
    <!-- m, f or unknown -->
    <xsl:variable name="author1_gender" select="'unknown'"/>
    <!--
        The country where the author is from. It should be written as
        an ISO_3166-1 code.
        https://no.wikipedia.org/wiki/ISO_3166-1
    -->
    <xsl:variable name="author1_nat" select="''"/>
    <!-- Either YYYY or YYYYMMDD. Examples: 1954 or 19451224 -->
    <xsl:variable name="author1_born" select="''"/>
    <!--
        Information of the second author: first name, last name,
        date or year of birth, nationality.
    -->
    <xsl:variable name="author2_fn" select="''"/>
    <xsl:variable name="author2_ln" select="''"/>
    <xsl:variable name="author2_gender" select="'unknown'"/>
    <xsl:variable name="author2_nat" select="''"/>
    <xsl:variable name="author2_born" select="''"/>

    <!--
        Information of the third author: first name, last name,
        date or year of birth, nationality.
    -->
    <xsl:variable name="author3_fn" select="''"/>
    <xsl:variable name="author3_ln" select="''"/>
    <xsl:variable name="author3_gender" select="'unknown'"/>
    <xsl:variable name="author3_nat" select="''"/>
    <xsl:variable name="author3_born" select="''"/>

    <!--
        Information of the fourth author: first name, last name,
        date or year of birth, nationality.
    -->
    <xsl:variable name="author4_fn" select="''"/>
    <xsl:variable name="author4_ln" select="''"/>
    <xsl:variable name="author4_gender" select="'unknown'"/>
    <xsl:variable name="author4_nat" select="''"/>
    <xsl:variable name="author4_born" select="''"/>

    <!--
        Information of the fourth author: first name, last name,
        date or year of birth, nationality.
    -->
    <xsl:variable name="author5_fn" select="''"/>
    <xsl:variable name="author5_ln" select="''"/>
    <xsl:variable name="author5_gender" select="'unknown'"/>
    <xsl:variable name="author5_nat" select="''"/>
    <xsl:variable name="author5_born" select="''"/>

    <xsl:variable name="publisher" select="''"/>
    <!-- The values are either: published or unpublished -->
    <xsl:variable name="publChannel" select="''"/>
    <!-- Publication year -->
    <xsl:variable name="year" select="'2015'"/>
    <xsl:variable name="ISBN" select="''"/>
    <xsl:variable name="ISSN" select="''"/>
    <xsl:variable name="place" select="''"/>

    <!-- Automatically filled in by CorpusTools -->
    <xsl:variable name="genre" select="'admin'"/>

    <xsl:variable name="collection" select="''"/>

    <!-- This variable indicates orthography. If the text is written in the
         current (today's) orthography, the value may be left empty ("''")
         or marked "'contemoprary'"). Orthography names are written without capital 
         letters, the command "ccat -l sme -o names" (etc.) will give the available 
         orthograpies. Example names: bergslandruong, friis, itkonen, leem, ...
    -->
     <xsl:variable name="orthography" select="''"/> 
    

    <!-- Free form tags to describe the document -->
    <xsl:variable name="tags">
        <!-- <tag>example</tag> -->
    </xsl:variable>
    <!--
        Three letter language code.
        https://no.wikipedia.org/wiki/Liste_over_ISO_639-1-koder
    -->
    <xsl:variable name="translated_from" select="''"/>
    <!-- Translator variables have the same format as the author ones -->
    <xsl:variable name="translator_fn" select="''"/>
    <xsl:variable name="translator_ln" select="''"/>
    <xsl:variable name="translator_gender" select="'unknown'"/>
    <xsl:variable name="translator_born" select="''"/>
    <xsl:variable name="translator_nat" select="'NO'"/>
    <!-- select license type: free, standard or other -->
    <xsl:variable name="license_type" select="'free'"/>
    <!-- e.g. Sámediggi journal number -->
    <xsl:variable name="contract_id" select="''"/>
    <!-- The name and email of the submitter -->
    <xsl:variable name="sub_name" select="''"/>
    <xsl:variable name="sub_email" select="''"/>
    <!-- Keep empty, this is automatically filled in by CorpusTools -->
    <xsl:variable name="wordcount" select="''"/>
    <!-- This variable can have the following values:
        * ocr:          ocr'ed document, should usually not be converted
        * goldstandard: part of the goldstandard corpus, should not be converted
        * correct:      a goldstandard document containing corrected typos,
        * image:        documents consisting of images, should be possible to
                        ocr, then do conversion on it
        * standard:     a usual doc, meant to be used as part of the standard corpus
        * unsupported:  document that cannot be converted by our conversion tools
    -->
    <xsl:variable name="conversion_status" select="'standard'"/>
    <!-- Valid values are complete and uncomplete -->
    <xsl:variable name="metadata" select="'uncomplete'"/>
    <!-- Automatically filled in by CorpusTools -->
    <xsl:variable name="template_version" select="'$Revision$'"/>
    <!-- Automatically filled in by CorpusTools -->
    <xsl:variable name="current_version" select="'Revision'"/>
    <!-- Free text field for notes -->
    <xsl:variable name="note" select="''"/>

    <!-- Automatically filled in by CorpusTools -->
    <xsl:variable name="mainlang" select="'sme'"/>

    <!--
        In the case of a multilingual document, we may want to check for
        other languages. Set the variable monolingual to '1' to turn off
        language recognition (treating everything as mainlang)
    -->
    <xsl:variable name="monolingual" select="'1'"/>

    <!--
        If monolingual is not set, the document is multilingual.
        Uncomment the languages you want to check for (or add new lines
        with the right ISO-639-3 language codes).

        If *no* languages are uncommented (and monolingual is not 1),
        then the document is checked for all supported languages.
    -->
    <xsl:variable name="mlangs">
        <!-- <language xml:lang="dan"/> -->
    </xsl:variable>

    <!--
        This is automatically added by add_files_to_corpus if a parallel file
        is given on the command line when a document is added to the corpus.

        If manually correcting these values:
        If the document has parallel texts, uncomment the correct languages
        (or add new lines with the correct ISO-639-3 language codes) and
        add the filename of the parallel files to the 'location'
        variables.

        Don't write the full directory; we expect the file to be in the
        parallel directory of this file, with only the language code and
        filename changed.
    -->
    <xsl:variable name="parallels">
        <parallel_text xml:lang="dan" location=""/>
        <parallel_text xml:lang="eng" location=""/>
        <parallel_text xml:lang="fin" location=""/>
        <parallel_text xml:lang="fit" location=""/>
        <parallel_text xml:lang="fkv" location=""/>
        <parallel_text xml:lang="ger" location=""/>
        <parallel_text xml:lang="isl" location=""/>
        <parallel_text xml:lang="kal" location=""/>
        <parallel_text xml:lang="kpv" location=""/>
        <parallel_text xml:lang="nno" location=""/>
        <parallel_text xml:lang="nob" location="sametingets_budsjett_2016_-_vedtatt_3._desember_2015.pdf"/>
        <parallel_text xml:lang="rus" location=""/>
        <parallel_text xml:lang="sma" location=""/>
        <parallel_text xml:lang="sme" location=""/>
        <parallel_text xml:lang="smj" location=""/>
        <parallel_text xml:lang="smn" location=""/>
        <parallel_text xml:lang="sms" location=""/>
        <parallel_text xml:lang="swe" location=""/>
    </xsl:variable>

    <!--
        This variable is used for plain text files.

        Mark which lines should be ignored.
        The format for this is a comma separated list of line numbers
        that should be skipped. It is also possible to use ranges.
        Examples:
        1, 2, 3, 4
        1, 6-10, 15, 20, 25-30
    -->
    <xsl:variable name="skip_lines" select="''"/>

    <!--
        This variable is used for pdf files.

        Mark which pages should be ignored.
        The format for this is a comma separated list of page numbers
        that should be skipped. It is also possible to use ranges.
        Examples:
        1, 2, 3, 4
        1, 6-10, 15, 20, 25-30
    -->
    <xsl:variable name="skip_pages" select="'1-6,121,122,137-140'"/>

    <!--
        This variable is used for pdf files.

        Margin of a page in a pdf document expressed as a percentage of
        the page width and height.

        The default for all margins are 7

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
    <xsl:variable name="right_margin" select="'10=33,22=33,36=33,57=33,65=33,76=33,81=33,91=33,100=33,109=33'"/>
    <xsl:variable name="left_margin" select="''"/>
    <xsl:variable name="top_margin" select="'31=19,34=35,44=16,46=17,47=26,50=42,51=39,55=36,61=50,63=20,72=36,74=19,82=27,95=28,114=28,118=81,120=55'"/>
    <xsl:variable name="bottom_margin" select="'12=48,31=41,37=28,41=22,79=24,80=70,86=39,125=25'"/>

    <!--
        This variable is used for pdf files.

        Cut out a part from a page. Has the same format
        as *_margin above. For a given page, all four margins
        must be defined.
    -->
    <xsl:variable name="inner_right_margin" select="'8=0,13=0,19=0,21=0,23=0,24=0,27=0,29=0,30=0,32=0,34=0,40=0,41=0,42=0,43=0,44=0,45=0,46=0,47=0,48=0,52=0,53=0,54=0,56=0,58=0,59=0,60=0,62=0,63=0,66=0,67=0,68=0,69=0,72=0,73=0,74=0,75=0,77=0,79=0,82=0,88=0,89=0,90=0,92=0,93=0,95=0,97=0,98=0,101=0,103=0,105=0,106=0,107=0,110=0,111=0,114=0,115=0,116=0,117=0,119=0,123=0,124=0,125=0,127=0,128=0,130=0,132=0,134=0,135=0,136=0'"/>
    <xsl:variable name="inner_left_margin" select="'8=0,13=0,19=0,21=0,23=0,24=0,27=0,29=0,30=0,32=0,34=0,40=0,41=0,42=0,43=0,44=0,45=0,46=0,47=0,48=0,52=0,53=0,54=0,56=0,58=0,59=0,60=0,62=0,63=0,66=0,67=0,68=0,69=0,72=0,73=0,74=0,75=0,77=0,79=0,82=0,88=0,89=0,90=0,92=0,93=0,95=0,97=0,98=0,101=0,103=0,105=0,106=0,107=0,110=0,111=0,114=0,115=0,116=0,117=0,119=0,123=0,124=0,125=0,127=0,128=0,130=0,132=0,134=0,135=0,136=0'"/>
    <xsl:variable name="inner_top_margin" select="'8=26,13=13,19=28,21=43,23=41,24=47,27=58,29=25,30=23,32=51,34=73,40=16,41=23,42=50,43=24,44=55,45=21,46=29,47=61,48=65,52=18,53=53,54=11,56=15,58=55,59=14,60=28,62=18,63=49,66=44,67=14,68=55,69=13,72=47,73=32,74=63,75=23,77=15,79=24,82=66,88=58,89=17,90=45,92=14,93=11,95=58,97=11,98=35,101=53,103=64,105=56,106=52,107=27,110=43,111=24,114=53,115=36,116=30,117=29,119=28,123=36,124=20,125=17,127=18,128=23,130=12,132=14,134=12,135=14,136=22'"/>
    <xsl:variable name="inner_bottom_margin" select="'8=37,13=24,19=16,21=35,23=46,24=45,27=31,29=67,30=42,32=13,34=18,40=63,41=56,42=20,43=67,44=36,45=70,46=57,47=27,48=15,52=15,53=31,54=77,56=76,58=33,59=74,60=31,62=73,63=42,66=45,67=76,68=36,69=45,72=49,73=59,74=28,75=68,77=76,79=66,82=23,88=31,89=50,90=45,92=75,93=77,95=33,97=80,98=57,101=39,103=23,105=35,106=39,107=63,110=45,111=30,114=37,115=54,116=61,117=59,119=61,123=40,124=71,125=74,127=28,128=33,130=52,132=76,134=79,135=47,136=50'"/>

    <!--
        This variable is used for pdf files.

        The default is set to all=1.5.

        The format for linespacing is:
        [all|odd|even|pagenumber]=float (where float is written as integer.integer,
        not integer,integer).

        linespacing lines *must* contain the keywords all, even, odd or a page
        number followed by a = sign and a floating point number. Pages with the
        same linespacing may be separated with ;.

        If there are several values, they are divided by commas.
        Setting different linespacing for odd and even pages is done by writing
        e.g. odd=8, even=15
        It is also possible to set linespacing for particular pages:
        8=8, 10=12
        It is also possible to set linespacing for odd and even pages and
        exceptions from those rules on particular pages.

        Examples on how the select part could look:
        odd=5, even=8, 8=15, 11=3
        all=9, 8=12
        1;3;8=20, 4;5;7=10
    -->
    <xsl:variable name="linespacing" select="''"/>

    <!--
        This variable is used for pdf files.

        This is the -wbt option of pdftohtml, which converts pdf files to
        a poppler specific xml.

        If a file converted from pdf contains words that are separated by
        spaces that really should have no spaces (e.g. W O R D), raising
        this value may help.

        Quote from the pdftohtml help:
        -wbt <fp> : word break threshold (default 10 percent)
    -->
    <xsl:variable name="word_break_threshold" select="'10'"/>

    <!--
        This variable is meant for pdf files, but not in use.

        Information about what is normal text size in pdf documents.
    -->
    <xsl:variable name="main_sizes" select="''"/>

    <!--
        This variable is meant for pdf files, but not in use.

        Information about what is title sizes in pdf documents.
    -->
    <xsl:variable name="title_sizes" select="''"/>

    <!--
        This variable is meant for pdf files, but not in use.

        Information about what styles titles have in pdf document.
    -->
    <xsl:variable name="title_styles" select="''"/>

    <!--
        This variable is used for epub or html files.

        select contains comma separated xpath path pairs.
        A path pair is separated by a semicolon.
        Each path should start with .//body

        Examples of valid pairs:
        * .//body/div[1]/h2[1];.//body/div[3]/div[1]/h3[1]
        * .//body/div[5];.//body/div[8]/div[3]/h1[1], .//body/div[11]/div[2];.//body/div[11]/div[5]
    -->
    <xsl:variable name="skip_elements" select="''"/>

    <!--
        This variable is used for epub files.

        Choose which chapters to exclude from an epub file.
    -->
    <xsl:variable name="epub_excluded_chapters" select="''"/>

    <!--
        Add all paragraphs that should have xml:lang=X
        Uncomment the following and add the paths, for example:
    -->
    <!--
    <xsl:template match="//body/p[5]">
        <xsl:element name="p">
            <xsl:attribute name="xml:lang">sme</xsl:attribute>
            <xsl:apply-templates/>
        </xsl:element>
    </xsl:template>
    -->

    <!--
        Change or remove problematic characters from the text.
        Specify the elements to match (here all p's within
        //body, that do contain text, but do NOT contain em and
        span elements), and specify the characters
        to be replaced and the replacements. If needed,
        copy this template and target several different elements,
        but don't make several templates that match the same set
        of elements - then only one of them will apply. Also try
        to restrict the template to nodes that do not contain
        other markup, as such markup otherwise will be removed.
    -->

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
