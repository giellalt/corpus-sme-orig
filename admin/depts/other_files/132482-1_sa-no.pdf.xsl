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
    <xsl:variable name="filename" select="'http://www.regjeringen.no/upload/kilde/ld/rap/2001/0006/ddd/pdfv/132482-1_sa-no.pdf'"/>
    <xsl:variable name="text_encoding" select="''"/>
    <xsl:variable name="title" select="''"/>
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
    <xsl:variable name="publChannel" select="'http://regjeringen.no'"/>
    <!-- Publication year -->
    <xsl:variable name="year" select="'2000'"/>
    <xsl:variable name="ISBN" select="''"/>
    <xsl:variable name="ISSN" select="''"/>
    <xsl:variable name="place" select="''"/>

    <!-- Automatically filled in by CorpusTools -->
    <xsl:variable name="genre" select="'admin'"/>
    <xsl:variable name="collection" select="''"/>
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
    <xsl:variable name="sub_email" select="'divvun@samediggi.no'"/>
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
    <xsl:variable name="monolingual" select="''"/>

    <!--
        If monolingual is not set, the document is multilingual.
        Uncomment the languages you want to check for (or add new lines
        with the right ISO-639-3 language codes).

        If *no* languages are uncommented (and monolingual is not 1),
        then the document is checked for all supported languages.
    -->
    <xsl:variable name="mlangs">
        <!-- <language xml:lang="dan"/> -->
    <language xml:lang="nob"/><language xml:lang="sme"/></xsl:variable>

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
        <parallel_text xml:lang="nob" location="132482-1_sa-no.pdf"/>
        <parallel_text xml:lang="rus" location=""/>
        <parallel_text xml:lang="sma" location=""/>
        <parallel_text xml:lang="sme" location=""/>
        <parallel_text xml:lang="smj" location=""/>
        <parallel_text xml:lang="smn" location=""/>
        <parallel_text xml:lang="sms" location=""/>
        <parallel_text xml:lang="swe" location="132480-1_sa-sve.pdf"/>
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
    <xsl:variable name="skip_pages" select="'1-7,9,11,13,15,17,19,21,23,25,27,29,31,33,35,37,38,39,41,43,45,47,49,51,53,55,57,59,61,63,65,67,69,71,73,75,77,78,79,81,83,85,87,89,91,93,95,97,99,101,103,105,107,109,111,113,115,117,119,121,123,125,127,129,131,133,135,137,139,141,143,145,147,149,151,153,155,157,159,161,163,165,167,169,171,173,175,177,179,181,183,185,187,189,191,193,195,197,199,201,203,205,207,209,211,213,215,217,219,221,223,225,227,229,231,233,235,237,239,241,243,245,247,249,251,253,255,257,259,261,263,265,267-269'"/>

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
    <xsl:variable name="right_margin" select="'118=50,142=50,158=50,168=50,200=50,204=50'"/>
    <xsl:variable name="left_margin" select="'140=50'"/>
    <xsl:variable name="top_margin" select="'46=56,48=47,50=38,52=50,64=37,82=46,120=46,180=23,182=46,192=31,194=38,234=38,244=20,260=40'"/>
    <xsl:variable name="bottom_margin" select="'8=48,12=11,14=11,16=11,18=12,20=16,22=12,30=53,40=80,42=80,50=10,56=16,58=12,60=12,74=12,80=16,88=12,92=12,96=50,100=16,104=12,106=10,110=11,116=80,118=12,120=11,128=26,136=12,142=34,144=12,146=12,148=12,158=38,160=12,168=32,170=12,180=16,188=16,190=16,196=12,200=33,204=40,214=14,216=46,218=12,220=12,230=80,232=14,234=14,236=31,244=12,246=30,248=14,250=12,252=12,256=80,260=11'"/>

    <!--
        This variable is used for pdf files.

        Cut out a part from a page. Has the same format
        as *_margin above. For a given page, all four margins
        must be defined.
    -->
    <xsl:variable name="inner_right_margin" select="'54=0,58=50,68=0,72=50,84=0,86=50,88=0,90=0,94=0,102=50,108=50,112=50,118=50,122=0,124=0,126=50,132=50,152=50,156=50,164=0,166=50,186=50,194=0,208=50,212=50,218=50,222=50,226=50,240=50'"/>
    <xsl:variable name="inner_left_margin" select="'54=50,58=0,68=50,72=0,84=50,86=0,88=50,90=50,94=50,102=0,108=0,112=0,118=0,122=50,124=50,126=0,132=0,152=0,156=0,164=50,166=0,186=0,194=50,208=0,212=0,218=0,222=0,226=0,240=0'"/>
    <xsl:variable name="inner_top_margin" select="'44=43,50=45,54=0,58=45,64=54,68=42,72=0,84=48,86=0,88=66,90=27,94=56,102=0,108=34,112=20,118=36,122=24,124=42,126=0,132=24,152=46,156=23,164=41,166=0,174=12,178=14,180=53,184=14,186=40,192=56,194=53,208=23,212=22,218=57,222=38,226=0,232=20,240=44,250=50,258=29,262=35'"/>
    <xsl:variable name="inner_bottom_margin" select="'44=36,50=16,54=58,58=0,64=24,68=21,72=24,84=0,86=58,88=21,90=54,94=22,102=76,108=40,112=0,118=44,122=64,124=0,126=42,132=0,152=0,156=64,164=0,166=58,174=64,178=30,180=30,184=70,186=0,192=34,194=16,208=0,212=0,218=0,222=0,226=24,232=64,240=43,250=26,258=57,262=42'"/>

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
