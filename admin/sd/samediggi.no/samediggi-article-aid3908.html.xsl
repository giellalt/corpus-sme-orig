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
<xsl:variable name="filename" select="'http://www.sametinget.no/artikkel.aspx?AId=3908&amp;Print=1'"/>
<xsl:variable name="title" select="'Framtidas samiske museum - Sámediggi Sametinget
</title></head>

<body id=ctl00_Body style=background-color:white>
	<form name=aspnetForm method=post action=artikkel.aspx?AId=3908&amp;amp;Print=1 id=aspnetForm style=width:90%>
<input type=hidden name=__VIEWSTATE id=__VIEWSTATE value=/wEPDwULLTEyNjc4NzYyNTQPZBYCZg9kFgICAw9kFgICAw9kFgICAQ9kFgICAQ9kFgICAQ9kFgJmD2QWAgICD2QWAmYPZBYCZg9kFgJmD2QWDGYPFgIeBFRleHQFTjxoMSBpZD0idGl0dGVsIiBjbGFzcz0iSW5uaG9sZE92ZXJza3JpZnQiID4NCkZyYW10aWRhcyBzYW1pc2tlIG11c2V1bQ0KPC9oMT4NCmQCAg8WAh8ABeUCPGRpdiBjbGFzcz0iSW5uaG9sZEluZ3Jlc3MiIHN0eWxlPSIiPg0KPHA+PHN0cm9uZz5SJmFyaW5nO2RzbWVkbGVtIFZpYmVrZSBMYXJzZW4gZGVsdG9rIGRlbiAxMC5zZXB0ZW1iZXIgcCZhcmluZzsgc2VtaW5hcmV0IDxlbT5GcmFtdGlkYXMgc2FtaXNrZSBtdXNldW08L2VtPiBpIHJlZ2kgYXYgU2FtaXNrIG11c2V1bXNsYWcuICZuYnNwO1NhbWV0aW5nc3ImYXJpbmc7ZCBMYXNlbiB0b2sgaSBzaXR0IGlubmxlZ2cgYmxhbnQgYW5uZXQgZm9yIHNlZyBkZSB1dGZvcmRyaW5nZW5lIGRlIHNhbWlza2UgbXVzZXVtZW5lIGkgTm9yZ2Ugc3QmYXJpbmc7ciBvdmVuZm9yIGkgZnJhbXRpZGVuLjwvc3Ryb25nPjwvcD4NCjwvZGl2Pg0KZAIGD2QWAmYPDxYEHghDc3NDbGFzcwUZYXJ0aWtrZWxiaWxkZSBiaWxkZV9ob3lyZR4EXyFTQgICZBYCAgEPDxYEHwAF3QI8aW1nIGJvcmRlcj0iMCIgICBzcmM9Ii9rdW5kZS9iaWxkZXIvTWVkaXVtX3ZpYmVrZV9sYXJzZW4yLmpwZyIgYWxpZ249InRvcCIgYWx0PSJWaWJla2UgTGFyc2VuICIgdGl0bGU9IlZpYmVrZSBMYXJzZW4gIiAvPjxzcGFuIGNsYXNzPSJCaWxkZVRla3N0IiBzdHlsZT0idGV4dC1kZWNvcmF0aW9uOm5vbmU7Ij5WaWJla2UgTGFyc2VuIDwvc3Bhbj48c3BhbiBjbGFzcz0iQmlsZGVUZWtzdCIgc3R5bGU9InRleHQtZGVjb3JhdGlvbjpub25lOyI+PGltZyBzcmM9ImltYWdlcy9rYW1lcmEuZ2lmIiBib3JkZXI9IjAiIGFsdD0iZm90b2dyYWYiIHRpdGxlPSJmb3RvZ3JhZiIgLz5IYW5uZSBIb2xtZ3JlbiA8L3NwYW4+HgtOYXZpZ2F0ZVVybAUSamF2YXNjcmlwdDp2b2lkKDApFgIeB09uQ2xpY2sFxgF3aW5kb3cub3BlbignL2JpbGRldmlzLmFzcD9CaWxkZUlkPTIyMDAmVmlzPXN0b3ImRWtzYWt0PXRydWUnLCdob21lJywndG9vbGJhcj1ubyxsb2NhdGlvbj1ubyxkaXJlY3Rvcmllcz1ubyxzdGF0dXM9bm8sbWVudWJhcj1ubyxzY3JvbGxiYXJzPXllcyxyZXNpemFibGU9eWVzLGNvcHloaXN0b3J5PXllcyxXaWR0aD0xMDI0LEhlaWdodD03NjgnKTtkAggPFgIfAAX3DjxkaXYgY2xhc3M9IklubmhvbGRUZWtzdCIgc3R5bGU9IiI+DQo8cD5SJmFyaW5nO2RzbWVkbGVtIFZpYmVrZSBMYXJzZW4gcHJlc2lzZXJ0ZSBhdCBkZSBzYW1pc2tlIG11c2VlbmUgaGFyIGVuIGRlbCBhbmRyZSB1dGZvcmRyaW5nZXIgZW5uICZvc2xhc2g7dnJpZ2UgbXVzZWVyIGkgTm9yZ2UuIERlIGVyIGZvcmhvbGRzdmlzIHVuZ2UsIG5vZW4gaGVsdCBueWV0YWJsZXJ0ZSwgb2cgZm9ydHNhdHQgaSBlbiBvcHBieWdnaW5nc2Zhc2UsIGRlcmZvciBlciBtYW5nZSBncnVubmxlZ2dlbmRlIG11c2V1bXNvcHBnYXZlciBmb3J0c2F0dCB2aWt0aWdlIGlubnNhdHNvbXImYXJpbmc7ZGVyLCBvZyB1dGZvcmRyaW5nZW5lIGZvciBkZSBzYW1pc2tlIG11c2VlbmUgbSZhcmluZzsgZGVyZm9yIHNlZXMgaSBldCBzbGlrdCBwZXJzcGVrdGl2LjwvcD4NCjxwPkh1biBwJmFyaW5nO3Bla3RlIHZpZGVyZSBhdCBkZSBzYW1pc2tlIG11c2VlbmUgc2thbCB2aWRlcmV1dHZpa2xlcyBpIHRyJmFyaW5nO2QgbWVkIGV0IHNhbWlzayB2ZXJkaWdydW5ubGFnLCBvZyBkZSBlciB2aWt0aWdlIGluc3RpdHVzam9uZXIgZm9yIHN0eXJraW5nIG9nIHZpZGVyZXV0dmlrbGluZyBhdiBzYW1pc2sga3VsdHVyIG9nIGlkZW50aXRldC48L3A+DQo8cD48c3Ryb25nPlNhbWV0aW5nZXRzIHJvbGxlPC9zdHJvbmc+PC9wPg0KPHA+SSBzaXR0IGlubmxlZ2cgZ2pvcmRlIG9ncyZhcmluZzsgU2FtZXRpbmdzciZhcmluZztkIFZpYmVrZSBMYXJzZW4gcmVkZSBmb3IgU2FtZXRpbmdldHMgcm9sbGUgaSBoZW5ob2xkIHRpbCBkZSBzYW1pc2tlIG11c2VlbmUgaSBOb3JnZS48L3A+DQo8cD5IdW4gZm9ya2xhcnRlIGF0IFNhbWV0aW5nZXQgc2thbCB2JmFlbGlnO3JlIGVuIGZhZ2xpZyBvZyBwb2xpdGlzayBwcmVtaXNzZ2l2ZXIgZm9yIHV0dmlrbGluZ2VuIGF2IGRlIHNhbWlza2UgbXVzZWVuZS4gU2FtZXRpbmdldHMgb3Zlcm9yZG5ldGUgbSZhcmluZztsc2V0dGluZyBmb3IgZGUgc2FtaXNrZSBtdXNlZW5lIGVyICZhcmluZzsgc2lrcmUgZW4gc3R5cmtldCwgc2Ftb3JkbmV0IG9nIGhlbGhldGxpZyBzYW1pc2sgbXVzZXVtc3Zpcmtzb21oZXQsIGJhc2VydCBwJmFyaW5nOyBzYW1lbmVzIGVnbmUgZm9ydXRzZXRuaW5nZXIgc29tIGZvbGsgb2cgdXJmb2xrLjwvcD4NCjxwPlNhbWV0aW5nZXRzIHBvbGl0aWtrIHAmYXJpbmc7IG11c2V1bXNvbXImYXJpbmc7ZGV0IHRhciB1dGdhbmdzcHVua3QgaSBJbnRlcm5hdGlvbmFsIENvdW5jaWwgb2YgTXVzZXVtcyAoSUNPTSkgZGVmaW5pc2pvbiBhdiBtdXNldW0uIElDT00gdXRmb3JtZXQgaSAyMDA3IGVuIHJldmlkZXJ0IGRlZmluaXNqb24gYXYgaHZhIGV0IG11c2V1bSBlcjo8L3A+DQo8cD4iPGVtPkV0IG11c2V1bSBlciBlbiBwZXJtYW5lbnQgaW5zdGl0dXNqb24sIGlra2UgYmFzZXJ0IHAmYXJpbmc7IHByb2ZpdHQsIHNvbSBza2FsIHRqZW5lIHNhbWZ1bm5ldCBvZyBkZXRzIHV0dmlrbGluZyBvZyB2JmFlbGlnO3JlICZhcmluZztwZW50IGZvciBwdWJsaWt1bTsgc29tIHNhbWxlciBpbm4sIGJldmFyZXIva29uc2VydmVyZXIsIGZvcnNrZXIgaSwgZm9ybWlkbGVyIG9nIHN0aWxsZXIgdXQgbWF0ZXJpZWxsIG9nIGltbWF0ZXJpZWxsIChrdWx0dXIpYXJ2IG9tIG1lbm5lc2tlbmUgb2cgZGVyZXMgb21naXZlbHNlciBpIHN0dWRpZS0sIHV0ZGFubmluZ3MtIG9nIHVuZGVyaG9sZG5pbmdzJm9zbGFzaDt5ZW1lZCIuPC9lbT48L3A+DQo8cD4mbmJzcDs8L3A+DQo8cD48YSBjbGFzcz0iSW5uaG9sZExpbmtUZWtzdCIgaHJlZj0iRmlsbmVkbGFzdGluZy5hc3B4P0ZpbElkPTI5MDEmYW1wO01JZDE9JmFtcDtNSWQyPSZhbXA7TUlkMz0mYW1wO1ByaW50PTEmYW1wOyI+SW5ubGVnZ2V0IGthbiBsZXNlcyBpIHNpbiBoZWxoZXQgaGVyLjwvYT48L3A+DQo8L2Rpdj4NCmQCCg9kFgJmD2QWCAIBDxYCHwAFDFB1Ymxpc2VydCBhdmQCAw8PFgIeB1Zpc2libGVoZGQCBQ8WAh8ABRFIb2xtZ3JlbiwgSGFubmUuIGQCDQ8WAh8ABRdTaXN0IGVuZHJldCAgMjcuMDkuMjAxMGQCDA9kFgJmD2QWAmYPZBYGAgEPZBYCAgEPZBYCZg9kFgJmD2QWAmYPZBYCZg8PFggeB19UaXR0ZWwFGipSw6Vkc21lZGxlbSBWaWJla2UgTGFyc2VuHgxfQmVza3JpdmVsc2VlHgpfRGF0YUtpbGRlMtcMAAEAAAD/////AQAAAAAAAAAMAgAAAE5TeXN0ZW0uRGF0YSwgVmVyc2lvbj0yLjAuMC4wLCBDdWx0dXJlPW5ldXRyYWwsIFB1YmxpY0tleVRva2VuPWI3N2E1YzU2MTkzNGUwODkFAQAAABVTeXN0ZW0uRGF0YS5EYXRhVGFibGUDAAAAGURhdGFUYWJsZS5SZW1vdGluZ1ZlcnNpb24JWG1sU2NoZW1hC1htbERpZmZHcmFtAwEBDlN5c3RlbS5WZXJzaW9uAgAAAAkDAAAABgQAAAC9Bjw/eG1sIHZlcnNpb249IjEuMCIgZW5jb2Rpbmc9InV0Zi0xNiI/Pg0KPHhzOnNjaGVtYSB4bWxucz0iIiB4bWxuczp4cz0iaHR0cDovL3d3dy53My5vcmcvMjAwMS9YTUxTY2hlbWEiIHhtbG5zOm1zZGF0YT0idXJuOnNjaGVtYXMtbWljcm9zb2Z0LWNvbTp4bWwtbXNkYXRhIj4NCiAgPHhzOmVsZW1lbnQgbmFtZT0iVGFibGUxIj4NCiAgICA8eHM6Y29tcGxleFR5cGU+DQogICAgICA8eHM6c2VxdWVuY2U+DQogICAgICAgIDx4czplbGVtZW50IG5hbWU9IlRlbGVmb24iIHR5cGU9InhzOnN0cmluZyIgbXNkYXRhOnRhcmdldE5hbWVzcGFjZT0iIiBtaW5PY2N1cnM9IjAiIC8+DQogICAgICAgIDx4czplbGVtZW50IG5hbWU9Ik1vYmlsIiB0eXBlPSJ4czpzdHJpbmciIG1zZGF0YTp0YXJnZXROYW1lc3BhY2U9IiIgbWluT2NjdXJzPSIwIiAvPg0KICAgICAgICA8eHM6ZWxlbWVudCBuYW1lPSJFLXBvc3QiIHR5cGU9InhzOnN0cmluZyIgbXNkYXRhOnRhcmdldE5hbWVzcGFjZT0iIiBtaW5PY2N1cnM9IjAiIC8+DQogICAgICA8L3hzOnNlcXVlbmNlPg0KICAgIDwveHM6Y29tcGxleFR5cGU+DQogIDwveHM6ZWxlbWVudD4NCiAgPHhzOmVsZW1lbnQgbmFtZT0idG1wRGF0YVNldCIgbXNkYXRhOklzRGF0YVNldD0idHJ1ZSIgbXNkYXRhOk1haW5EYXRhVGFibGU9IlRhYmxlMSIgbXNkYXRhOlVzZUN1cnJlbnRMb2NhbGU9InRydWUiPg0KICAgIDx4czpjb21wbGV4VHlwZT4NCiAgICAgIDx4czpjaG9pY2UgbWluT2NjdXJzPSIwIiBtYXhPY2N1cnM9InVuYm91bmRlZCIgLz4NCiAgICA8L3hzOmNvbXBsZXhUeXBlPg0KICA8L3hzOmVsZW1lbnQ+DQo8L3hzOnNjaGVtYT4GBQAAAO0DPGRpZmZncjpkaWZmZ3JhbSB4bWxuczptc2RhdGE9InVybjpzY2hlbWFzLW1pY3Jvc29mdC1jb206eG1sLW1zZGF0YSIgeG1sbnM6ZGlmZmdyPSJ1cm46c2NoZW1hcy1taWNyb3NvZnQtY29tOnhtbC1kaWZmZ3JhbS12MSI+DQogIDx0bXBEYXRhU2V0Pg0KICAgIDxUYWJsZTEgZGlmZmdyOmlkPSJUYWJsZTExIiBtc2RhdGE6cm93T3JkZXI9IjAiIGRpZmZncjpoYXNDaGFuZ2VzPSJpbnNlcnRlZCI+DQogICAgICA8VGVsZWZvbj4rNDcgNzggNDcgNDAgMDA8L1RlbGVmb24+DQogICAgICA8TW9iaWw+KzQ3IDk0MSAzMCAxMTY8L01vYmlsPg0KICAgICAgPEUtcG9zdD4gJmx0O2EgY2xhc3M9IiBibGFuayIgdGl0bGU9IiIgIGhyZWY9Im1haWx0bzp2aWJla2UubGFyc2VuQHNhbWVkaWdnaS5ubyImZ3Q7dmliZWtlLmxhcnNlbkBzYW1lZGlnZ2kubm8mbHQ7L2EmZ3Q7PC9FLXBvc3Q+DQogICAgPC9UYWJsZTE+DQogIDwvdG1wRGF0YVNldD4NCjwvZGlmZmdyOmRpZmZncmFtPgQDAAAADlN5c3RlbS5WZXJzaW9uBAAAAAZfTWFqb3IGX01pbm9yBl9CdWlsZAlfUmV2aXNpb24AAAAACAgICAIAAAAAAAAA//////////8LHhZfR3JpZFZpZXdTb3J0RGlyZWN0aW9uCyonU3lzdGVtLldlYi5VSS5XZWJDb250cm9scy5Tb3J0RGlyZWN0aW9uAGQWBGYPFgIeBXN0eWxlBQt3aWR0aDoxMDAlOxYCAgUPFCsADQ8WEh4LXyFJdGVtQ291bnQCAR4UQXV0b2dlbmVyYXRlQ29sdW1uczJoHgpTaG93SGVhZGVyaB4RUmFkQ3NzS2xhc3NlVmFsZ3QFF0lubmhvbGRUYWJlbGxUZWtzdFZhbGd0HgtfIURhdGFCb3VuZGceB1N1bW1hcnllHgxBbGxvd1NvcnRpbmdnHg1FbXB0eURhdGFUZXh0BRcoSW5nZW5EYXRhVGlsZ2plbmdlbGlnKR4HQ2FwdGlvbgUaKlLDpWRzbWVkbGVtIFZpYmVrZSBMYXJzZW5kDxQrAAM8KwAFAQAWBB4KSGVhZGVyVGV4dAUHVGVsZWZvbh4OU29ydEV4cHJlc3Npb24FC1RlbGVmb24gQVNDPCsABQEAFgQfFAUFTW9iaWwfFQUJTW9iaWwgQVNDPCsABQEAFgQfFAUGRS1wb3N0HxUFCkUtcG9zdCBBU0MUKwEDAgYCBgIGFgYfAQUSSW5uaG9sZFRhYmVsbFBhZ2VyHg9Ib3Jpem9udGFsQWxpZ24LKilTeXN0ZW0uV2ViLlVJLldlYkNvbnRyb2xzLkhvcml6b250YWxBbGlnbgMfAgKCgAQWBB8BBRxJbm5ob2xkVGFiZWxsT3ZlcnNrcmlmdFRla3N0HwICAmQWBB8BBRJJbm5ob2xkVGFiZWxsVGVrc3QfAgICZGRkZGQWBh4FV2lkdGgbAAAAAAAQfUABAAAAHwEFDUlubmhvbGRUYWJlbGwfAgKCAmQWAmYPZBYGZg8PFgIfBWhkFgZmDw8WBB8BBQtza2lsbGVsaW5qZR8CAgJkZAIBDw8WBB8BBQtza2lsbGVsaW5qZR8CAgJkZAICDw8WBB8BBQtza2lsbGVsaW5qZR8CAgJkZAIBD2QWBmYPDxYEHwEFC3NraWxsZWxpbmplHwICAmRkAgEPDxYEHwEFC3NraWxsZWxpbmplHwICAmRkAgIPDxYEHwEFC3NraWxsZWxpbmplHwICAmRkAgIPDxYCHwVoZBYGZg8PFgQfAQULc2tpbGxlbGluamUfAgICZGQCAQ8PFgQfAQULc2tpbGxlbGluamUfAgICZGQCAg8PFgQfAQULc2tpbGxlbGluamUfAgICZGQCAg9kFgJmDw8WAh8FaGQWAmYPZBYEAgEPDxYGHwBlHwEFDUJydWtlck1lbGRpbmcfAgICZGQCAw8PFgIfAGVkZAIDDxYCHwVoFgICAQ9kFgJmD2QWBgICD2QWBGYPZBYCZg8QZGQWAGQCAQ9kFgJmDzwrAAkAZAIDD2QWBGYPZBYCAgEPEGRkFgBkAgEPZBYCZg88KwAJAGQCBA9kFgJmD2QWBAIBDw8WBh8AZR8BBQ1CcnVrZXJNZWxkaW5nHwICAmRkAgMPDxYCHwBlZGQCBQ8WAh8FaBYCAgEPZBYKZg88KwAJAGQCAg88KwAJAGQCBA88KwAJAGQCBg88KwAJAGQCCg88KwAJAGQYAQU5Y3RsMDAkTWlkdFNvbmUkdWNBcnRpa2tlbCRjdGwwMCRjdGwwMCRjdGwwMSRjdGwwMSR1Y0xpc3RlDzwrAAoBCAIBZFCAe8JkRUvIJE0SFjLes2AdtFmI />


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

		
    

<div id=ctl00_MidtSone_ucArtikkel_ctl00_pnlArtikkel class=artikkel artikkelmal_2>
	<h1 id=tittel class=InnholdOverskrift >
Framtidas samiske museum'"/>
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
