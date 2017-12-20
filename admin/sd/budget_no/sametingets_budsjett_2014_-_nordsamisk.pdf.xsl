<?xml version='1.0' encoding='UTF-8'?>
<!-- Format query results for display --><xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:i18n="http://apache.org/cocoon/i18n/2.1" version="1.0">

    <xsl:output method="xml" version="1.0" encoding="UTF-8" indent="yes" doctype-public="-//UIT//DTD Corpus V1.0//EN" doctype-system="http://giellatekno.uit.no/dtd/corpus.dtd"/>

    <!-- Add the metainformation manually -->

    <!--
        The original name of the file that comes from the
        submitter of the document or the URL where the document has been fetched.
        These days it is automatically added by the add_files_to_corpus tool.
        http://divvun.no/doc/ling/CorpusTools.html#add_files_to_corpus
    -->
    <xsl:variable name="filename" select="'http://samediggi.no/content/download/4638/42741/version/3/file/Sametingets+budsjett+2014+-+nordsamisk.pdf'"/>
    <xsl:variable name="text_encoding" select="''"/>
    <xsl:variable name="title" select="'Sámedikki 2014 bušeahtta'"/>
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
    <xsl:variable name="year" select="'2013'"/>
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
    <xsl:variable name="translator_nat" select="''"/>
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
        <parallel_text xml:lang="nob" location="sametingets_budsjett_2014_-_norsk.pdf"/>
        <parallel_text xml:lang="rus" location=""/>
        <parallel_text xml:lang="sma" location=""/>
        <parallel_text xml:lang="sme" location=""/>
        <parallel_text xml:lang="smj" location=""/>
        <parallel_text xml:lang="smn" location=""/>
        <parallel_text xml:lang="sms" location=""/>
        <parallel_text xml:lang="swe" location=""/>
    </xsl:variable>

    <!--
        For pdf documents, mark which pages should be ignored.
        The format for this is a comma separated list of page numbers
        that should be skipped. It is also possible to use ranges.
        Examples:
        1, 2, 3, 4
        1, 6-10, 15, 20, 25-30
    -->
    <xsl:variable name="skip_pages" select="'1-8,116,117,126,136'"/>

    <!--
        For txt documents, mark which lines should be ignored.
        The format for this is a comma separated list of line numbers
        that should be skipped. It is also possible to use ranges.
        Examples:
        1, 2, 3, 4
        1, 6-10, 15, 20, 25-30
    -->
    <xsl:variable name="skip_lines" select="''"/>

    <!--
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
    <xsl:variable name="right_margin" select="''"/>
    <xsl:variable name="left_margin" select="''"/>
    <xsl:variable name="top_margin" select="'29=24,31=21,35=45,43=24,50=62,52=22,57=37,73=22,78=30,110=30,113=51,119=25,124=55,125=25'"/>
    <xsl:variable name="bottom_margin" select="'17=54,40=35,89=23,96=24,109=48,112=28,115=25,118=20,121=30,122=67'"/>

    <!--
        Cut out a part from a page in pdf documents. Has the same format
        as *_margin above. For a given page, all four margins
        must be defined.
    -->
    <xsl:variable name="inner_right_margin" select="'16=0,18=0,22=0,23=0,25=0,26=0,27=0,28=0,29=0,30=0,31=0,32=0,33=0,35=0,38=0,42=0,44=0,45=0,46=0,47=0,48=0,51=0,52=0,53=0,54=0,55=0,56=0,60=0,61=0,65=0,67=0,68=0,69=0,70=0,71=0,72=0,75=0,76=0,78=0,79=0,81=0,82=0,85=0,86=0,90=0,91=0,98=0,100=0,101=0,104=0,105=0,107=0,108=0,112=0,113=0,115=0,120=0,121=0,124=0,125=0,127=0,129=0,132=0,133=0,134=0'"/>
    <xsl:variable name="inner_left_margin" select="'16=0,18=0,22=0,23=0,25=0,26=0,27=0,28=0,29=0,30=0,31=0,32=0,33=0,35=0,38=0,42=0,44=0,45=0,46=0,47=0,48=0,51=0,52=0,53=0,54=0,55=0,56=0,60=0,61=0,65=0,67=0,68=0,69=0,70=0,71=0,72=0,75=0,76=0,78=0,79=0,81=0,82=0,85=0,86=0,90=0,91=0,98=0,100=0,101=0,104=0,105=0,107=0,108=0,112=0,113=0,115=0,120=0,121=0,124=0,125=0,127=0,129=0,132=0,133=0,134=0'"/>
    <xsl:variable name="inner_top_margin" select="'16=43,18=14,22=55,23=65,25=25,26=35,27=44,28=14,29=65,30=15,31=32,32=13,33=54,35=72,38=14,42=20,44=18,45=42,46=16,47=56,48=16,51=40,52=28,53=20,54=45,55=58,56=14,60=25,61=11,65=14,67=14,68=11,69=26,70=39,71=36,72=14,75=26,76=38,78=71,79=35,81=39,82=11,85=72,86=35,90=44,91=59,98=66,100=42,101=34,104=14,105=14,107=66,108=11,112=16,113=65,115=54,120=52,121=15,124=64,125=47,127=14,129=23,132=13,133=14,134=37'"/>
    <xsl:variable name="inner_bottom_margin" select="'16=27,18=54,22=30,23=22,25=24,26=50,27=40,28=69,29=21,30=53,31=52,32=30,33=33,35=14,38=65,42=45,44=44,45=42,46=54,47=14,48=29,51=18,52=59,53=22,54=32,55=31,56=75,60=59,61=76,65=72,67=73,68=64,69=33,70=46,71=50,72=68,75=58,76=48,78=15,79=49,81=47,82=32,85=14,86=22,90=43,91=27,98=20,100=45,101=52,104=69,105=74,107=20,108=77,112=40,113=19,115=33,120=36,121=60,124=24,125=18,127=28,129=51,132=75,133=48,134=25'"/>

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
        Choose which chapters to exclude from an epub file.
    -->
    <xsl:variable name="epub_excluded_chapters" select="''"/>

    <!--
        Information about what is normal text size in pdf documents.
    -->
    <xsl:variable name="main_sizes" select="''"/>

    <!--
        Information about what is title sizes in pdf documents.
    -->
    <xsl:variable name="title_sizes" select="''"/>

    <!--
        Information about what styles titles have in pdf document.
    -->
    <xsl:variable name="title_styles" select="''"/>
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
