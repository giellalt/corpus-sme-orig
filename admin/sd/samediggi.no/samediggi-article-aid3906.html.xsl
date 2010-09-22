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
<xsl:variable name="filename" select="'http://www.sametinget.no/artikkel.aspx?MId1=3450&amp;AId=3906&amp;Print=1'"/>
<xsl:variable name="title" select="'Ledig stilling i Sametinget med søknadsfrist: 08.10.10 - Sámediggi Sametinget
</title></head>

<body id=ctl00_Body style=background-color:white>
	<form name=aspnetForm method=post action=artikkel.aspx?MId1=3450&amp;amp;AId=3906&amp;amp;Print=1 id=aspnetForm style=width:90%>
<input type=hidden name=__VIEWSTATE id=__VIEWSTATE value=/wEPDwULLTEyNjc4NzYyNTQPZBYCZg9kFgICAw9kFgICAw9kFgICAQ9kFgICAQ9kFgICAQ9kFgJmD2QWAgICD2QWAmYPZBYCZg9kFgJmD2QWCmYPFgIeBFRleHQFbTxoMSBpZD0idGl0dGVsIiBjbGFzcz0iSW5uaG9sZE92ZXJza3JpZnQiID4NCkxlZGlnIHN0aWxsaW5nIGkgU2FtZXRpbmdldCBtZWQgc8O4a25hZHNmcmlzdDogMDguMTAuMTANCjwvaDE+DQpkAgIPFgIfAAXPAzxkaXYgY2xhc3M9IklubmhvbGRJbmdyZXNzIiBzdHlsZT0iIj4NCjxwPjxzdHJvbmc+S29tbXVuaWthc2pvbnNyJmFyaW5nO2RnaXZlciAtIGZhc3Qgc3RpbGxpbmcgLSByZWYubnIuIDEwLzQ4NTY8YnIgLz48L3N0cm9uZz5TYW1ldGluZ2V0IGhhciBsZWRpZyBlbiBmYXN0IHN0aWxsaW5nIHNvbSByJmFyaW5nO2RnaXZlci9zZW5pb3JyJmFyaW5nO2RnaXZlciBtZWQgc25hcmxpZyB0aWx0cmVkZWxzZS4gQXJiZWlkc3N0ZWQgZXIgU2FtZXRpbmdldHMga29udG9yc3RlZCBpIEthcmFzam9rIGVsbGVyIEthdXRva2Vpbm8uPGJyIC8+PGJyIC8+UyZvc2xhc2g7a25hZCBzZW5kZXMgdmlhIHYmYXJpbmc7cnQgZGlnaXRhbGUgcyZvc2xhc2g7a25hZHNzZW50ZXI6IDxhIGhyZWY9Imh0dHA6Ly9lLXNramVtYS5uby9zYW1ldGluZ2V0Ij5odHRwOi8vZS1za2plbWEubm8vc2FtZXRpbmdldDwvYT4uPC9wPg0KPC9kaXY+DQpkAgYPFgIfAAX0HDxkaXYgY2xhc3M9IklubmhvbGRUZWtzdCIgc3R5bGU9IiI+DQo8cD48c3Ryb25nPjxiciAvPktvbW11bmlrYXNqb25zciZhcmluZztkZ2l2ZXIgLSBmYXN0IHN0aWxsaW5nIC0gcmVmLm5yLiAxMC80ODU2PGJyIC8+PGJyIC8+PC9zdHJvbmc+U2FtZXRpbmdldCBoYXIgbGVkaWcgZW4gZmFzdCBzdGlsbGluZyBzb20gciZhcmluZztkZ2l2ZXIvc2VuaW9yciZhcmluZztkZ2l2ZXIgbWVkIHNuYXJsaWcgdGlsdHJlZGVsc2UuIEFyYmVpZHNzdGVkIGVyIFNhbWV0aW5nZXRzIGtvbnRvcnN0ZWQgaSBLYXJhc2pvayBlbGxlciBLYXV0b2tlaW5vLjxiciAvPjxiciAvPlN0aWxsaW5nZW5zIHByaW0mYWVsaWc7cmUgYXJiZWlkc29wcGdhdmVyIGVyIHRpbGtueXR0ZXQga29tbXVuaWthc2pvbnNhdmRlbGluZ2VuIHNvbSBoYXIgYW5zdmFyIGZvciBrb21tdW5pa2Fzam9uIG9nIGluZm9ybWFzam9uIHJ1bmR0IFNhbWV0aW5nZXRzIHZpcmtzb21oZXQuPGJyIC8+PGJyIC8+PHN0cm9uZz5BcmJlaWRzb3BwZ2F2ZXIgZXI6IDxiciAvPjwvc3Ryb25nPi0gbnloZXRzLSBvZyBhcnRpa2tlbHByb2R1a3Nqb24gdGlsIFNhbWV0aW5nZXRzIGludGVyLSBvZyBpbnRyYW5ldHRzaWRlLCBzYW10IGFuZHJlPGJyIC8+Jm5ic3A7IHB1Ymxpa2Fzam9uZXIgc29tIFNhbWV0aW5nZXQgdXRnaXIuPGJyIC8+LSBvcHBkYXRlcmUgb2cgdmlkZXJldXR2aWtsZSBTYW1ldGluZ2V0cyB0aWxzdGVkZXYmYWVsaWc7cmVsc2UgaSBkZSBzb3NpYWxlIG1lZGllbmUuPGJyIC8+LSBtZWRpZXImYXJpbmc7ZGdpdm5pbmcsIG1lZGllb3ZlcnYmYXJpbmc7a2luZywgbWVkaWVrb250YWt0LCBwbGFubGVnZ2luZyBvZyZuYnNwOzxiciAvPiZuYnNwOyZuYnNwO2dqZW5ub21mJm9zbGFzaDtyaW5nIGF2IG1lZGlldXRzcGlsbC48YnIgLz4tIFN0cmF0ZWdpdXR2aWtsaW5nIG9nIG9tZCZvc2xhc2g7bW1lYnlnZ2luZy48YnIgLz4tIEtyaXNla29tbXVuaWthc2pvbiBvZyBiZXJlZHNrYXAuIDxiciAvPjxiciAvPlN0aWxsaW5nZW4gJm9zbGFzaDtuc2tlcyBmb3J0cmlubnN2aXMgYmVzYXR0IGF2IGVuIHBlcnNvbiBtZWQgbWluaW11bSAzICZhcmluZztycyByZWxldmFudCBoJm9zbGFzaDt5ZXJlIHV0ZGFubmluZyBmcmEgdW5pdmVyc2l0ZXQgZWxsZXIgaCZvc2xhc2g7Z3Nrb2xlIGlubmVuIGtvbW11bmlrYXNqb24gZWxsZXIgam91cm5hbGlzdGlrayBvZyByZWxldmFudCBhcmJlaWRzZXJmYXJpbmcuIFN0aWxsaW5nZW4ga3JldmVyIGtqZW5uc2thcCB0aWwgU2FtZXRpbmdldCBvZyBkZXQgc2FtaXNrZSBzYW1mdW5uZXQgb2cga3VubnNrYXBlciBvbSBwb2xpdGlrayBvZyBiZXNsdXRuaW5nc3Byb3Nlc3Nlci4gRGV0IHZpbCBvZ3MmYXJpbmc7IGJsaSBsYWd0IHZla3QgcCZhcmluZzsgZ29kZSBzYW1hcmJlaWRzLSBvZyBrb21tdW5pa2Fzam9uc2V2bmVyIG9nIGV2bmUgdGlsICZhcmluZzsgb3BwbiZhcmluZzsgcmVzdWx0YXRlciBpIHNhbWhhbmRsaW5nIG1lZCBhbmRyZS4gUGVyc29uZW4gc29tIGJsaXIgYW5zYXR0IG0mYXJpbmc7IGJlaGVyc2tlIHNrYW5kaW5hdmlzayBzcHImYXJpbmc7aywgc2FtaXNrIG9nIGVuZ2Vsc2suPGJyIC8+PGJyIC8+U3RpbGxpbmdlbiBlciBwbGFzc2VydCBpIHN0aWxsaW5nc2tvZGUgMTQzNCByJmFyaW5nO2RnaXZlciBlbGxlciAxMzY0IHNlbmlvcnImYXJpbmc7ZGdpdmVyLjxiciAvPjxiciAvPk4mYWVsaWc7cm1lcmUgb3BwbHlzbmluZ2VyIG9tIHN0aWxsaW5nZW4ga2FuIGYmYXJpbmc7cyB2ZWQgaGVudmVuZGVsc2UgdGlsIEphbiBSb2dlciAmT3NsYXNoO3N0YnksIHRsZi4gNzggNDcgNDAgMDAuPGJyIC8+PGJyIC8+U2FtZXRpbmdldHMgYWRtaW5pc3RyYXNqb24gc2thbCBpIHN0Jm9zbGFzaDtyc3QgbXVsaWcgZ3JhZCBnamVuc3BlaWxlIG1hbmdmb2xkZXQgaSBiZWZvbGtuaW5nZW4uIERldCBlciBldCBwZXJzb25hbHBvbGl0aXNrIG0mYXJpbmc7bCAmYXJpbmc7IG9wcG4mYXJpbmc7IGJhbGFuc2VydCBhbGRlcnMtIG9nIGtqJm9zbGFzaDtubnNzYW1tZW5zZXR0aW5nLCBvZyAmYXJpbmc7IHJla3J1dHRlcmUgcGVyc29uZXIgbWVkIG1pbm9yaXRldHMtIG9nIHVyZm9sa3NiYWtncnVubi48YnIgLz48YnIgLz5TYW1ldGluZ2V0IGhhciBhdnRhbGUgb20gSW5rbHVkZXJlbmRlIEFyYmVpZHNsaXYgKElBKSwgb2cgbGVnZ2VyIHZla3QgcCZhcmluZzsgdGlscmV0dGVsZWdnaW5nIGF2IGFyYmVpZHNmb3Job2xkZW5lIGZvciBkZW4gZW5rZWx0ZSBtZWRhcmJlaWRlci48YnIgLz48YnIgLz5Gb3IgYWxsZSBib3NhdHQgaSBGaW5ubWFyayBvZyBOb3JkLVRyb21zIGdqZWxkZXIgbmVkc2tyaXZpbmcgYXYgc3R1ZGllbCZhcmluZztuIGkgU3RhdGVucyBsJmFyaW5nO25la2Fzc2UgbWVkIDEwICUgcHIgJmFyaW5nO3IgaW5udGlsIGtyIDI1LjAwMCwgcyZhZWxpZztyc2tpbHQgc2thdHRlZnJhZHJhZyBvZyBmb3JoJm9zbGFzaDt5ZXQgYmFybmV0cnlnZC4mbmJzcDsgRGlzc2UgZXIgZ2plbGRlbmRlIGlubnRpbCBTdG9ydGluZ2V0IG9tZ2omb3NsYXNoO3Igb3JkbmluZ2VuZS48YnIgLz48YnIgLz5BbnNhdHRlIGkgU2FtZXRpbmdldCBoYXIgZmxla3NpYmVsIGFyYmVpZHN0aWQuIFMmb3NsYXNoO2tlcmUgc29tIGlra2Uga2FuIHNhbWlzayB2ZWQgdGlsdHJlZGVsc2UsIGthbiBldHRlciBhdnRhbGUgbWVkIGFyYmVpZHNnaXZlciB0aWxwbGlrdGVzIG9wcGwmYWVsaWc7cmluZyBpIHNhbWlzayBzcHImYXJpbmc7ay48YnIgLz48YnIgLz5Gb3Imb3NsYXNoO3ZyaWcgdGlsc2V0dGVzIGFyYmVpZHN0YWtlcmUgZXR0ZXIgZ2plbGRlbmRlIGxvdmVyLCByZWdsZW1lbnQgb2cgb3ZlcmVuc2tvbXN0ZXIsIGhlcnVuZGVyIGwmb3NsYXNoO25uIG9nIHBlbnNqb24sIHNhbXQgNiBtbmQuIHByJm9zbGFzaDt2ZXRpZC4gRnJhIGwmb3NsYXNoO25uZW4gdHJla2tlcyAyICUgdGlsIFN0YXRlbnMgcGVuc2pvbnNrYXNzZS48YnIgLz48YnIgLz5JIGhlbmhvbGQgdGlsIG55IG9mZmVudGxpZ2hldHNsb3Yga2FuIG9wcGx5c25pbmdlciBvbSBzJm9zbGFzaDtrZXJlbiBibGkgb2ZmZW50bGlnZ2pvcnQgc2VsdiBvbSBzJm9zbGFzaDtrZXJlbiBoYXIgYW5tb2RldCBvbSAmYXJpbmc7IGlra2UgYmxpIG9wcGYmb3NsYXNoO3J0IHAmYXJpbmc7IHMmb3NsYXNoO2tlcmxpc3Rlbi48YnIgLz48YnIgLz48c3Ryb25nPlMmb3NsYXNoO2tuYWRzZnJpc3Q6IDA4LjEwLjEwPGJyIC8+PC9zdHJvbmc+PGJyIC8+UyZvc2xhc2g7a25hZCBzZW5kZXMgdmlhIHYmYXJpbmc7cnQgZGlnaXRhbGUgcyZvc2xhc2g7a25hZHNzZW50ZXI6IDxhIGhyZWY9Imh0dHA6Ly9lLXNramVtYS5uby9zYW1ldGluZ2V0Ij5odHRwOi8vZS1za2plbWEubm8vc2FtZXRpbmdldDwvYT4uPGJyIC8+PGJyIC8+UyZvc2xhc2g7a2VyZSBiZXMgb3BwZ2kgcmVmZXJhbnNlbnVtbWVyIHAmYXJpbmc7IHN0aWxsaW5nZW46IDxzdHJvbmc+MTAvNDg1Njwvc3Ryb25nPi4gQmVrcmVmdGVkZSBrb3BpZXIgYXYgdml0bmVtJmFyaW5nO2wgb2cgYXR0ZXN0ZXIgbGVnZ2VzIHZlZCBkZW4gZWxla3Ryb25pc2tlIHMmb3NsYXNoO2tuYWRlbiBlbGxlciBzZW5kZXMgaSBwYXBpcnZlcnNqb24gdGlsIFMmYWFjdXRlO21lZGlnZ2kgLSBTYW1ldGluZ2V0LCAmQWFjdXRlO3Zqb3YmYWFjdXRlO3JnZWFpZG51IDUwLCA5NzMwIEsmYWFjdXRlO3ImYWFjdXRlOyZzY2Fyb247am9oa2EvS2FyYXNqb2suPC9wPg0KPC9kaXY+DQpkAggPZBYCZg9kFggCAQ8WAh8ABQxQdWJsaXNlcnQgYXZkAgMPDxYCHgdWaXNpYmxlaGRkAgUPFgIfAAUSRWlyYSwgRWxsZW4gQWluYS4gZAINDxYCHwAFF1Npc3QgZW5kcmV0ICAyMi4wOS4yMDEwZAIKD2QWAmYPZBYCZg8WAh8BaBYGAgEPFgIfAWhkAgMPFgIfAWgWAgIBD2QWAmYPZBYGAgIPZBYEZg9kFgJmDxBkZBYAZAIBD2QWAmYPPCsACQBkAgMPZBYEZg9kFgICAQ8QZGQWAGQCAQ9kFgJmDzwrAAkAZAIED2QWAmYPZBYEAgEPDxYGHwBlHghDc3NDbGFzcwUNQnJ1a2VyTWVsZGluZx4EXyFTQgICZGQCAw8PFgIfAGVkZAIFDxYCHwFoFgICAQ9kFgpmDzwrAAkAZAICDzwrAAkAZAIEDzwrAAkAZAIGDzwrAAkAZAIKDzwrAAkAZGTwhiB/U89wri0gRYaOUhSxG7ER2Q== />


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
Ledig stilling i Sametinget med søknadsfrist: 08.10.10'"/>
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
