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
<xsl:variable name="filename" select="'http://www.sametinget.no/artikkel.aspx?MId1=1042&amp;AId=3909&amp;Print=1'"/>
<xsl:variable name="title" select="'Menneskerettighetsrådet behandler urfolksrettigheter i Genève - diggi.no
</title></head>

<body id=ctl00_Body style=background-color:white>
	<form name=aspnetForm method=post action=artikkel.aspx?MId1=1042&amp;amp;AId=3909&amp;amp;Print=1 id=aspnetForm style=width:90%>
<input type=hidden name=__VIEWSTATE id=__VIEWSTATE value=/wEPDwULLTEyNjc4NzYyNTQPZBYCZg9kFgICAw9kFgICAw9kFgICAQ9kFgICAQ9kFgICAQ9kFgJmD2QWAgICD2QWAmYPZBYCZg9kFgJmD2QWDmYPFgIeBFRleHQFdTxoMSBpZD0idGl0dGVsIiBjbGFzcz0iSW5uaG9sZE92ZXJza3JpZnQiID4NCk1lbm5lc2tlcmV0dGlnaGV0c3LDpWRldCBiZWhhbmRsZXIgdXJmb2xrc3JldHRpZ2hldGVyIGkgR2Vuw6h2ZQ0KPC9oMT4NCmQCAg9kFgJmDw8WBB4IQ3NzQ2xhc3MFG2FydGlra2VsYmlsZGUgYmlsZGVfdmVuc3RyZR4EXyFTQgICZBYCAgEPDxYEHwAFdjxpbWcgYm9yZGVyPSIwIiAgIHNyYz0iL2t1bmRlL2JpbGRlci9MaXRlX2RzY18wNDQyLmpwZyIgYWxpZ249InRvcCIgYWx0PSJGTi1ieWdnZXQgR2VuZXZlIiB0aXRsZT0iRk4tYnlnZ2V0IEdlbmV2ZSIgLz4eC05hdmlnYXRlVXJsBRJqYXZhc2NyaXB0OnZvaWQoMCkWAh4HT25DbGljawXGAXdpbmRvdy5vcGVuKCcvYmlsZGV2aXMuYXNwP0JpbGRlSWQ9MjM2MyZWaXM9c3RvciZFa3Nha3Q9dHJ1ZScsJ2hvbWUnLCd0b29sYmFyPW5vLGxvY2F0aW9uPW5vLGRpcmVjdG9yaWVzPW5vLHN0YXR1cz1ubyxtZW51YmFyPW5vLHNjcm9sbGJhcnM9eWVzLHJlc2l6YWJsZT15ZXMsY29weWhpc3Rvcnk9eWVzLFdpZHRoPTEwMjQsSGVpZ2h0PTc2OCcpO2QCBA8WAh8ABbUEPGRpdiBjbGFzcz0iSW5uaG9sZEluZ3Jlc3MiIHN0eWxlPSIiPg0KPHA+PHN0cm9uZz5GTnMgTWVubmVza2VyZXR0aWdoZXRzciZhcmluZztkIGF2aG9sZGVyIGkgZGlzc2UgZGFnZXIgc2luIDE1LiBzZXNqb24gaSBHZW4mZWdyYXZlO3ZlLiBIZXIgYmxlIHRvIHJhcHBvcnRlciBzb20gb21oYW5kbGVyIHVyZm9sayBwcmVzZW50ZXJ0IGZvciBSJmFyaW5nO2RldC4gRWtzcGVydG1la2FuaXNtZW4gZm9yIHVyZm9sa3NyZXR0aWdoZXRlciAoRU1SSVApIGxhIGZyYW0gc2luIG1pZGxlcnRpZGlnZSByYXBwb3J0IG9tIHVyZm9sa3MgcmV0dCB0aWwgJmFyaW5nOyBkZWx0YSBpIGJlc2x1dG5pbmdzcHJvc2Vzc2VyLiBGTnMgU3Blc2lhbHJhcHBvcnQmb3NsYXNoO3IgZm9yIHVyZm9sa3NyZXR0aWdoZXRlciwgUHJvZmVzc29yIEphbWVzIEFuYXlhLCBsYSBmcmFtIHNpbiByYXBwb3J0IG9tIHNpdHVhc2pvbmVuIGZvciBtZW5uZXNrZXJldHRpZ2hldGVyIG9nIGZ1bmRhbWVudGFsZSBmcmloZXRlciBmb3IgdXJmb2xrLjwvc3Ryb25nPiZuYnNwOyAmbmJzcDsmbmJzcDsmbmJzcDs8L3A+DQo8L2Rpdj4NCmQCCA9kFgJmDw8WBB8BBRlhcnRpa2tlbGJpbGRlIGJpbGRlX2hveXJlHwICAmQWAgIBDw8WBB8ABb4CPGltZyBib3JkZXI9IjAiICAgc3JjPSIva3VuZGUvYmlsZGVyL01lZGl1bV9kc2NfMDQ3MC5qcGciIGFsaWduPSJ0b3AiIGFsdD0iR2VuZXZlIiB0aXRsZT0iR2VuZXZlIiAvPjxzcGFuIGNsYXNzPSJCaWxkZVRla3N0IiBzdHlsZT0idGV4dC1kZWNvcmF0aW9uOm5vbmU7Ij5HZW5ldmU8L3NwYW4+PHNwYW4gY2xhc3M9IkJpbGRlVGVrc3QiIHN0eWxlPSJ0ZXh0LWRlY29yYXRpb246bm9uZTsiPjxpbWcgc3JjPSJpbWFnZXMva2FtZXJhLmdpZiIgYm9yZGVyPSIwIiBhbHQ9ImZvdG9ncmFmIiB0aXRsZT0iZm90b2dyYWYiIC8+SGFubmUgSG9sbWdyZW48L3NwYW4+HwMFEmphdmFzY3JpcHQ6dm9pZCgwKRYCHwQFxgF3aW5kb3cub3BlbignL2JpbGRldmlzLmFzcD9CaWxkZUlkPTIzNjQmVmlzPXN0b3ImRWtzYWt0PXRydWUnLCdob21lJywndG9vbGJhcj1ubyxsb2NhdGlvbj1ubyxkaXJlY3Rvcmllcz1ubyxzdGF0dXM9bm8sbWVudWJhcj1ubyxzY3JvbGxiYXJzPXllcyxyZXNpemFibGU9eWVzLGNvcHloaXN0b3J5PXllcyxXaWR0aD0xMDI0LEhlaWdodD03NjgnKTtkAgoPFgIfAAW+IjxkaXYgY2xhc3M9IklubmhvbGRUZWtzdCIgc3R5bGU9IiI+DQo8cD5NZW5uZXNrZXJldHRpZ2hldHNyJmFyaW5nO2RldCBibGUgb3BwcmV0dGV0IGF2IEZOcyBnZW5lcmFsZm9yc2FtbGluZyBpIDIwMDUuIFImYXJpbmc7ZGV0IGVyc3RhdHRldCBNZW5uZXNrZXJldHRpZ2hldHNrb21taXNqb25lbiwgc29tIGZyYSAxOTQ2IHRpbCAyMDA1IGhhZGRlIGhvdmVkYW5zdmFyZXQgZm9yIEZOcyBtZW5uZXNrZXJldHRpZ2hldHNhcmJlaWQuIFImYXJpbmc7ZGV0IGtvb3JkaW5lcmVyIG9nIGZyZW1tZXIgRk5zIGFyYmVpZCBmb3IgbWVubmVza2VyZXR0aWdoZXRlciwgb2cgciZhcmluZztkZXIgb3ZlciBldCBzdG9ydCBhbnRhbGwgbWluZHJlIGtvbWl0ZWVyIHNvbSBoYXIgc3Blc2llbHQgYW5zdmFyIGZvciB1bGlrZSBramVybmVyZXR0aWdoZXRlci48L3A+DQo8cD5FTVJJUCBlciBlbiBGTiBtZWthbmlzbWUgZm9yIHVyZm9sa3NyZXR0aWdoZXRlciBvZyBibGUgZXRhYmxlcnQgaSAyMDA4IGF2IEZOcyBNZW5uZXNrZXJldHRpZ2hldHNyJmFyaW5nO2QuIEJha2dydW5uZW4gZm9yIG9wcHJldHRlbHNlbiBhdiBFTVJJUCBlciBGTnMgVXJmb2xrc2Vya2wmYWVsaWc7cmluZywgdmVkdGF0dCBkZW4gMTMuIHNlcHRlbWJlciBpIDIwMDcuIEVrc3BlcnRncnVwcGVuIGJlc3QmYXJpbmc7ciBhdiBmZW0gbWVkbGVtbWVyIG9nIGdpciByJmFyaW5nO2QgdGlsIE1lbm5lc2tlcmV0dGlnaGV0c3ImYXJpbmc7ZGV0IGkgc2FrZXIgc29tIGFuZyZhcmluZztyIHVyZm9say48L3A+DQo8cD5FTVJJUCBoYXIgZiZhcmluZzt0dCBpIG1hbmRhdCBmcmEgRk5zIE1lbm5lc2tlcmV0dGlnaGV0c3ImYXJpbmc7ZCAmYXJpbmc7IGZyZW1icmluZ2UgZW4gc3R1ZGllIG9tIHVyZm9sa3MgcmV0dCB0aWwgJmFyaW5nOyBkZWx0YSBpIGJlc2x1dG5pbmdzcHJvc2Vzc2VyLiBEZXR0ZSBlbW5ldCBibGUgYmVoYW5kbGV0IHZlZCBFTVJJUHMgdHJlZGplIHNlc2pvbiBkZW4gMTIuIC0gMTYuIGp1bGkgMjAxMC4gU2Vzam9uZW4gYXZob2xkdCBkYSByZXN1bHRlcnRlIGkgZW4gZm9yZWwmb3NsYXNoO3BpZyByYXBwb3J0LCBzb20gYnlnZ2VyIHAmYXJpbmc7IGlubnNwaWxsIEVrc3BlcnRtZWthbmlzbWVuIGZpa2sgZnJhIHVyZm9sa3NyZXByZXNlbnRhbnRlciBvZyBzdGF0bGlnZSBkZWxlZ2Fzam9uZXIgdW5kZXIgc2luIHRyZWRqZSBzZXNqb24uIERlbm5lIG1pZGxlcnRpZGlnZSByYXBwb3J0ZW4gYmxlIHByZXNlbnRlcnQgZGVuIDIxLiBzZXB0ZW1iZXIgaSAmYXJpbmc7ciBmb3IgTWVubmVza2VyZXR0aWdoZXRzciZhcmluZztkZXQgYXYgRU1SSVAgbGVkZXIgTXIuIEpvc2UgQ2FybG9zIE1vcmFsZXMuJm5ic3A7PC9wPg0KPHA+RU1SSVAgdmlsIGF2Z2kgc2luIGVuZGVsaWdlIHJhcHBvcnQgdGlsIE1lbm5lc2tlcmV0dGlnaGV0c3ImYXJpbmc7ZGV0cyAxOC4gc2Vzam9uIGkgJmFyaW5nO3IgMjAxMS48L3A+DQo8cD48YSBjbGFzcz0iSW5uaG9sZExpbmtUZWtzdCIgaHJlZj0iaHR0cDovL3d3dzIub2hjaHIub3JnL2VuZ2xpc2gvaXNzdWVzL2luZGlnZW5vdXMvaW5kZXguaHRtIiBvbmNsaWNrPSJ3aW5kb3cub3Blbih0aGlzLmhyZWYpOyByZXR1cm4gZmFsc2U7Ij5IZXIga2FuIGR1IGxlc2UgbWVyIG9tIEZOcyB1cmZvbGtzYXJiZWlkLjwvYT48L3A+DQo8cD48c3Ryb25nPiZuYnNwOyZuYnNwOzwvc3Ryb25nPjwvcD4NCjxwPjxzdHJvbmc+U2FtZXRpbmdldCBibGUgaCZvc2xhc2g7cnQ8L3N0cm9uZz48L3A+DQo8cD5VbmRlciBFTVJJUHMgdHJlZGplIHNlc2pvbiBpIGp1bGkgMjAxMCBrb20gU2FtZXRpbmdldCBtZWQgaW5uc3BpbGwgdGlsa255dHRldCBzdHVkaWV0IG9tIHVyZm9sa3MgcmV0dCB0aWwgJmFyaW5nOyBkZWx0YSBpIGJlc2x1dG5pbmdzcHJvc2Vzc2VyLiBTYW1ldGluZ2V0IHl0cmV0IGRhIGV0ICZvc2xhc2g7bnNrZSBvbSBhdCBrb25zdWx0YXNqb25zcmV0dGVuIHNrYWwgaW1wbGVtZW50ZXJlcyBnamVubm9tIGxvdmdpdm5pbmcgcCZhcmluZzsgbmFzam9uYWx0IG5pdiZhcmluZzsuPC9wPg0KPHA+SSByYXBwb3J0ZW4gc29tIGJsZSBsYWd0IGZyYW0gaSBHZW4mZWdyYXZlO3ZlIGRlbiAyMS5zZXB0ZW1iZXIgdmFyIFNhbWV0aW5nZXRzIGlubnNwaWxsIHRhdHQgdGlsIGYmb3NsYXNoO2xnZS4gQW5nJmFyaW5nO2VuZGUga29uc3VsdGFzam9uZXIgcyZhcmluZzsgYW5iZWZhbGVyIEVNUklQIE1lbm5lc2tlcmV0dGlnaGV0c3ImYXJpbmc7ZGV0ICZhcmluZzsgb3BwZm9yZHJlIHN0YXRlbmUgJmFyaW5nOyBnamVubm9tZiZvc2xhc2g7cmUgdGlsc3RyZWtrZWxpZ2UgdGlsdGFrIHNvbSBsb3ZnaXZuaW5nIGkgaGVuaG9sZCB0aWwgdXJmb2xrc2Vya2wmYWVsaWc7cmluZ2VucyBhcnRpa2tlbCAzOC4mbmJzcDs8L3A+DQo8cD48c3Ryb25nPiZuYnNwOyZuYnNwOzwvc3Ryb25nPjwvcD4NCjxwPjxzdHJvbmc+U3Blc2lhbHJhcHBvcnQmb3NsYXNoO3JlbiB2aWwgZm9rdXNlcmUgcCZhcmluZzsgYmVkcmlmdGVycyBhbnN2YXIgb3ZlbmZvciB1cmZvbGsgPC9zdHJvbmc+PC9wPg0KPHA+SSBzaW4gcmFwcG9ydCB0aWwgTWVubmVza2VyZXR0aWdoZXRzciZhcmluZztkZXQgZ2lrayBTcGVzaWFscmFwcG9ydCZvc2xhc2g7ciBKYW1lcyBBbmF5YSBpbm4gcCZhcmluZzsgaHZpbGtlIG9wcGdhdmVyIGhhbiwgaSBrcmFmdCBhdiBzaXR0IG1hbmRhdCwgaGFyIHV0ZiZvc2xhc2g7cnQgaSBzaXR0IGFuZHJlICZhcmluZztyIHNvbSBGTnMgc3Blc2lhbHJhcHBvcnQmb3NsYXNoO3IgZm9yIHVyZm9sa3NyZXR0aWdoZXRlci48L3A+DQo8cD5TcGVzaWFscmFwcG9ydCZvc2xhc2g7cmVuIHAmYXJpbmc7cGVrdGUgaSByYXBwb3J0ZW4gYXQgaSBkZSBrb21tZW5kZSB0byAmYXJpbmc7cmVuZSB2aWwgaGFuIGZva3VzZXJlIHAmYXJpbmc7ICZhcmluZzsgdXRmb3JtZSBlbiByYXBwb3J0IG9tIGJlZHJpZnRlcnMgYW5zdmFyIHRpbCAmYXJpbmc7IHJlc3Bla3RlcmUgdXJmb2xrc3JldHRpZ2hldGVyLiBEZW4gbm9yc2tlIGRlbGVnYXNqb25lbiBob2xkdCBldCBpbm5sZWdnIHNvbSBzdCZvc2xhc2g7dHRldCBzcGVzaWFscmFwcG9ydCZvc2xhc2g7cmVucyBhcmJlaWQgcCZhcmluZzsgb21yJmFyaW5nO2RldCwgb2cgdW5kZXJzdHJla2V0IGF0IHN0YXRlciBlciBmb3JwbGlrdGV0IHRpbCAmYXJpbmc7IGJlc2t5dHRlIG1vdCBtZW5uZXNrZXJldHRpZ2hldHNicnVkZCB1dGYmb3NsYXNoO3J0IGF2IHRyZWRqZXBhcnRlciwgPGEgY2xhc3M9IklubmhvbGRMaW5rVGVrc3QiIGhyZWY9IkZpbG5lZGxhc3RpbmcuYXNweD9NSWQxPTEwNDImYW1wO0ZpbElkPTI5MDMiPmxlcyZuYnNwO3JhcHBvcnRlbiZuYnNwO2hlci48L2E+PC9wPg0KPHA+PGEgY2xhc3M9IklubmhvbGRMaW5rVGVrc3QiIGhyZWY9IkZpbG5lZGxhc3RpbmcuYXNweD9NSWQxPTEwNDImYW1wO0ZpbElkPTI5MDQiPkkgdmVkbGVnZyA2PC9hPiwgdGlsIHJhcHBvcnRlbiBzb20gc3Blc2lhbHJhcHBvcnQmb3NsYXNoO3JlbiBsYSBmcmEgZm9yIE1lbm5lc2tlcmV0dGlnaGV0c3ImYXJpbmc7ZGV0LCBvbXRhbGVzIEFuYXlhcyBiZXMmb3NsYXNoO2sgaSBSb3ZhbmllbWkgMTQuIC0gMTYuYXByaWwgMjAxMC4gQW5heWEgdW5kZXJzdHJla2VyIGkgdmVkbGVnZyA2IHZpa3RpZ2hldGVuIGF2ICZhcmluZzsgZ2plbm9wcHRhIGZvcmhhbmRsaW5nZW5lIG9tIGVuIGZlbGxlcyBub3JkaXNrIHNhbWVrb252ZW5zam9uLiBTcGVzaWFscmFwcG9ydCZvc2xhc2g7cmVuIHVuZGVyc3RyZWtlciBhdCBlbiBub3JkaXNrIHNhbWVrb252ZW5zam9uIHZpbCBzdHlya2Ugc2FtZXJzIHJldHRpZ2hldGVyIGkgaGVsZSBTJmFhY3V0ZTtwbWkuIFZpZGVyZSBpIHZlZGxlZ2dldCBmcmVta29tbWVyIGRldCBhdCBTcGVzaWFscmFwcG9ydCZvc2xhc2g7cmVuIHZpbCBza3JpdmUgZW4gcmFwcG9ydCBiYXNlcnQgcCZhcmluZzsgZGUgZXJmYXJpbmdlbmUgaGFuIGdqb3JkZSBzZWcgdW5kZXIgc2l0dCBiZXMmb3NsYXNoO2sgaSBTJmFhY3V0ZTtwbWkuPC9wPg0KPHA+Jm5ic3A7PC9wPg0KPHA+RGVubmUgcmFwcG9ydGVuIGVyIHZlbnRldCBwdWJsaXNlcnQgaSAyMDExLjwvcD4NCjxwPiZuYnNwOzwvcD4NCjxwPjxzdHJvbmc+Tm9yZGlza2UgbGFuZGVuZSBzdCZvc2xhc2g7dHRlciB1cmZvbGtzIHJldHQgdGlsIGRlbHRha2Vsc2UgaSBiZXNsdXRuaW5nc3Byb3Nlc3Nlcjwvc3Ryb25nPjwvcD4NCjxwPkRlIG5vcmRpc2tlIGxhbmRlbmUgRGFubWFyaywgSXNsYW5kLCBOb3JnZSBvZyBGaW5sYW5kIGdhIGV0IGZlbGxlcyBpbm5zcGlsbCBzb20gdW5kZXJzdHJla2V0IHZpa3RpZ2hldGVuIGF2IGF0IGRlbHRha2Vsc2VzcmV0dGVuIGkgYmVzbHV0bmluZ3Nwcm9zZXNzZXIgZXIgc3YmYWVsaWc7cnQgdmlrdGlnIGZvciByZWFsaXNlcmluZ2VuIGF2IHVyZm9sa3NyZXR0aWdoZXRlbmUuPC9wPg0KPC9kaXY+DQpkAgwPZBYCZg9kFggCAQ8WAh8ABQxQdWJsaXNlcnQgYXZkAgMPDxYCHgdWaXNpYmxlaGRkAgUPFgIfAAURSG9sbWdyZW4sIEhhbm5lLiBkAg0PFgIfAAUXU2lzdCBlbmRyZXQgIDI0LjA5LjIwMTBkAg4PZBYCZg9kFgJmD2QWBgIBDxYCHwVoZAIDDxYCHwVoFgICAQ9kFgJmD2QWBgICD2QWBGYPZBYCZg8QZGQWAGQCAQ9kFgJmDzwrAAkAZAIDD2QWBGYPZBYCAgEPEGRkFgBkAgEPZBYCZg88KwAJAGQCBA9kFgJmD2QWBAIBDw8WBh8AZR8BBQ1CcnVrZXJNZWxkaW5nHwICAmRkAgMPDxYCHwBlZGQCBQ9kFgICAQ9kFgpmDzwrAAkAZAICDzwrAAkAZAIEDzwrAAkBAA8WBB4IRGF0YUtleXMWAB4LXyFJdGVtQ291bnQCAmQWBAIBD2QWBgIBDw8WAh4NQWx0ZXJuYXRlVGV4dAUJQXJ0aWtrZWwgZGQCAw8PFgQfA2UfAGVkZAIFDxYCHwAFgQEgPGEgY2xhc3M9IklubmhvbGRMaW5rIiB0aXRsZT0iIiAgaHJlZj0iL2FydGlra2VsLmFzcHg/TUlkMT0xMDQyJmFtcDtBSWQ9MzgyMyI+QXJ0aWtrZWwgIC0gVXJmb2xrIG9nIHN0YXRlciBkaXNrdXRlcnRlIEZOcy4uLjwvYT5kAgIPZBYGAgEPDxYCHwgFCUFydGlra2VsIGRkAgMPDxYEHwNlHwBlZGQCBQ8WAh8ABYQBIDxhIGNsYXNzPSJJbm5ob2xkTGluayIgdGl0bGU9IiIgIGhyZWY9Ii9hcnRpa2tlbC5hc3B4P01JZDE9MTA0MiZhbXA7QUlkPTM4MTkiPkFydGlra2VsICAtIFVyZm9sayBzYW1sZXQgZm9yICYjMjI5OyBkaXNrdXRlcmUuLi48L2E+ZAIGDzwrAAkBAA8WBB8GFgAfBwIBZBYCAgEPZBYGAgEPDxYEHghJbWFnZVVybAUQfi9pbWFnZXMvcGRmLmdpZh8IBQRGaWwgZGQCAw8PFgQfA2UfAGVkZAIFDxYCHwAFdSA8YSBjbGFzcz0iSW5uaG9sZExpbmsiIHRpdGxlPSIiICBocmVmPSIvRmlsbmVkbGFzdGluZy5hc3B4P01JZDE9MTA0MiZhbXA7RmlsSWQ9MjkwNSI+Tm9yZ2VzIGlubmxlZ2cgdGlsIE1SIChFTkcpPC9hPmQCCg88KwAJAGRkgOtngfi+Fi9qt1UbS6mP/Pe+fIU= />


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

		
    

<div id=ctl00_MidtSone_ucArtikkel_ctl00_pnlArtikkel class=artikkel artikkelmal_3>
	<h1 id=tittel class=InnholdOverskrift >
Menneskerettighetsrådet behandler urfolksrettigheter i Genève'"/>
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
