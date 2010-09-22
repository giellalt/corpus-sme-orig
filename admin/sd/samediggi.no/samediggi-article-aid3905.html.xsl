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
<xsl:variable name="filename" select="'http://www.sametinget.no/artikkel.aspx?MId1=3450&amp;AId=3905&amp;Print=1'"/>
<xsl:variable name="title" select="'Ledig stilling i Sametinget med søknadsfrist 08.10.10 - Sámediggi Sametinget
</title></head>

<body id=ctl00_Body style=background-color:white>
	<form name=aspnetForm method=post action=artikkel.aspx?MId1=3450&amp;amp;AId=3905&amp;amp;Print=1 id=aspnetForm style=width:90%>
<input type=hidden name=__VIEWSTATE id=__VIEWSTATE value=/wEPDwULLTEyNjc4NzYyNTQPZBYCZg9kFgICAw9kFgICAw9kFgICAQ9kFgICAQ9kFgICAQ9kFgJmD2QWAgICD2QWAmYPZBYCZg9kFgJmD2QWCmYPFgIeBFRleHQFbDxoMSBpZD0idGl0dGVsIiBjbGFzcz0iSW5uaG9sZE92ZXJza3JpZnQiID4NCkxlZGlnIHN0aWxsaW5nIGkgU2FtZXRpbmdldCBtZWQgc8O4a25hZHNmcmlzdCAwOC4xMC4xMA0KPC9oMT4NCmQCAg8WAh8ABboDPGRpdiBjbGFzcz0iSW5uaG9sZEluZ3Jlc3MiIHN0eWxlPSIiPg0KPHA+PHN0cm9uZz5BcmtpdGVrdCAtIGZhc3Qgc3RpbGxpbmcgLSByPC9zdHJvbmc+PHN0cm9uZz5lZi5uci4gMTAvNDg1NTxiciAvPjwvc3Ryb25nPlNhbWV0aW5nZXQgaGFyIGVuIGxlZGlnIGZhc3Qgc3RpbGxpbmcgc29tIHImYXJpbmc7ZGdpdmVyL3NlbmlvcnImYXJpbmc7ZGdpdmVyIG1lZCBzbmFybGlnIHRpbHRyZWRlbHNlLiBBcmJlaWRzc3RlZCBlciBldHQgYXYgU2FtZXRpbmdldHMga29udG9yc3RlZGVyLiA8YnIgLz48YnIgLz5TJm9zbGFzaDtrbmFkIHNlbmRlcyB2aWEgdiZhcmluZztydCBkaWdpdGFsZSBzJm9zbGFzaDtrbmFkc3NlbnRlcjogPGEgaHJlZj0iaHR0cDovL2Utc2tqZW1hLm5vL3NhbWV0aW5nZXQiPmh0dHA6Ly9lLXNramVtYS5uby9zYW1ldGluZ2V0PC9hPi48L3A+DQo8L2Rpdj4NCmQCBg8WAh8ABYMaPGRpdiBjbGFzcz0iSW5uaG9sZFRla3N0IiBzdHlsZT0iIj4NCjxwPjxzdHJvbmc+PGJyIC8+QXJraXRla3QgLSBmYXN0IHN0aWxsaW5nIC0gcmVmLm5yLiAxMC80ODU1PGJyIC8+PGJyIC8+PC9zdHJvbmc+U2FtZXRpbmdldCBoYXIgbGVkaWcgZW4gZmFzdCBzdGlsbGluZyBzb20gciZhcmluZztkZ2l2ZXIvc2VuaW9yciZhcmluZztkZ2l2ZXIgbWVkIHNuYXJsaWcgdGlsdHJlZGVsc2UuIEFyYmVpZHNzdGVkIGVyIGV0dCBhdiBTYW1ldGluZ2V0cyBrb250b3JzdGVkZXIuPGJyIC8+PGJyIC8+U3RpbGxpbmdlbnMgcHJpbSZhZWxpZztyZSBhcmJlaWRzb3BwZ2F2ZXIgZXIgc2Frc2JlaGFuZGxpbmcgaW5uZW4gc2FtaXNrIGt1bHR1cm1pbm5lZm9ydmFsdG5pbmcgbWVkIHZla3QgcCZhcmluZzsgYnlnbmluZ3N2ZXJuLiBTdGlsbGluZ2VuIGthbiBvZ3MmYXJpbmc7IGJsaSB0aWxsYWd0IGFuZHJlIG9wcGdhdmVyIGtueXR0ZXQgdGlsIFNhbWV0aW5nZXRzIHZpcmtzb21oZXQsIGhlcnVuZGVyIHByb3NqZWt0dXR2aWtsaW5nIGZvciBzYW1pc2sgYnlnbmluZ3N2ZXJuIG9nIGZvcnZhbHRuaW5nc3BsYW5lciBmb3IgdmVybmVvbXImYXJpbmc7ZGVyLjxiciAvPjxiciAvPlN0aWxsaW5nZW5lICZvc2xhc2g7bnNrZXMgZm9ydHJpbm5zdmlzIGJlc2F0dCBhdiBlbiBwZXJzb24gbWVkIGgmb3NsYXNoO3llcmUgdXRkYW5uaW5nIGZyYSBoJm9zbGFzaDtnc2tvbGUvdW5pdmVyc2l0ZXQsIGZvcnRyaW5uc3ZpcyBhcmtpdGVrdHV0ZGFubmluZyBwJmFyaW5nOyBtYXN0ZXItL2hvdmVkZmFnc25pdiZhcmluZzssIHJlbGV2YW50IGVyZmFyaW5nIG9nIGt1bm5za2FwZXIgaSBicnVrIGF2IEdJUy9HUFMvUERBL1NFRlJBSy4gS3VubnNrYXBlciBvbSBzYW1pc2tlIHNhbWZ1bm5zZm9yaG9sZCBvZyBpIHNhbWlzayBzcHImYXJpbmc7ayB2aWwgYmxpIHZla3RsYWd0LiBJIHRpbGxlZ2cgdmlsIGRldCBibGkgbGFndCB2ZWt0IHAmYXJpbmc7IGdvZGUgZmFnbGlnZSBrdmFsaWZpa2Fzam9uZXIsIHNhbWFyYmVpZHMtIG9nIGtvbW11bmlrYXNqb25zZXZuZXIsIGhlcnVuZGVyIHNrcmlmdGxpZyBmcmVtc3RpbGxpbmdzZXZuZSwgZXZuZSB0aWwgc2VsdnN0ZW5kaWcgb2cgbSZhcmluZztscmV0dGV0IGFyYmVpZCBvZyBzZXJ2aWNlaW5uc3RpbGxpbmcuPGJyIC8+PGJyIC8+U3RpbGxpbmdlbiBlciBwbGFzc2VydCBpIHN0aWxsaW5nc2tvZGUgMTQzNCByJmFyaW5nO2RnaXZlciBlbGxlciAxMzY0IHNlbmlvcnImYXJpbmc7ZGdpdmVyLjxiciAvPjxiciAvPk4mYWVsaWc7cm1lcmUgb3BwbHlzbmluZ2VyIG9tIHN0aWxsaW5nZW4ga2FuIGYmYXJpbmc7cyB2ZWQgaGVudmVuZGVsc2UgdGlsIE1hZ25lIFN2aW5lbmcsIEhlZ2UgRmplbGxoZWltIFNhcnJlIGVsbGVyIEhhbnMgQXJpbGQgSG9sbWVzdHJhbmQsIHRsZi4gNzggNDcgNDAgMDAuPGJyIC8+PGJyIC8+U2FtZXRpbmdldHMgYWRtaW5pc3RyYXNqb24gc2thbCBpIHN0Jm9zbGFzaDtyc3QgbXVsaWcgZ3JhZCBnamVuc3BlaWxlIG1hbmdmb2xkZXQgaSBiZWZvbGtuaW5nZW4uIERldCBlciBldCBwZXJzb25hbHBvbGl0aXNrIG0mYXJpbmc7bCAmYXJpbmc7IG9wcG4mYXJpbmc7IGJhbGFuc2VydCBhbGRlcnMtIG9nIGtqJm9zbGFzaDtubnNzYW1tZW5zZXR0aW5nLCBvZyAmYXJpbmc7IHJla3J1dHRlcmUgcGVyc29uZXIgbWVkIG1pbm9yaXRldHMtIG9nIHVyZm9sa3NiYWtncnVubi48YnIgLz48YnIgLz5TYW1ldGluZ2V0IGhhciBhdnRhbGUgb20gSW5rbHVkZXJlbmRlIEFyYmVpZHNsaXYgKElBKSwgb2cgbGVnZ2VyIHZla3QgcCZhcmluZzsgdGlscmV0dGVsZWdnaW5nIGF2IGFyYmVpZHNmb3Job2xkZW5lIGZvciBkZW4gZW5rZWx0ZSBtZWRhcmJlaWRlci48YnIgLz48YnIgLz5Gb3IgYWxsZSBib3NhdHQgaSBGaW5ubWFyayBvZyBOb3JkLVRyb21zIGdqZWxkZXIgbmVkc2tyaXZpbmcgYXYgc3R1ZGllbCZhcmluZztuIGkgU3RhdGVucyBsJmFyaW5nO25la2Fzc2UgbWVkIDEwICUgcHIgJmFyaW5nO3IgaW5udGlsIGtyIDI1LjAwMCwgcyZhZWxpZztyc2tpbHQgc2thdHRlZnJhZHJhZyBvZyBmb3JoJm9zbGFzaDt5ZXQgYmFybmV0cnlnZC4mbmJzcDsgRGlzc2UgZXIgZ2plbGRlbmRlIGlubnRpbCBTdG9ydGluZ2V0IG9tZ2omb3NsYXNoO3Igb3JkbmluZ2VuZS48YnIgLz48YnIgLz5BbnNhdHRlIGkgU2FtZXRpbmdldCBoYXIgZmxla3NpYmVsIGFyYmVpZHN0aWQuIFMmb3NsYXNoO2tlcmUgc29tIGlra2Uga2FuIHNhbWlzayB2ZWQgdGlsdHJlZGVsc2UsIGthbiBldHRlciBhdnRhbGUgbWVkIGFyYmVpZHNnaXZlciB0aWxwbGlrdGVzIG9wcGwmYWVsaWc7cmluZyBpIHNhbWlzayBzcHImYXJpbmc7ay48YnIgLz48YnIgLz5Gb3Imb3NsYXNoO3ZyaWcgdGlsc2V0dGVzIGFyYmVpZHN0YWtlcmUgZXR0ZXIgZ2plbGRlbmRlIGxvdmVyLCByZWdsZW1lbnQgb2cgb3ZlcmVuc2tvbXN0ZXIsIGhlcnVuZGVyIGwmb3NsYXNoO25uIG9nIHBlbnNqb24sIHNhbXQgNiBtbmQuIHByJm9zbGFzaDt2ZXRpZC4gRnJhIGwmb3NsYXNoO25uZW4gdHJla2tlcyAyICUgdGlsIFN0YXRlbnMgcGVuc2pvbnNrYXNzZS48YnIgLz48YnIgLz5JIGhlbmhvbGQgdGlsIG55IG9mZmVudGxpZ2hldHNsb3Yga2FuIG9wcGx5c25pbmdlciBvbSBzJm9zbGFzaDtrZXJlbiBibGkgb2ZmZW50bGlnZ2pvcnQgc2VsdiBvbSBzJm9zbGFzaDtrZXJlbiBoYXIgYW5tb2RldCBvbSAmYXJpbmc7IGlra2UgYmxpIG9wcGYmb3NsYXNoO3J0IHAmYXJpbmc7IHMmb3NsYXNoO2tlcmxpc3Rlbi48YnIgLz48YnIgLz48c3Ryb25nPlMmb3NsYXNoO2tuYWRzZnJpc3Q6PC9zdHJvbmc+IDxzdHJvbmc+MDguMTAuMTA8YnIgLz48L3N0cm9uZz48YnIgLz5TJm9zbGFzaDtrbmFkIHNlbmRlcyB2aWEgdiZhcmluZztydCBkaWdpdGFsZSBzJm9zbGFzaDtrbmFkc3NlbnRlcjogPGEgaHJlZj0iaHR0cDovL2Utc2tqZW1hLm5vL3NhbWV0aW5nZXQiPmh0dHA6Ly9lLXNramVtYS5uby9zYW1ldGluZ2V0PC9hPi48YnIgLz48YnIgLz5TJm9zbGFzaDtrZXJlIGJlcyBvcHBnaSByZWZlcmFuc2VudW1tZXIgcCZhcmluZzsgc3RpbGxpbmdlbjogPHN0cm9uZz4xMC80ODU1PC9zdHJvbmc+LiBCZWtyZWZ0ZWRlIGtvcGllciBhdiB2aXRuZW0mYXJpbmc7bCBvZyBhdHRlc3RlciBsZWdnZXMgdmVkIGRlbiBlbGVrdHJvbmlza2UgcyZvc2xhc2g7a25hZGVuIGVsbGVyIHNlbmRlcyBpIHBhcGlydmVyc2pvbiB0aWwgUyZhYWN1dGU7bWVkaWdnaSAtIFNhbWV0aW5nZXQsICZBYWN1dGU7dmpvdiZhYWN1dGU7cmdlYWlkbnUgNTAsIDk3MzAgSyZhYWN1dGU7ciZhYWN1dGU7JnNjYXJvbjtqb2hrYS9LYXJhc2pvay48L3A+DQo8L2Rpdj4NCmQCCA9kFgJmD2QWCAIBDxYCHwAFDFB1Ymxpc2VydCBhdmQCAw8PFgIeB1Zpc2libGVoZGQCBQ8WAh8ABRJFaXJhLCBFbGxlbiBBaW5hLiBkAg0PFgIfAAUXU2lzdCBlbmRyZXQgIDIyLjA5LjIwMTBkAgoPZBYCZg9kFgJmDxYCHwFoFgYCAQ8WAh8BaGQCAw8WAh8BaBYCAgEPZBYCZg9kFgYCAg9kFgRmD2QWAmYPEGRkFgBkAgEPZBYCZg88KwAJAGQCAw9kFgRmD2QWAgIBDxBkZBYAZAIBD2QWAmYPPCsACQBkAgQPZBYCZg9kFgQCAQ8PFgYfAGUeCENzc0NsYXNzBQ1CcnVrZXJNZWxkaW5nHgRfIVNCAgJkZAIDDw8WAh8AZWRkAgUPFgIfAWgWAgIBD2QWCmYPPCsACQBkAgIPPCsACQBkAgQPPCsACQBkAgYPPCsACQBkAgoPPCsACQBkZAqmiLG4sMV+g8MRHdJJBMfDrInW />


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
Ledig stilling i Sametinget med søknadsfrist 08.10.10'"/>
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
