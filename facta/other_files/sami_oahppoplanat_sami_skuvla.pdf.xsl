<?xml version='1.0' encoding='UTF-8'?>
<!-- Format query results for display --><xsl:stylesheet xmlns:i18n="http://apache.org/cocoon/i18n/2.1" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
  <xsl:output doctype-public="-//UIT//DTD Corpus V1.0//EN" doctype-system="http://giellatekno.uit.no/dtd/corpus.dtd" encoding="UTF-8" indent="yes" method="xml" version="1.0"/>
  <!-- Add the metainformation manually -->
  <xsl:variable name="filename" select="'Sámi_oahppoplánat___sámi_skuvla.pdf'"/>
  <xsl:variable name="title" select="'Sámi oahppoplánat - sámi skuvla'"/>
  <xsl:variable name="author1_fn" select="'Jan Henry'"/>
  <xsl:variable name="author1_ln" select="'Keskitalo'"/>
  <xsl:variable name="author1_gender" select="'m'"/>
  <xsl:variable name="author1_born" select="''"/>
  <xsl:variable name="author1_nat" select="'nor'"/>
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
  <xsl:variable name="publisher" select="'Sámi oahpahusráđđi'"/>
  <xsl:variable name="publChannel" select="''"/>
  <xsl:variable name="year" select="''"/>
  <xsl:variable name="ISBN" select="''"/>
  <xsl:variable name="ISSN" select="''"/>
  <xsl:variable name="place" select="'http://www.skolenettet.no/nyUpload/Samisk læringsnett/Dokumenter/Sámi oahppoplánat - sámi skuvla.pdf'"/>
  <xsl:variable name="genre" select="'facta'"/>
  <xsl:variable name="collection" select="'Čálusráidu O97 sámi oktavuođas'"/>
  <xsl:variable name="translator_fn" select="''"/>
  <xsl:variable name="translator_ln" select="''"/>
  <xsl:variable name="translator_gender" select="'unknown'"/>
  <xsl:variable name="translator_born" select="''"/>
  <xsl:variable name="translator_nat" select="''"/>
  <xsl:variable name="license_type" select="'free'"/>
  <xsl:variable name="sub_name" select="'Børre Gaup'"/>
  <xsl:variable name="sub_email" select="'borre.gaup@samediggi.no'"/>
  <xsl:variable name="wordcount" select="''"/>
  <xsl:variable name="conversion_status" select="'standard'"/>
  <xsl:variable name="metadata" select="'uncomplete'"/>
  <xsl:variable name="template_version" select="' 1.9 '"/>
  <xsl:variable name="current_version" select="'$Revision: 1.1 $'"/>
<!-- Free text field for notes -->
<xsl:variable name="note" select="''"/>

  <!-- The main language of the document -->
  <xsl:variable name="mainlang" select="'sme'"/>
  <!-- Other languages, in case of multilingual document. -->
<!-- Select "1" for the variable multilingual -->
<!-- and for the languages present -->
  <xsl:variable name="monolingual" select="'1'"/>


<!-- If monolingual is not set, the language is multilingual.
     Uncomment the languages you want to check for (or add new lines
     with the right ISO-639-3 language codes).

     If *no* languages are uncommented (and monolingual is not 1),
     then the document is checked for all supported languages.
-->
<xsl:variable name="mlangs">
	<language xml:lang="sme"/>
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
        <parallel_text xml:lang="nob" location="sami_oahppaplanat_sami_skuvla.pdf"/>
    </xsl:variable>

    <!--
        For pdf documents, mark which pages should be ignored.
        The format for this is a comma separated list of page numbers
        that should be skipped. It is also possible to use ranges.
        Examples:
        1, 2, 3, 4
        1, 6-10, 15, 20, 25-30
    -->
    <xsl:variable name="skip_pages" select="'1, 23, 25, 27, 29, 31-32'"/>

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
    <xsl:variable name="right_margin" select="'2;3;4;5;6;7;8;9;10;11;12;13;14;15;16;17;18;19;20;21=50'"/>
    <xsl:variable name="left_margin" select="''"/>
    <xsl:variable name="top_margin" select="''"/>
    <xsl:variable name="bottom_margin" select="'all=15'"/>

    <xsl:variable name="inner_right_margin" select="''"/>
    <xsl:variable name="inner_left_margin" select="''"/>
    <xsl:variable name="inner_top_margin" select="''"/>
    <xsl:variable name="inner_bottom_margin" select="''"/>

    <!--
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
    <xsl:variable name="linespacing" select="'all=2'"/>
</xsl:stylesheet>
