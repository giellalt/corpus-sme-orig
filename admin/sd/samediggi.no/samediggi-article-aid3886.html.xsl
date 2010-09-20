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
<xsl:variable name="filename" select="'http://www.sametinget.no/artikkel.aspx?AId=3886&amp;Print=1'"/>
<xsl:variable name="title" select="'Sametingets idrettsstipend – forlenget søknadsfrist 12.10.2010 - Sámediggi Sametinget
</title></head>

<body id=ctl00_Body style=background-color:white>
	<form name=aspnetForm method=post action=artikkel.aspx?AId=3886&amp;amp;Print=1 id=aspnetForm style=width:90%>
<input type=hidden name=__VIEWSTATE id=__VIEWSTATE value=/wEPDwULLTEyNjc4NzYyNTQPZBYCZg9kFgICAw9kFgICAw9kFgICAQ9kFgICAQ9kFgICAQ9kFgJmD2QWAgICD2QWAmYPZBYCZg9kFgJmD2QWDGYPFgIeBFRleHQFdzxoMSBpZD0idGl0dGVsIiBjbGFzcz0iSW5uaG9sZE92ZXJza3JpZnQiID4NClNhbWV0aW5nZXRzIGlkcmV0dHNzdGlwZW5kIOKAkyBmb3JsZW5nZXQgc8O4a25hZHNmcmlzdCAxMi4xMC4yMDEwDQo8L2gxPg0KZAICD2QWAmYPDxYEHghDc3NDbGFzcwUbYXJ0aWtrZWxiaWxkZSBiaWxkZV92ZW5zdHJlHgRfIVNCAgJkFgICAQ8PFgQfAAVmPGltZyBib3JkZXI9IjAiICAgc3JjPSIva3VuZGUvYmlsZGVyL0xpdGVfVGlsc2t1ZGQuanBnIiBhbGlnbj0idG9wIiBhbHQ9IlRpbHNrdWRkIiB0aXRsZT0iVGlsc2t1ZGQiIC8+HgtOYXZpZ2F0ZVVybAUSamF2YXNjcmlwdDp2b2lkKDApFgIeB09uQ2xpY2sFxAF3aW5kb3cub3BlbignL2JpbGRldmlzLmFzcD9CaWxkZUlkPTExMTMmVmlzPXN0b3ImRWtzYWt0PXRydWUnLCdob21lJywndG9vbGJhcj1ubyxsb2NhdGlvbj1ubyxkaXJlY3Rvcmllcz1ubyxzdGF0dXM9bm8sbWVudWJhcj1ubyxzY3JvbGxiYXJzPXllcyxyZXNpemFibGU9eWVzLGNvcHloaXN0b3J5PXllcyxXaWR0aD0xODUsSGVpZ2h0PTczJyk7ZAIEDxYCHwAFhgI8ZGl2IGNsYXNzPSJJbm5ob2xkSW5ncmVzcyIgc3R5bGU9ImZvbnQtd2VpZ2h0OiBib2xkOyI+DQo8cD48c3Ryb25nPlNhbWV0aW5nZXQgbHlzZXIgbWVkIGRldHRlIHV0IGlkcmV0dHNzdGlwZW5kIGZvciBzYW1pc2sgdW5nZG9tLiBNJmFyaW5nO2xldCBtZWQgaWRyZXR0c3RpcGVuZGV0IGVyICZhcmluZzsgbW90aXZlcmUgdW5nZSBpZHJldHRzdXQmb3NsYXNoO3ZlcmUgdGlsIHNhdHNpbmcgcCZhcmluZzsgaWRyZXR0Ljwvc3Ryb25nPjwvcD4NCjwvZGl2Pg0KZAIIDxYCHwAFhwY8ZGl2IGNsYXNzPSJJbm5ob2xkVGVrc3QiIHN0eWxlPSIiPg0KPHA+RGV0IHRpbGRlbGVzIHRvIHN0aXBlbmRlciAmYWdyYXZlOyBrciA1MCAwMDAuIFN0aXBlbmRldCBza2FsIGcmYXJpbmc7IHRpbCBlbmtlbHR1dCZvc2xhc2g7dmVyZS4gRGUgc29tIG1vdHRhciBzdGlwZW5kZXQgbSZhcmluZzsgdiZhZWxpZztyZSBtZWxsb20gMTYgb2cgMjUgJmFyaW5nO3IgZGV0ICZhcmluZztyZXQgc3RpcGVuZGV0IHRpbGRlbGVzLCBvZyBtJmFyaW5nOyB2JmFlbGlnO3JlIHRpbGtueXR0ZXQgZXQgaWRyZXR0c2xhZy8tb3JnYW5pc2Fzam9uLjwvcD4NCjxwPjxzdHJvbmc+UyZvc2xhc2g7a25hZHNmcmlzdCBlciBmb3JsZW5nZXQgdGlsIDEyLiBva3RvYmVyIDIwMTAuPC9zdHJvbmc+PC9wPg0KPHA+PHN0cm9uZz5EaXNzZSBoYXIgdGlkbGlnZXJlIG1vdHRhdHQgc3RpcGVuZDogPC9zdHJvbmc+PC9wPg0KPHA+PHN0cm9uZz4yMDA5OjxiciAvPjwvc3Ryb25nPk1hcnRpbiBIYW5zc2VuIExpbGxldmlrIChmcmlpZHJldHQpPGJyIC8+QWlsYSBFbWlsaWUgU2FycmUgKGh1bmRla2omb3NsYXNoO3JpbmcpPGJyIC8+PGJyIC8+PHN0cm9uZz4yMDA4OjxiciAvPjwvc3Ryb25nPkZpbm4gSCZhcmluZztnZW4gS3JvZ2ggKHNraSk8YnIgLz5PZGQgSXNhayBLYXBwZmplbGwgKGp1ZG8pPGJyIC8+PGJyIC8+PHN0cm9uZz4yMDA3OjxiciAvPjwvc3Ryb25nPk9kYSBPbnN0YWQgVXRzaSAoZnJpaWRyZXR0KTxiciAvPlNpdiBBbmphIE1pZW5uYSAodGFla3dvbmRvKTwvcD4NCjwvZGl2Pg0KZAIKD2QWAmYPZBYIAgEPFgIfAAUMUHVibGlzZXJ0IGF2ZAIDDw8WAh4HVmlzaWJsZWhkZAIFDxYCHwAFEUhvbG1ncmVuLCBIYW5uZS4gZAINDxYCHwAFF1Npc3QgZW5kcmV0ICAxMC4wOS4yMDEwZAIMD2QWAmYPZBYCZg9kFgYCAQ8WAh8FaGQCAw8WAh8FaBYCAgEPZBYCZg9kFgYCAg9kFgRmD2QWAmYPEGRkFgBkAgEPZBYCZg88KwAJAGQCAw9kFgRmD2QWAgIBDxBkZBYAZAIBD2QWAmYPPCsACQBkAgQPZBYCZg9kFgQCAQ8PFgYfAGUfAQUNQnJ1a2VyTWVsZGluZx8CAgJkZAIDDw8WAh8AZWRkAgUPZBYCAgEPZBYKZg88KwAJAGQCAg88KwAJAGQCBA88KwAJAQAPFgQeCERhdGFLZXlzFgAeC18hSXRlbUNvdW50AgFkFgICAQ9kFgYCAQ8PFgIeDUFsdGVybmF0ZVRleHQFCUFydGlra2VsIGRkAgMPDxYEHwNlHwBlZGQCBQ8WAh8ABXggPGEgY2xhc3M9IklubmhvbGRMaW5rIiB0aXRsZT0iIiAgaHJlZj0iL2FydGlra2VsLmFzcHg/TUlkMT0zNDQ4JmFtcDtBSWQ9MzM5NyI+SWRyZXR0c3N0aXBlbmQ6IHMmIzI0ODtrbmFkc2tyaXRlcmllcjwvYT5kAgYPPCsACQBkAgoPPCsACQBkZN5GqmbCMeyPjMqDtE7uu4Dm8tXM />


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

		
    

<div id=ctl00_MidtSone_ucArtikkel_ctl00_pnlArtikkel class=artikkel artikkelmal_5>
	<h1 id=tittel class=InnholdOverskrift >
Sametingets idrettsstipend – forlenget søknadsfrist 12.10.2010'"/>
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
<xsl:variable name="mainlang" select="''"/>

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
