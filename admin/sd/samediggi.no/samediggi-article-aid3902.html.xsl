<?xml version="1.0" encoding="UTF-8"?>

<!-- Format query results for display -->

<xsl:stylesheet 
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:i18n="http://apache.org/cocoon/i18n/2.1"
    version="1.0">

<xsl:output method="xml" 
            version="1.0" 
            encoding="UTF-8" 
            indent="yes"
            doctype-public="-//UIT//DTD Corpus V1.0//EN"
			doctype-system="http://giellatekno.uit.no/dtd/corpus.dtd"/> 

<!-- Add the metainformation manually -->
<!-- variable filename contains the original name of the file (from submitter)-->
<xsl:variable name="filename" select="'http://www.sametinget.no/artikkel.aspx?AId=3902&amp;Print=1'"/>
<xsl:variable name="title" select="'Seminar om nye tildelingskriterier for Sametingets tospråklighetsmidler - Sámediggi Sametinget
</title></head>

<body id=ctl00_Body style=background-color:white>
	<form name=aspnetForm method=post action=artikkel.aspx?AId=3902&amp;amp;Print=1 id=aspnetForm style=width:90%>
<input type=hidden name=__VIEWSTATE id=__VIEWSTATE value=/wEPDwULLTEyNjc4NzYyNTQPZBYCZg9kFgICAw9kFgICAw9kFgICAQ9kFgICAQ9kFgICAQ9kFgJmD2QWAgICD2QWAmYPZBYCZg9kFgJmD2QWCmYPFgIeBFRleHQFfjxoMSBpZD0idGl0dGVsIiBjbGFzcz0iSW5uaG9sZE92ZXJza3JpZnQiID4NClNlbWluYXIgb20gbnllIHRpbGRlbGluZ3Nrcml0ZXJpZXIgZm9yIFNhbWV0aW5nZXRzIHRvc3Byw6VrbGlnaGV0c21pZGxlcg0KPC9oMT4NCmQCAg8WAh8ABa4CPGRpdiBjbGFzcz0iSW5uaG9sZEluZ3Jlc3MiIHN0eWxlPSIiPg0KPHA+PHN0cm9uZz5TYW1ldGluZ2V0IGFycmFuZ2VyZXIgaSBhbmxlZG5pbmcgcGxlbnVtc3NhbWxpbmdlbiBpIHNlcHRlbWJlciBldCBoYWx2ZGFnc3NlbWluYXIgb20gZGUgbnllIHRpbGRlbGluZ3Nrcml0ZXJpZW5lIGZvciB0b3NwciZhcmluZztrbGlnaGV0c21pZGxlci4gU2VtaW5hcmV0IGZpbm5lciBzdGVkIGkgU2FtZXRpbmdldHMgcGxlbnVtc3NhbCBvbnNkYWcgMjkuMDkuMTAgZnJhIGtsLjA5LjAwIC0gMTIuMDAuPC9zdHJvbmc+PC9wPg0KPC9kaXY+DQpkAgYPFgIfAAWsDTxkaXYgY2xhc3M9IklubmhvbGRUZWtzdCIgc3R5bGU9IiI+DQo8cD5TZW1pbmFyZXQgdmlsIGlubmxlZGVzIGF2IHRvIGZvcnZhbHRuaW5nc2tvbW11bmVyIG9nIFNhbWV0aW5nc3ImYXJpbmc7ZGV0IHZpbCBwcmVzZW50ZXJlIGZvcnNsYWcgdGlsIG55ZSB0aWxkZWxpbmdza3JpdGVyaWVyIGZvciB0b3NwciZhcmluZztrbGlnaGV0c21pZGxlbmUuPC9wPg0KPHA+RGV0IHZpbCBibGkgYW5sZWRuaW5nICZhcmluZzsga29tbWUgbWVkIHNwJm9zbGFzaDtyc20mYXJpbmc7bCBvZyBrb21tZW50YXJlciB0aWwgZGUgbnllIGZvcnNsYWdlbmUgZm9yIHRpbGRlbGluZ3Nrcml0ZXJpZXIuJm5ic3A7PC9wPg0KPHA+RGV0IGVyIGxhZ3Qgb3BwIG15ZSB0aWQgdGlsIGRlYmF0dCBvZyBkaXNrdXNqb24gZGVyIGRldCB2aWwgYmxpIGFubGVkbmluZyAmYXJpbmc7IGtvbW1lIG1lZCBzcCZvc2xhc2g7cnNtJmFyaW5nO2wgb2cga29tbWVudGFyZXIgdGlsIGRlIG55ZSBmb3JzbGFnZW5lIGZvciB0aWxkZWxpbmdza3JpdGVyaWVyLiBTYW1ldGluZ2V0IGgmYXJpbmc7cGVyIHMmYXJpbmc7IG1hbmdlIHNvbSBtdWxpZyBoYXIgYW5sZWRuaW5nIHRpbCAmYXJpbmc7IGRlbHRhIHAmYXJpbmc7IHNlbWluYXJldCBvZyBzZXIgZnJlbSB0aWwgZW4gZ29kIG9nIGtvbnN0cnVrdGl2IGRlYmF0dCBvbSB0ZW1hZXQuPC9wPg0KPHA+VmVsbCBtJm9zbGFzaDt0dC48L3A+DQo8cD4mbmJzcDs8L3A+DQo8cD5Qcm9ncmFtIGZvciBzZW1pbmFyLyZhcmluZztwZW4gaCZvc2xhc2g7cmluZyBvbSBueWUgdGlsZGVsaW5nc2tyaXRlcmllciBmb3IgdG9zcHImYXJpbmc7a2xpZ2hldHNtaWRsZW5lOjwvcD4NCjxwPjA5LjAwIC0gMDkuMTA6IFZlbGtvbW1lbiBhdiBFZ2lsIE9sbGk8L3A+DQo8cD4wOS4xMCAtIDA5LjM1OiBLYXV0b2tlaW5vIGtvbW11bmUgdmVkIE1haWEgSCZhZWxpZzt0dGEgLSB1dGZvcmRyaW5nZXIgaSBmb3Job2xkIHRpbCByYXBwb3J0ZXJpbmdlbiBtZWQgZGFnZW5zIGtyaXRlcmllcjwvcD4NCjxwPjA5LjM1IC0gMDkuNTA6IExhdmFuZ2VuIGtvbW11bmUgdmVkIFZpa3RvciBBbmRiZXJnIC0gSHZpbGtlIHV0Zm9yZHJpbmdlciBoYXIgZW4gbnkga29tbXVuZSBpIGZvcmhvbGQgdGlsIHJhcHBvcnRlcmluZ2VuIG1lZCBkYWdlbnMga3JpdGVyaWVyLjwvcD4NCjxwPjA5LjUwIC0gMTAuMDU6IEthZmZlcGF1c2U8L3A+DQo8cD4xMC4wNSAtIDEwLjUwOiBTYW1ldGluZ3NyJmFyaW5nO2RldCB2ZWQgTWFyaWFubmUgQmFsdG8gLSBmb3JzbGFnIHRpbCZuYnNwO255ZSBrcml0ZXJpZXI8L3A+DQo8cD4xMDo1MCAtIDExLjUwOiBEZWJhdHQvZGlza3Vzam9uIGZyYSBrb21tdW5lci9wbGVudW0gYW5nJmFyaW5nO2VuZGUgZm9yc2xhZyB0aWwgbnllIHRpbGRlbGluZ3Nrcml0ZXJpZXI8L3A+DQo8cD4xMS41MCAtIDEyLjAwOiBPcHBzdW1tZXJpbmcgYXYgZGViYXR0ZW4vYXZzbHV0bmluZyBhdiBTYW1ldGluZ3NyJmFyaW5nO2RldCB2ZWQgTWFyaWFubmUgQmFsdG8uPC9wPg0KPHA+Jm5ic3A7PC9wPg0KPHA+RXZlbnR1ZWxsZSBlbmRyaW5nZXIgaSBwcm9ncmFtbWV0IHZpbCBibGkgb2ZmZW50bGlnZ2pvcnQgcCZhcmluZzsgdiZhcmluZztyZSBuZXR0c2lkZXIuPC9wPg0KPHA+S29udGFrdHBlcnNvbjogUiZhcmluZztkZ2l2ZXIgRW1tYSBNYXJncmV0IFNrJmFyaW5nO2RlbiwgdGxmLiA5OTUgNzQmbmJzcDs1MzMuPC9wPg0KPC9kaXY+DQpkAggPZBYCZg9kFggCAQ8WAh8ABQxQdWJsaXNlcnQgYXZkAgMPDxYCHgdWaXNpYmxlaGRkAgUPFgIfAAURSG9sbWdyZW4sIEhhbm5lLiBkAg0PFgIfAAUXU2lzdCBlbmRyZXQgIDIyLjA5LjIwMTBkAgoPZBYCZg9kFgJmD2QWBgIBDxYCHwFoZAIDDxYCHwFoFgICAQ9kFgJmD2QWBgICD2QWBGYPZBYCZg8QZGQWAGQCAQ9kFgJmDzwrAAkAZAIDD2QWBGYPZBYCAgEPEGRkFgBkAgEPZBYCZg88KwAJAGQCBA9kFgJmD2QWBAIBDw8WBh8AZR4IQ3NzQ2xhc3MFDUJydWtlck1lbGRpbmceBF8hU0ICAmRkAgMPDxYCHwBlZGQCBQ9kFgICAQ9kFgpmDzwrAAkAZAICDzwrAAkAZAIEDzwrAAkBAA8WBB4IRGF0YUtleXMWAB4LXyFJdGVtQ291bnQCAWQWAgIBD2QWBgIBDw8WAh4NQWx0ZXJuYXRlVGV4dAUJQXJ0aWtrZWwgZGQCAw8PFgQeC05hdmlnYXRlVXJsZR8AZWRkAgUPFgIfAAV+IDxhIGNsYXNzPSJJbm5ob2xkTGluayIgdGl0bGU9IiIgIGhyZWY9Ii9hcnRpa2tlbC5hc3B4P0FJZD0zOTAzIj5BcnRpa2tlbCAgLSBTYW1ldGluZ2V0cyBwbGVudW1zbSYjMjQ4O3RlIOKAkyBzZXB0ZW1iZXIuLi48L2E+ZAIGDzwrAAkAZAIKDzwrAAkAZGRHZ2hqVtP1QB84LP+FbUGE35cCCA== />


