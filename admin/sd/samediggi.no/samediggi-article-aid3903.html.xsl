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
<xsl:variable name="filename" select="'http://www.sametinget.no/artikkel.aspx?AId=3903&amp;Print=1'"/>
<xsl:variable name="title" select="'Sametingets plenumsmøte – september 2010  - Sámediggi Sametinget
</title></head>

<body id=ctl00_Body style=background-color:white>
	<form name=aspnetForm method=post action=artikkel.aspx?AId=3903&amp;amp;Print=1 id=aspnetForm style=width:90%>
<input type=hidden name=__VIEWSTATE id=__VIEWSTATE value=/wEPDwULLTEyNjc4NzYyNTQPZBYCZg9kFgICAw9kFgICAw9kFgICAQ9kFgICAQ9kFgICAQ9kFgJmD2QWAgICD2QWAmYPZBYCZg9kFgJmD2QWDGYPFgIeBFRleHQFYjxoMSBpZD0idGl0dGVsIiBjbGFzcz0iSW5uaG9sZE92ZXJza3JpZnQiID4NClNhbWV0aW5nZXRzIHBsZW51bXNtw7h0ZSDigJMgc2VwdGVtYmVyIDIwMTAgDQo8L2gxPg0KZAICD2QWAmYPDxYEHghDc3NDbGFzcwUbYXJ0aWtrZWxiaWxkZSBiaWxkZV92ZW5zdHJlHgRfIVNCAgJkFgICAQ8PFgQfAAWcATxpbWcgYm9yZGVyPSIwIiAgIHNyYz0iL2t1bmRlL2JpbGRlci9MaXRlX1NhbWV0aW5nZXQgLSBzYW1ldGluZ3NhbGVuLmpwZyIgYWxpZ249InRvcCIgYWx0PSJTYW1ldGluZ2V0IC0gc2FtZXRpbmdzYWxlbiIgdGl0bGU9IlNhbWV0aW5nZXQgLSBzYW1ldGluZ3NhbGVuIiAvPh4LTmF2aWdhdGVVcmwFEmphdmFzY3JpcHQ6dm9pZCgwKRYCHgdPbkNsaWNrBcUBd2luZG93Lm9wZW4oJy9iaWxkZXZpcy5hc3A/QmlsZGVJZD0xNDAmVmlzPXN0b3ImRWtzYWt0PXRydWUnLCdob21lJywndG9vbGJhcj1ubyxsb2NhdGlvbj1ubyxkaXJlY3Rvcmllcz1ubyxzdGF0dXM9bm8sbWVudWJhcj1ubyxzY3JvbGxiYXJzPXllcyxyZXNpemFibGU9eWVzLGNvcHloaXN0b3J5PXllcyxXaWR0aD0xMDI0LEhlaWdodD02ODMnKTtkAgQPFgIfAAWbAjxkaXYgY2xhc3M9IklubmhvbGRJbmdyZXNzIiBzdHlsZT0iIj4NCjxwPjxzdHJvbmc+U2FtZXRpbmdldHMgcGxlbnVtc20mb3NsYXNoO3RlIGF2aG9sZGVzIGkgZiZvc2xhc2g7bGdlIG0mb3NsYXNoO3RlcGxhbmVuIDI3LiAtIDMwLiBzZXB0ZW1iZXIgMjAxMC4gUGxlbnVtc20mb3NsYXNoO3RldCBzdGFydGVyIHRpcnNkYWcgMjguIHNlcHRlbWJlciBrbC4gMDkuMDAgb2cgYXZzbHV0dGVzIHRvcnNkYWcgMzAuIHNlcHRlbWJlciBpbm5lbiBrbC4gMTUuMDAuPC9zdHJvbmc+PC9wPg0KPC9kaXY+DQpkAggPFgIfAAXcCjxkaXYgY2xhc3M9IklubmhvbGRUZWtzdCIgc3R5bGU9IiI+DQo8cD5NYW5kYWcgMjcuIHNlcHRlbWJlciBlciBzYXR0IGF2IHRpbCBncnVwcGVtJm9zbGFzaDt0ZXIgb2cgb25zZGFnIDI5LnNlcHRlbWJlciB2aWwgZGV0IGJsaSBhdmhvbGR0IG1pbmlzZW1pbmFyIG9tIG55ZSB0aWxkZWxpbmdza3JpdGVyaWVyIGZvciBTYW1ldGluZ2V0cyB0b3NwciZhcmluZztrbGlnaGV0c21pZGxlciBmcmEga2wuIDA5LjAwIC0gMTIuMDAuPC9wPg0KPHA+U2Frc2xpc3RlOjwvcD4NCjxwPi0gMjcvMTAgS29uc3RpdHVlcmluZy48YnIgLz48YnIgLz4tIDI4LzEwIFNhbWV0aW5nc3ImYXJpbmc7ZGV0cyBiZXJldG5pbmcgb20gdmlya3NvbWhldGVuLjxiciAvPjxiciAvPi0gMjkvMTAgU3Amb3NsYXNoO3JzbSZhcmluZztsIHRpbCBTYW1ldGluZ3NyJmFyaW5nO2RldC48YnIgLz48YnIgLz4tJm5ic3A7MzAvMTAgS3VubmdqJm9zbGFzaDtyaW5nIGF2IG55ZSBzYWtlci48YnIgLz48YnIgLz4tIDMxLzEwIFNhbWV0aW5nZXRzIGlubnNwaWxsIHRpbCByZWluZHJpZnRzYXZ0YWxlIGZvciAyMDExLzIwMTIuPGJyIC8+PGJyIC8+LSAzMi8xMCBTYW1ldGluZ2V0cyBtJm9zbGFzaDt0ZXBsYW4gMjAxMSBvZyAyMDEyIC0gZW5kcmluZ2VyLjxiciAvPjxiciAvPi0gMzMvMTAgVmVybmVwcm9zZXNzZXIgaSBzYW1pc2tlIG9tciZhcmluZztkZXIuIDxiciAvPjxiciAvPi0gMzQvMTAgTiZhZWxpZztyaW5nc2F2dGFsZSBmb3IgZHVvZGppIDAxLmphbnVhciAtIDMxLmRlc2VtYmVyIDIwMTEgLSBnb2RramVubmluZy48YnIgLz48YnIgLz4tIDM1LzEwIFN0cmF0ZWdpcGxhbiBmb3Igc2FtaXNr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 />


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
Sametingets plenumsmøte – september 2010'"/>
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
