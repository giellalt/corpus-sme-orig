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
    <xsl:variable name="filename" select="'NAC_1994_24.pdf'"/>
    <xsl:variable name="text_encoding" select="''"/>
    <xsl:variable name="title" select="'Finnmárkku eatnamiid ja čázádagaid geavaheapmi historjjálaš'"/>
    <!--
        Information of the first author: first name, last name,
        date or year of birth, nationality.
    -->
    <xsl:variable name="author1_fn" select="'Steinar'"/>
    <xsl:variable name="author1_ln" select="'Pedersen'"/>
    <!-- m, f or unknown -->
    <xsl:variable name="author1_gender" select="'m'"/>
    <!--
        The country where the author is from. It should be written as
        an ISO_3166-1 code.
        https://no.wikipedia.org/wiki/ISO_3166-1
    -->
    <xsl:variable name="author1_nat" select="'nor'"/>
    <!-- Either YYYY or YYYYMMDD. Examples: 1954 or 19451224 -->
    <xsl:variable name="author1_born" select="''"/>
    <!--
        Information of the second author: first name, last name,
        date or year of birth, nationality.
    -->
    <xsl:variable name="author2_fn" select="'Hans'"/>
    <xsl:variable name="author2_ln" select="'Prestbakmo'"/>
    <xsl:variable name="author2_gender" select="'m'"/>
    <xsl:variable name="author2_nat" select="'nor'"/>
    <xsl:variable name="author2_born" select="''"/>

    <!--
        Information of the third author: first name, last name,
        date or year of birth, nationality.
    -->
    <xsl:variable name="author3_fn" select="'Einar'"/>
    <xsl:variable name="author3_ln" select="'Richter Hanssen'"/>
    <xsl:variable name="author3_gender" select="'m'"/>
    <xsl:variable name="author3_nat" select="'nor'"/>
    <xsl:variable name="author3_born" select="''"/>

    <!--
        Information of the fourth author: first name, last name,
        date or year of birth, nationality.
    -->
    <xsl:variable name="author4_fn" select="'Einar'"/>
    <xsl:variable name="author4_ln" select="'Niemi'"/>
    <xsl:variable name="author4_gender" select="'m'"/>
    <xsl:variable name="author4_nat" select="'nor'"/>
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

    <xsl:variable name="publisher" select="'Stáhta hálddáhusdoaimmahus'"/>
    <!-- The values are either: published or unpublished -->
    <xsl:variable name="publChannel" select="''"/>
    <!-- Publication year -->
    <xsl:variable name="year" select="'1994'"/>
    <xsl:variable name="ISBN" select="''"/>
    <xsl:variable name="ISSN" select="''"/>
    <xsl:variable name="place" select="'Oslo'"/>

    <!-- Automatically filled in by CorpusTools -->
    <xsl:variable name="genre" select="'admin'"/>
    <xsl:variable name="collection" select="''"/>
    <!--
        Three letter language code.
        https://no.wikipedia.org/wiki/Liste_over_ISO_639-1-koder
    -->
    <xsl:variable name="translated_from" select="'nob'"/>
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
    <xsl:variable name="sub_name" select="'Trond Trosterud'"/>
    <xsl:variable name="sub_email" select="'trond.trosterud@hum.uit.no'"/>
    <!-- Keep empty, this is automatically filled in by CorpusTools -->
    <xsl:variable name="wordcount" select="'159251'"/>
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
    <xsl:variable name="template_version" select="' 1.9 '"/>
    <!-- Automatically filled in by CorpusTools -->
    <xsl:variable name="current_version" select="'$Revision: 1.20 $'"/>
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
    <language xml:lang="nob"/><language xml:lang="eng"/></xsl:variable>

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
        <parallel_text xml:lang="nob" location="nou199419940021000dddpdfa.pdf"/>
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
    <xsl:variable name="skip_pages" select="'1-20,186-200,213-214,288,296,313-319,323,337,344-346,392,439,452-455,465,492,545-549'"/>

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
    <xsl:variable name="right_margin" select="'all=7'"/>
    <xsl:variable name="left_margin" select="'all=7'"/>
    <xsl:variable name="top_margin" select="'all=7,62=52,68=20,89=14,93=46,215=24,216=10,217=36,257=25,277=20,285=22,324=38,329=27,330=74,347=42,363=41,385=29,399=36,400=54,416=42,417=16,422=50'"/>
    <xsl:variable name="bottom_margin" select="'all=7,21=52,22=32,23=14,24=14,25=13,26=16,28=16,30=19,31=16,32=16,33=16,34=18,35=20,36=15,37=17,38=16,39=16,40=13,41=11,42=14,43=14,44=19,45=19,46=13,47=14,48=22,49=16,50=14,51=16,52=15,53=15,54=18,55=16,56=14,57=18,58=16,59=13,60=14,61=12,62=12,63=14,64=14,65=14,67=16,68=13,70=14,71=14,72=14,73=13,74=28,76=12,77=17,78=18,79=14,80=18,81=16,82=16,83=15,85=15,86=15,87=16,89=12,90=18,92=17,93=18,94=13,96=16,97=18,98=22,99=22,100=12,101=12,103=14,104=13,105=12,106=21,108=16,110=18,111=15,112=16,113=21,114=23,115=22,116=14,117=20,118=12,119=16,120=16,121=19,122=14,123=14,124=22,125=18,126=16,127=14,128=25,129=20,130=15,131=14,132=16,133=31,134=14,135=19,136=17,137=16,138=14,139=12,140=15,141=14,142=13,143=16,144=20,145=16,146=14,147=19,149=13,150=18,151=13,152=14,153=18,155=12,156=14,157=18,158=16,159=16,160=15,161=12,162=14,163=14,164=20,165=25,166=22,167=24,168=24,169=17,170=24,171=13,172=12,173=18,174=16,175=16,176=20,178=12,179=18,180=16,181=14,182=16,183=17,184=13,185=50,201=24,202=46,203=16,204=17,206=22,207=36,208=16,209=30,210=28,211=17,212=16,215=26,216=22,217=12,218=12,219=25,220=16,221=14,222=18,223=14,224=12,225=14,227=12,228=14,229=13,230=16,231=12,234=12,235=15,236=16,237=13,238=12,239=19,240=14,241=14,242=17,243=14,246=14,247=13,249=13,250=21,251=15,252=14,253=12,254=25,255=20,256=23,257=16,258=22,259=15,260=15,261=22,262=34,263=23,265=18,266=18,267=13,268=15,271=14,272=18,273=14,274=21,275=16,276=80,277=12,278=13,280=14,282=12,283=12,284=23,285=16,286=16,287=20,289=15,292=24,293=22,294=16,295=13,298=18,300=13,302=13,306=12,308=12,309=14,310=14,311=18,312=20,320=12,321=14,322=70,324=26,325=15,326=18,328=16,330=13,331=15,332=28,333=24,338=15,339=20,340=16,341=12,342=18,343=16,347=14,348=28,349=15,350=24,351=18,352=15,353=20,354=34,355=16,356=13,357=16,358=18,359=13,360=16,361=22,362=30,363=15,364=18,366=12,367=18,368=19,369=12,371=34,372=18,373=18,374=15,375=16,376=26,377=20,378=14,379=15,380=26,381=26,382=12,383=16,384=20,388=18,389=16,390=17,391=16,393=16,394=21,395=21,396=17,397=22,398=28,401=18,402=24,403=14,404=31,405=16,406=18,407=31,408=25,409=24,410=19,411=26,412=20,413=28,414=23,415=15,416=16,417=22,418=17,419=26,420=20,421=22,423=24,424=14,425=14,426=24,427=25,428=18,429=14,430=25,431=16,432=14,433=21,434=25,436=16,437=20,438=66,440=16,441=16,442=16,443=14,444=12,446=12,447=22,448=18,449=14,450=12,456=15,457=17,458=21,459=17,460=16,461=17,462=16,464=20,467=18,468=14,469=17,470=19,471=14,472=18,473=21,474=15,475=12,476=14,477=13,478=18,479=18,481=15,482=14,483=18,484=15,489=12,490=14,491=30,493=12,495=18,496=14,497=25,499=16,500=26,501=12,502=12,503=12,504=22,506=16,507=12,508=14,509=16,510=18,511=13,512=14,513=14,514=16,516=12,517=16,518=14,519=17,520=14,522=14,523=14,524=14,525=14,526=13,528=14,529=12,530=15,531=12,532=12,533=12,534=12,535=16,536=16,537=14,538=12,539=12,540=14,541=16,543=18,544=16'"/>

    <!--
        Cut out a part from a page in pdf documents. Has the same format
        as *_margin above. For a given page, all four margins
        must be defined.
    -->
    <xsl:variable name="inner_right_margin" select="''"/>
    <xsl:variable name="inner_left_margin" select="''"/>
    <xsl:variable name="inner_top_margin" select="'22=20,23=28,41=24,44=50,54=14,60=24,64=52,69=15,87=24,88=40,91=50,94=58,95=14,96=56,116=52,121=56,125=16,127=24,129=34,138=53,163=46,165=22,167=34,185=16,216=26,217=48,237=28,238=36,245=29,252=44,253=38,263=18,286=58,291=48,340=56,362=16,384=38,389=51,390=58,402=34,415=36,424=48,429=50,430=30'"/>
    <xsl:variable name="inner_bottom_margin" select="'22=72,23=66,41=71,44=45,54=81,60=57,64=42,69=70,87=47,88=21,91=34,94=22,95=68,96=38,116=44,121=38,125=78,127=68,129=59,138=27,163=48,165=73,167=59,185=67,216=38,217=31,237=64,238=57,245=40,252=27,253=56,263=77,286=36,291=40,340=30,362=66,384=46,389=33,390=27,402=60,415=58,424=30,429=27,430=58'"/>

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
    <xsl:variable name="main_sizes" select="'10pt,11pt,12pt,14pt'"/>

    <!--
        Information about what is title sizes in pdf documents.
    -->
    <xsl:variable name="title_sizes" select="'14pt,15pt,16pt,50pt'"/>

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
               <xsl:with-param name="inputString" select="translate($text,'ðñçóþÑÝýÇÓÐ','đŋčšŽŊŦŧČŠĐ')"/>
     <xsl:with-param name="target" select="'Adelaer/gaefhes/haes/daen/siidaer/omgaaes/saae/mae/undgaae/taen/taed/baer/vaer/raer/naes/saer/saet/saet/naer/Nae/raep/vaeg/raen/Fae/Rae/jael/'"/>
<xsl:with-param name="replacement" select="'Adelær/gæfhes/hæs/dæn/siidær/omgaæs/saæ/mæ/undgaæ/tæn/tæd/bær/vær/rær/næs/sær/sæt/sæd/nær/Næ/ræp/væg/ræn/Fæ/Ræ/jæl/'"/>
            <xsl:with-param name="continue" select="1"/>
            </xsl:call-template>

</xsl:element>
</xsl:template>



</xsl:stylesheet>
