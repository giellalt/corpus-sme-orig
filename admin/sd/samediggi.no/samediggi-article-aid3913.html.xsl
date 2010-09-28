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
<xsl:variable name="filename" select="'http://www.sametinget.no/artikkel.aspx?MId1=1042&amp;AId=3913&amp;Print=1'"/>
<xsl:variable name="title" select="'Vi streamer plenumsmøtet direkte på nett - diggi.no
</title></head>

<body id=ctl00_Body style=background-color:white>
	<form name=aspnetForm method=post action=artikkel.aspx?MId1=1042&amp;amp;AId=3913&amp;amp;Print=1 id=aspnetForm style=width:90%>
<input type=hidden name=__VIEWSTATE id=__VIEWSTATE value=/wEPDwULLTEyNjc4NzYyNTQPZBYCZg9kFgICAw9kFgICAw9kFgICAQ9kFgICAQ9kFgICAQ9kFgJmD2QWAgICD2QWAmYPZBYCZg9kFgJmD2QWDGYPFgIeBFRleHQFYDxoMSBpZD0idGl0dGVsIiBjbGFzcz0iSW5uaG9sZE92ZXJza3JpZnQiID4NClZpIHN0cmVhbWVyIHBsZW51bXNtw7h0ZXQgZGlyZWt0ZSBww6UgbmV0dA0KPC9oMT4NCmQCAg9kFgJmDw8WBB4IQ3NzQ2xhc3MFG2FydGlra2VsYmlsZGUgYmlsZGVfdmVuc3RyZR4EXyFTQgICZBYCAgEPDxYEHwAFnAE8aW1nIGJvcmRlcj0iMCIgICBzcmM9Ii9rdW5kZS9iaWxkZXIvTGl0ZV9TYW1ldGluZ2V0IC0gc2FtZXRpbmdzYWxlbi5qcGciIGFsaWduPSJ0b3AiIGFsdD0iU2FtZXRpbmdldCAtIHNhbWV0aW5nc2FsZW4iIHRpdGxlPSJTYW1ldGluZ2V0IC0gc2FtZXRpbmdzYWxlbiIgLz4eC05hdmlnYXRlVXJsBRJqYXZhc2NyaXB0OnZvaWQoMCkWAh4HT25DbGljawXFAXdpbmRvdy5vcGVuKCcvYmlsZGV2aXMuYXNwP0JpbGRlSWQ9MTQwJlZpcz1zdG9yJkVrc2FrdD10cnVlJywnaG9tZScsJ3Rvb2xiYXI9bm8sbG9jYXRpb249bm8sZGlyZWN0b3JpZXM9bm8sc3RhdHVzPW5vLG1lbnViYXI9bm8sc2Nyb2xsYmFycz15ZXMscmVzaXphYmxlPXllcyxjb3B5aGlzdG9yeT15ZXMsV2lkdGg9MTAyNCxIZWlnaHQ9NjgzJyk7ZAIEDxYCHwAFhAI8ZGl2IGNsYXNzPSJJbm5ob2xkSW5ncmVzcyIgc3R5bGU9IiI+DQo8cD5GJm9zbGFzaDtsZyBsaW5rZW4gdW5kZXIgb2cgc2UgU2FtZXRpbmdldHMgcGxlbnVtc20mb3NsYXNoO3RlIGRpcmVrdGUgcCZhcmluZzsgbmV0dC48L3A+DQo8cD48YSBocmVmPSJodHRwOi8vc2FtZXRpbmdldC5leHNzLm5vL2JydWtlci9wYWdlcy9saXZlLmFzcHgiPmh0dHA6Ly9zYW1ldGluZ2V0LmV4c3Mubm8vYnJ1a2VyL3BhZ2VzL2xpdmUuYXNweDwvYT48L3A+DQo8L2Rpdj4NCmQCCA8WAh8ABf8GPGRpdiBjbGFzcz0iSW5uaG9sZFRla3N0IiBzdHlsZT0iIj4NCjxwPlNha3NsaXN0ZTo8L3A+DQo8cD4tIDI3LzEwIEtvbnN0aXR1ZXJpbmcuPGJyIC8+PGJyIC8+LSAyOC8xMCBTYW1ldGluZ3NyJmFyaW5nO2RldHMgYmVyZXRuaW5nIG9tIHZpcmtzb21oZXRlbi48YnIgLz48YnIgLz4tIDI5LzEwIFNwJm9zbGFzaDtyc20mYXJpbmc7bCB0aWwgU2FtZXRpbmdzciZhcmluZztkZXQuPGJyIC8+PGJyIC8+LSZuYnNwOzMwLzEwIEt1bm5naiZvc2xhc2g7cmluZyBhdiBueWUgc2FrZXIuPGJyIC8+PGJyIC8+LSAzMS8xMCBTYW1ldGluZ2V0cyBpbm5zcGlsbCB0aWwgcmVpbmRyaWZ0c2F2dGFsZSBmb3IgMjAxMS8yMDEyLjxiciAvPjxiciAvPi0gMzIvMTAgU2FtZXRpbmdldHMgbSZvc2xhc2g7dGVwbGFuIDIwMTEgb2cgMjAxMiAtIGVuZHJpbmdlci48YnIgLz48YnIgLz4tIDMzLzEwIFZlcm5lcHJvc2Vzc2VyIGkgc2FtaXNrZSBvbXImYXJpbmc7ZGVyLiA8YnIgLz48YnIgLz4tIDM0LzEwIE4mYWVsaWc7cmluZ3NhdnRhbGUgZm9yIGR1b2RqaSAwMS5qYW51YXIgLSAzMS5kZXNlbWJlciAyMDExIC0gZ29ka2plbm5pbmcuPGJyIC8+PGJyIC8+LSAzNS8xMCBTdHJhdGVnaXBsYW4gZm9yIHNhbWlzayBraXJrZWxpdi48YnIgLz48YnIgLz4tIDM2LzEwIFJldmlkZXJ0IHNhbWFyYmVpZHNhdnRhbGUgbWVsbG9tIFNhbWV0aW5nZXQgb2cgZnlsa2Vza29tbXVuZW5lIGkgcyZvc2xhc2g7cnNhbWlzayBvbXImYXJpbmc7ZGUgMjAxMC0yMDEzLiZuYnNwOzxiciAvPjxiciAvPi0gMzcvMTAgRGVsZWdlcmluZyBhdiBmdWxsbWFrdCB0aWwgU2FtZXRpbmdzciZhcmluZztkZXQgdGlsIGZhc3RzZXR0ZWxzZSBhdiBpbm5ob2xkIGkgbCZhZWxpZztyZXBsYW5lci4mbmJzcDs8L3A+DQo8L2Rpdj4NCmQCCg9kFgJmD2QWCAIBDxYCHwAFDFB1Ymxpc2VydCBhdmQCAw8PFgIeB1Zpc2libGVoZGQCBQ8WAh8ABRFIb2xtZ3JlbiwgSGFubmUuIGQCDQ8WAh8ABRdTaXN0IGVuZHJldCAgMjguMDkuMjAxMGQCDA9kFgJmD2QWAmYPZBYGAgEPFgIfBWhkAgMPFgIfBWgWAgIBD2QWAmYPZBYGAgIPZBYEZg9kFgJmDxBkZBYAZAIBD2QWAmYPPCsACQBkAgMPZBYEZg9kFgICAQ8QZGQWAGQCAQ9kFgJmDzwrAAkAZAIED2QWAmYPZBYEAgEPDxYGHwBlHwEFDUJydWtlck1lbGRpbmcfAgICZGQCAw8PFgIfAGVkZAIFD2QWAgIBD2QWCmYPPCsACQBkAgIPPCsACQBkAgQPPCsACQEADxYEHghEYXRhS2V5cxYAHgtfIUl0ZW1Db3VudAIBZBYCAgEPZBYGAgEPDxYCHg1BbHRlcm5hdGVUZXh0BQlBcnRpa2tlbCBkZAIDDw8WBB8DZR8AZWRkAgUPFgIfAAWLASA8YSBjbGFzcz0iSW5uaG9sZExpbmsiIHRpdGxlPSIiICBocmVmPSIvYXJ0aWtrZWwuYXNweD9NSWQxPTk1NyZhbXA7QUlkPTM5MDMiPkFydGlra2VsICAtIFNhbWV0aW5nZXRzIHBsZW51bXNtJiMyNDg7dGUg4oCTIHNlcHRlbWJlci4uLjwvYT5kAgYPPCsACQBkAgoPPCsACQBkZJRxfteEV7Bl1E9UK+H1K1BdJ+aj />


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
Vi streamer plenumsmøtet direkte på nett'"/>
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