<script type=text/javascript>
//<![CDATA[
function addLoadEvent(func) {
var oldonload = window.onload;
if (typeof window.onload != 'function') {
window.onload = func;
} else {
window.onload = function() {
if (oldonload) {
oldonload();
}
func();
}
}
}   
//]]>
</script>
<script type=text/javascript>
var gaJsHost = ((https: == document.location.protocol) ? https://ssl. : http://www.);
document.write(unescape(%3Cscript src=' + gaJsHost + google-analytics.com/ga.js' type='text/javascript'%3E%3C/script%3E));
</script>
<script type=text/javascript>
var pageTracker = _gat._getTracker(UA-13172157-1);
pageTracker._initData();
pageTracker._trackPageview();
</script>

		
    

<div id=ctl00_MidtSone_ucArtikkel_ctl00_pnlArtikkel class=artikkel artikkelmal_4>
	<h1 id=tittel class=InnholdOverskrift >
Seminar om nye tildelingskriterier for Sametingets tospråklighetsmidler'"/>
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
<xsl:variable name="translated_from" select="''"/>
<xsl:variable name="publisher" select="'Sámediggi/Sametinget'"/>
<xsl:variable name="publChannel" select="'http://samediggi.no'"/>
<xsl:variable name="year" select="'2010'"/>
<xsl:variable name="ISBN" select="''"/>
<xsl:variable name="ISSN" select="''"/>
<xsl:variable name="place" select="''"/>
<xsl:variable name="genre" select="''"/>
<xsl:variable name="collection" select="''"/>
<xsl:variable name="translator_fn" select="''"/>
<xsl:variable name="translator_ln" select="''"/>
<xsl:variable name="translator_gender" select="'unknown'"/>
<xsl:variable name="translator_born" select="''"/>
<xsl:variable name="translator_nat" select="''"/>
<!-- select license type: free, standard or other -->
<xsl:variable name="license_type" select="''"/>
<xsl:variable name="sub_name" select="''"/>
<xsl:variable name="sub_email" select="'divvun@samediggi.no'"/>
<xsl:variable name="wordcount" select="''"/>
<xsl:variable name="metadata" select="'uncomplete'"/>
<xsl:variable name="template_version" select="'$Revision: 32948 $'"/>
<xsl:variable name="current_version" select="'Revision'"/>
<!-- Free text field for notes -->
<xsl:variable name="note" select="''"/>

<!-- The main language of the document -->
<xsl:variable name="mainlang" select="'sme'"/>

<!-- Other languages, in case of multilingual document. -->
<!-- Select "1" for the variable multilingual -->
<xsl:variable name="monolingual" select="''"/> <!--lg rec is off!-->
<xsl:variable name="multilingual" select="''"/> <!--this is default-->

<!-- Select the potential langugages by adding the number "1" in the -->
<!-- selection frame. If no languages are selected, the document is -->
<!-- checked for all the languages below. -->
<xsl:variable name="mlang_dan" select="''"/>
<xsl:variable name="mlang_eng" select="''"/>
<xsl:variable name="mlang_fin" select="''"/>
<xsl:variable name="mlang_fkv" select="''"/>
<xsl:variable name="mlang_ger" select="''"/>
<xsl:variable name="mlang_isl" select="''"/>
<xsl:variable name="mlang_kal" select="''"/>
<xsl:variable name="mlang_nno" select="''"/>
<xsl:variable name="mlang_nob" select="''"/>
<xsl:variable name="mlang_sma" select="''"/>
<xsl:variable name="mlang_sme" select="''"/>
<xsl:variable name="mlang_smj" select="''"/>
<xsl:variable name="mlang_swe" select="''"/>
<xsl:variable name="mlang_oth" select="''"/>

<!-- If the document has parallel texts, select "1" for parallel_texts -->
<!-- Add the locations of the parallel files to the variables-->
<xsl:variable name="parallel_texts" select="''"/>
<xsl:variable name="para_dan" select="''"/>
<xsl:variable name="para_eng" select="''"/>
<xsl:variable name="para_fin" select="''"/>
<xsl:variable name="para_fkv" select="''"/>
<xsl:variable name="para_ger" select="''"/>
<xsl:variable name="para_isl" select="''"/>
<xsl:variable name="para_kal" select="''"/>
<xsl:variable name="para_nno" select="''"/>
<xsl:variable name="para_nob" select="''"/>
<xsl:variable name="para_sma" select="''"/>
<xsl:variable name="para_sme" select="''"/>
<xsl:variable name="para_smj" select="''"/>
<xsl:variable name="para_swe" select="''"/>


<!-- Tag the specified elements with the specified language: -->
<xsl:variable name="danlang" select="'dan'"/>
<xsl:variable name="englang" select="'eng'"/>
<xsl:variable name="finlang" select="'fin'"/>
<xsl:variable name="fkvlang" select="'fkv'"/>
<xsl:variable name="gerlang" select="'ger'"/>
<xsl:variable name="isllang" select="'isl'"/>
<xsl:variable name="kallang" select="'kal'"/>
<xsl:variable name="nnolang" select="'nno'"/>
<xsl:variable name="noblang" select="'nob'"/>
<xsl:variable name="smalang" select="'sma'"/>
<xsl:variable name="smelang" select="'sme'"/>
<xsl:variable name="smjlang" select="'smj'"/>
<xsl:variable name="swelang" select="'swe'"/>


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

<!-- Change or remove problematic characters from the text. -->
<!-- add the template to match (here all p:s), and write the -->
<!-- replaced characters and the replacements. -->
<!--
<xsl:template match="p">
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
