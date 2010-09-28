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
<xsl:variable name="filename" select="'http://www.sametinget.no/artikkel.aspx?MId1=1042&amp;AId=3912&amp;Print=1'"/>
<xsl:variable name="title" select="'Sametinget møtte de eldre - diggi.no
</title></head>

<body id=ctl00_Body style=background-color:white>
	<form name=aspnetForm method=post action=artikkel.aspx?MId1=1042&amp;amp;AId=3912&amp;amp;Print=1 id=aspnetForm style=width:90%>
<input type=hidden name=__VIEWSTATE id=__VIEWSTATE value=/wEPDwULLTEyNjc4NzYyNTQPZBYCZg9kFgICAw9kFgICAw9kFgICAQ9kFgICAQ9kFgICAQ9kFgJmD2QWAgICD2QWAmYPZBYCZg9kFgJmD2QWDmYPFgIeBFRleHQFUDxoMSBpZD0idGl0dGVsIiBjbGFzcz0iSW5uaG9sZE92ZXJza3JpZnQiID4NClNhbWV0aW5nZXQgbcO4dHRlIGRlIGVsZHJlDQo8L2gxPg0KZAICD2QWAmYPDxYEHghDc3NDbGFzcwUbYXJ0aWtrZWxiaWxkZSBiaWxkZV92ZW5zdHJlHgRfIVNCAgJkFgICAQ8PFgQfAAXAATxpbWcgYm9yZGVyPSIwIiAgIHNyYz0iL2t1bmRlL2JpbGRlci9MaXRlX2xhaWxhX3N1c2FubmVfdmFyc19vZ19pbmdlcl9lbGxlbl9iYWFsLmpwZyIgYWxpZ249InRvcCIgYWx0PSJMYWlsYSBTdXNhbm5lIFZhcnMgb2cgSW5nZXIgRWxsZW4gQmFhbCIgdGl0bGU9IkxhaWxhIFN1c2FubmUgVmFycyBvZyBJbmdlciBFbGxlbiBCYWFsIiAvPh4LTmF2aWdhdGVVcmwFEmphdmFzY3JpcHQ6dm9pZCgwKRYCHgdPbkNsaWNrBcYBd2luZG93Lm9wZW4oJy9iaWxkZXZpcy5hc3A/QmlsZGVJZD0yMzY2JlZpcz1zdG9yJkVrc2FrdD10cnVlJywnaG9tZScsJ3Rvb2xiYXI9bm8sbG9jYXRpb249bm8sZGlyZWN0b3JpZXM9bm8sc3RhdHVzPW5vLG1lbnViYXI9bm8sc2Nyb2xsYmFycz15ZXMscmVzaXphYmxlPXllcyxjb3B5aGlzdG9yeT15ZXMsV2lkdGg9MTAyNCxIZWlnaHQ9NzY4Jyk7ZAIEDxYCHwAF3gI8ZGl2IGNsYXNzPSJJbm5ob2xkSW5ncmVzcyIgc3R5bGU9IiI+DQo8cD48c3Ryb25nPlNhbWV0aW5nZXRzIHZpc2VwcmVzaWRlbnQgTGFpbGEgU3VzYW5uZSBWYXJzIHNpZXIgYXQgU2FtZXRpbmdldCB2aWwgYmVzdHJlYmUgc2VnIHAmYXJpbmc7ICZhcmluZzsgc2thZmZlIHRpbCB2ZWllIGZsZXJlIG0mb3NsYXNoO3RlcGxhc3NlciBvZyBmJmFyaW5nOyB0aWwgYmVkcmUga29tbXVuaWthc2pvbiBtZWQgZGUgZWxkcmUuIERldHRlIHNhIGh1biBwJmFyaW5nOyBldCBoJm9zbGFzaDtyaW5nc20mb3NsYXNoO3RlIG9tIGxlc2UtIG9nIHNrcml2ZWhqZWxwIGZvciBkZSBlbGRyZS48L3N0cm9uZz48L3A+DQo8L2Rpdj4NCmQCCA9kFgJmDw8WBB8BBRlhcnRpa2tlbGJpbGRlIGJpbGRlX2hveXJlHwICAmQWAgIBDw8WBB8ABbsDPGltZyBib3JkZXI9IjAiICAgc3JjPSIva3VuZGUvYmlsZGVyL01lZGl1bV9sYWlsYV9zdXNhbm5lX3ZhcnNfb2dfYXN0cmlkX25lcmdhYXJkLmpwZyIgYWxpZ249InRvcCIgYWx0PSJMYWlsYSBTdXNhbm5lIFZhcnMgb2cgQXN0cmlkIE5lcmfDpXJkIiB0aXRsZT0iTGFpbGEgU3VzYW5uZSBWYXJzIG9nIEFzdHJpZCBOZXJnw6VyZCIgLz48c3BhbiBjbGFzcz0iQmlsZGVUZWtzdCIgc3R5bGU9InRleHQtZGVjb3JhdGlvbjpub25lOyI+TGFpbGEgU3VzYW5uZSBWYXJzIG9nIEFzdHJpZCBOZXJnw6VyZDwvc3Bhbj48c3BhbiBjbGFzcz0iQmlsZGVUZWtzdCIgc3R5bGU9InRleHQtZGVjb3JhdGlvbjpub25lOyI+PGltZyBzcmM9ImltYWdlcy9rYW1lcmEuZ2lmIiBib3JkZXI9IjAiIGFsdD0iZm90b2dyYWYiIHRpdGxlPSJmb3RvZ3JhZiIgLz5LYXJlbiBMb3Vpc2UgU2lyaTwvc3Bhbj4fAwUSamF2YXNjcmlwdDp2b2lkKDApFgIfBAXGAXdpbmRvdy5vcGVuKCcvYmlsZGV2aXMuYXNwP0JpbGRlSWQ9MjM2NyZWaXM9c3RvciZFa3Nha3Q9dHJ1ZScsJ2hvbWUnLCd0b29sYmFyPW5vLGxvY2F0aW9uPW5vLGRpcmVjdG9yaWVzPW5vLHN0YXR1cz1ubyxtZW51YmFyPW5vLHNjcm9sbGJhcnM9eWVzLHJlc2l6YWJsZT15ZXMsY29weWhpc3Rvcnk9eWVzLFdpZHRoPTEwMjQsSGVpZ2h0PTc2OCcpO2QCCg8WAh8ABdcRPGRpdiBjbGFzcz0iSW5uaG9sZFRla3N0IiBzdHlsZT0iIj4NCjxwPlNhbWV0aW5nZXQgYXJyYW5nZXJ0ZSBldCBoJm9zbGFzaDtyaW5nc20mb3NsYXNoO3RlIG9tIGxlc2UtIG9nIHNrcml2ZWhqZWxwIGZvciBkZSBlbGRyZSBpIEthdXRva2Vpbm8gdG9yc2RhZyAyMy4wOS4yMDEwLjxiciAvPjxiciAvPlNhbWV0aW5nZXQgJm9zbGFzaDtuc2tldCAmYXJpbmc7IGgmb3NsYXNoO3JlIGh2aWxrZSBoamVscGVvcmRuaW5nZXIga29tbXVuZW5lIGhhciBuJmFyaW5nO3IgZGV0IGdqZWxkZXIgbGVzZS0gb2cgc2tyaXZlaGplbHAgZm9yIGRlIGVsZHJlIHNvbSBpa2tlIGJlaGVyc2tlciBub3JzayBzJmFyaW5nOyBnb2R0LiBTYW1ldGluZ2V0IHZpbGxlIG9ncyZhcmluZzsgdml0ZSBodm9yZGFuIFNhbWV0aW5nZXQga3VubmUgaGplbHBlIHRpbCBtZWQgJmFyaW5nOyBmJmFyaW5nOyBpIGdhbmcgYWt0aXZpdGV0ZXIgc29tIHZpbCBrdW5uZSBiZWRyZSBodmVyZGFnZW4gdGlsIGRlIGVsZHJlIGkgc2FtaXNrZSBvbXImYXJpbmc7ZGVyLjxiciAvPjxiciAvPjxzdHJvbmc+RGUga2plbm5lciBpa2tlIHRpbCB0amVuZXN0ZW5lPGJyIC8+PGJyIC8+PC9zdHJvbmc+UCZhcmluZzsgbSZvc2xhc2g7dGV0IGZvcnRhbHRlIG1hbmdlIGF0IGRlIGlra2UgYWxsdGlkIHZpc3N0ZSBodmEgc2xhZ3MgaGplbHAgZGUga3VubmUgZiZhcmluZzssIGZvcmRpIGRlIG9mZmVudGxpZ2UgaW5zdGl0dXNqb25lbmUgaWtrZSBhbGx0aWQgdmFyIHMmYXJpbmc7IGZsaW5rZSB0aWwgJmFyaW5nOyBpbmZvcm1lcmUgb20gc2luZSB0amVuZXN0ZXIgb2cgaGplbHBldGlsYnVkLjxiciAvPjxiciAvPkRlIGVsZHJlIHZhciBnbGFkZSBmb3IgaW52aXRhc2pvbmVuIHRpbCBldCBzbGlrdCBtJm9zbGFzaDt0ZSBvZyBoJmFyaW5nO3BldCBwJmFyaW5nOyBhdCBTYW1ldGluZ2V0IG9ncyZhcmluZzsgaSBmcmFtdGlkZW4gdmlsbGUgaG9sZGUgZ29kIGtvbnRha3QgbWVkIGRlbS48YnIgLz48YnIgLz5TYW1ldGluZ2V0cyB2aXNlcHJlc2lkZW50IExhaWxhIFN1c2FubmUgVmFycyBzaWVyIGF0IFNhbWV0aW5nZXQgdmlsIGJlc3RyZWJlIHNlZyBwJmFyaW5nOyAmYXJpbmc7IHNrYWZmZSB0aWwgdmVpZSBmbGVyZSBtJm9zbGFzaDt0ZXBsYXNzZXIgb2cgZiZhcmluZzsgdGlsIGJlZHJlIGtvbW11bmlrYXNqb24gbWVkIGRlIGVsZHJlLjxiciAvPjxiciAvPjxzdHJvbmc+TGlrbmVuZGUgdXRmb3JkcmluZ2VyLjxiciAvPjxiciAvPi1EZSBlbGRyZSBpIGRlIGZlbSBzYW1pc2tlIGtvbW11bmVuZSBoYXIgc3RvcmUgb2cgbGlrbmVuZGUgdXRmb3JkcmluZ2VyLiBEZXJlcyBzaXR1YXNqb24gZm9ydmVycmVzIG4mYXJpbmc7ciBvZmZlbnRsaWdlIGtvbnRvcmVyIGZseXR0ZXMgbGVuZ3JlIHZla2sgb2cgZGV0IGlra2UgbGVuZ2VyIGZpbm5lcyBoamVscCBsb2thbHQsIGZvcmRpIGtvbW11bmlrYXNqb25lbiBkYSBtJmFyaW5nOyBza2plIGVudGVuIHNrcmlmdGxpZyBlbGxlciB2aWEgdGVsZWZvbiBlbGxlciBpbnRlcm5ldHQuIE1hbmdlIGtvbW11bmVyIHRpbGJ5ciBpa2tlIGxlbmdlciBoamVscCBsb2thbHQgdmVkIGJlc3RpbGxpbmcgYXYgdHJhbnNwb3J0IHRpbCBzeWtlaHVzIGVsbGVyIHRpbCAmYXJpbmc7IGZ5bGxlIHV0IHJlaXNlcmVnbmluZ2VyIHZlZCB0aWxiYWtla29tc3QgZnJhIHN5a2VodXNldCwgc2llciBTYW1ldGluZ2V0cyB2aXNlcHJlc2lkZW50IExhaWxhIFN1c2FubmUgVmFycy48YnIgLz48L3N0cm9uZz48YnIgLz5EZXQga29tIGZyYW0gcCZhcmluZzsgbSZvc2xhc2g7dGV0IGF0IGRlIGVsZHJlIGhhciBzdG9ydCBiZWhvdiBmb3Igc2tyaXZlLSBvZyBsZXNlaGplbHAsIG9nIGRlICZvc2xhc2g7bnNrZXQgYXQgZGV0IGkgaHZlciBrb21tdW5lIHZhciBlbiBiZXN0ZW10IHBlcnNvbiBzb20ga3VubmUgaGplbHBlIGRlbS4gRW4gZmFzdCBwZXJzb24gc29tIGRlIGt1bm5lIGJsaSBramVudCBtZWQgb2cgZiZvc2xhc2g7bGUgdHJ5Z2doZXQgb3ZlcmZvci4gQW5kcmUgJm9zbGFzaDtuc2tlciBzb20ga29tIGZyYW0gcCZhcmluZzsgbSZvc2xhc2g7dGV0IHZhciBncmF0aXMgdGFubnBsZWllLCAmYXJpbmc7cmxpZyBoZWxzZWtvbnRyb2xsLCBtJm9zbGFzaDt0ZXBsYXNzZXIgZm9yIGRlIGVsZHJlIGkga29tbXVuZW4gb2cgb2dzJmFyaW5nOyBtJm9zbGFzaDt0ZXBsYXNzZXIgZGVyIGRlIGt1bm5lIHRyZWZmZSBlbGRyZSBmcmEgZGUgYW5kcmUgbm9yZGlza2UgbGFuZGVuZS48L3A+DQo8cD4mbmJzcDs8L3A+DQo8L2Rpdj4NCmQCDA9kFgJmD2QWCAIBDxYCHwAFDFB1Ymxpc2VydCBhdmQCAw8PFgIeB1Zpc2libGVoZGQCBQ8WAh8ABRPDmHN0YnksIEphbiBSb2dlci4gZAINDxYCHwAFF1Npc3QgZW5kcmV0ICAyNy4wOS4yMDEwZAIOD2QWAmYPZBYCZg9kFgYCAQ9kFgICAQ9kFgJmD2QWAmYPZBYCZg9kFgJmDw8WCB4HX1RpdHRlbAUhKlZpc2VwcmVzaWRlbnQgTGFpbGEgU3VzYW5uZSBWYXJzHgxfQmVza3JpdmVsc2VlHgpfRGF0YUtpbGRlMuEMAAEAAAD/////AQAAAAAAAAAMAgAAAE5TeXN0ZW0uRGF0YSwgVmVyc2lvbj0yLjAuMC4wLCBDdWx0dXJlPW5ldXRyYWwsIFB1YmxpY0tleVRva2VuPWI3N2E1YzU2MTkzNGUwODkFAQAAABVTeXN0ZW0uRGF0YS5EYXRhVGFibGUDAAAAGURhdGFUYWJsZS5SZW1vdGluZ1ZlcnNpb24JWG1sU2NoZW1hC1htbERpZmZHcmFtAwEBDlN5c3RlbS5WZXJzaW9uAgAAAAkDAAAABgQAAAC9Bjw/eG1sIHZlcnNpb249IjEuMCIgZW5jb2Rpbmc9InV0Zi0xNiI/Pg0KPHhzOnNjaGVtYSB4bWxucz0iIiB4bWxuczp4cz0iaHR0cDovL3d3dy53My5vcmcvMjAwMS9YTUxTY2hlbWEiIHhtbG5zOm1zZGF0YT0idXJuOnNjaGVtYXMtbWljcm9zb2Z0LWNvbTp4bWwtbXNkYXRhIj4NCiAgPHhzOmVsZW1lbnQgbmFtZT0iVGFibGUxIj4NCiAgICA8eHM6Y29tcGxleFR5cGU+DQogICAgICA8eHM6c2VxdWVuY2U+DQogICAgICAgIDx4czplbGVtZW50IG5hbWU9IlRlbGVmb24iIHR5cGU9InhzOnN0cmluZyIgbXNkYXRhOnRhcmdldE5hbWVzcGFjZT0iIiBtaW5PY2N1cnM9IjAiIC8+DQogICAgICAgIDx4czplbGVtZW50IG5hbWU9Ik1vYmlsIiB0eXBlPSJ4czpzdHJpbmciIG1zZGF0YTp0YXJnZXROYW1lc3BhY2U9IiIgbWluT2NjdXJzPSIwIiAvPg0KICAgICAgICA8eHM6ZWxlbWVudCBuYW1lPSJFLXBvc3QiIHR5cGU9InhzOnN0cmluZyIgbXNkYXRhOnRhcmdldE5hbWVzcGFjZT0iIiBtaW5PY2N1cnM9IjAiIC8+DQogICAgICA8L3hzOnNlcXVlbmNlPg0KICAgIDwveHM6Y29tcGxleFR5cGU+DQogIDwveHM6ZWxlbWVudD4NCiAgPHhzOmVsZW1lbnQgbmFtZT0idG1wRGF0YVNldCIgbXNkYXRhOklzRGF0YVNldD0idHJ1ZSIgbXNkYXRhOk1haW5EYXRhVGFibGU9IlRhYmxlMSIgbXNkYXRhOlVzZUN1cnJlbnRMb2NhbGU9InRydWUiPg0KICAgIDx4czpjb21wbGV4VHlwZT4NCiAgICAgIDx4czpjaG9pY2UgbWluT2NjdXJzPSIwIiBtYXhPY2N1cnM9InVuYm91bmRlZCIgLz4NCiAgICA8L3hzOmNvbXBsZXhUeXBlPg0KICA8L3hzOmVsZW1lbnQ+DQo8L3hzOnNjaGVtYT4GBQAAAPcDPGRpZmZncjpkaWZmZ3JhbSB4bWxuczptc2RhdGE9InVybjpzY2hlbWFzLW1pY3Jvc29mdC1jb206eG1sLW1zZGF0YSIgeG1sbnM6ZGlmZmdyPSJ1cm46c2NoZW1hcy1taWNyb3NvZnQtY29tOnhtbC1kaWZmZ3JhbS12MSI+DQogIDx0bXBEYXRhU2V0Pg0KICAgIDxUYWJsZTEgZGlmZmdyOmlkPSJUYWJsZTExIiBtc2RhdGE6cm93T3JkZXI9IjAiIGRpZmZncjpoYXNDaGFuZ2VzPSJpbnNlcnRlZCI+DQogICAgICA8VGVsZWZvbj4rNDcgNzggNDcgNDAgMDA8L1RlbGVmb24+DQogICAgICA8TW9iaWw+KzQ3IDk3NyA1NCAxMDI8L01vYmlsPg0KICAgICAgPEUtcG9zdD4gJmx0O2EgY2xhc3M9IiBibGFuayIgdGl0bGU9IiIgIGhyZWY9Im1haWx0bzpsYWlsYS5zdXNhbm5lLnZhcnNAc2FtZWRpZ2dpLm5vIiZndDtsYWlsYS5zdXNhbm5lLnZhcnNAc2FtZWRpZ2dpLm5vJmx0Oy9hJmd0OzwvRS1wb3N0Pg0KICAgIDwvVGFibGUxPg0KICA8L3RtcERhdGFTZXQ+DQo8L2RpZmZncjpkaWZmZ3JhbT4EAwAAAA5TeXN0ZW0uVmVyc2lvbgQAAAAGX01ham9yBl9NaW5vcgZfQnVpbGQJX1JldmlzaW9uAAAAAAgICAgCAAAAAAAAAP//////////Cx4WX0dyaWRWaWV3U29ydERpcmVjdGlvbgsqJ1N5c3RlbS5XZWIuVUkuV2ViQ29udHJvbHMuU29ydERpcmVjdGlvbgBkFgRmDxYCHgVzdHlsZQULd2lkdGg6MTAwJTsWAgIFDxQrAA0PFhAeFEF1dG9nZW5lcmF0ZUNvbHVtbnMyaB4HQ2FwdGlvbgUhKlZpc2VwcmVzaWRlbnQgTGFpbGEgU3VzYW5uZSBWYXJzHgdTdW1tYXJ5ZR4MQWxsb3dTb3J0aW5nZx4NRW1wdHlEYXRhVGV4dAUXKEluZ2VuRGF0YVRpbGdqZW5nZWxpZykeC18hRGF0YUJvdW5kZx4LXyFJdGVtQ291bnQCAR4RUmFkQ3NzS2xhc3NlVmFsZ3QFF0lubmhvbGRUYWJlbGxUZWtzdFZhbGd0ZA8UKwADPCsABQEAFgQeCkhlYWRlclRleHQFB1RlbGVmb24eDlNvcnRFeHByZXNzaW9uBQtUZWxlZm9uIEFTQzwrAAUBABYEHxMFBU1vYmlsHxQFCU1vYmlsIEFTQzwrAAUBABYEHxMFBkUtcG9zdB8UBQpFLXBvc3QgQVNDFCsBAwIGAgYCBhYGHwEFEklubmhvbGRUYWJlbGxQYWdlch4PSG9yaXpvbnRhbEFsaWduCyopU3lzdGVtLldlYi5VSS5XZWJDb250cm9scy5Ib3Jpem9udGFsQWxpZ24DHwICgoAEFgQfAQUcSW5uaG9sZFRhYmVsbE92ZXJza3JpZnRUZWtzdB8CAgJkFgQfAQUSSW5uaG9sZFRhYmVsbFRla3N0HwICAmRkZGRkFgYeBVdpZHRoGwAAAAAAEH1AAQAAAB8BBQ1Jbm5ob2xkVGFiZWxsHwICggJkFgJmD2QWBmYPZBYGZg8PFgQfAQULc2tpbGxlbGluamUfAgICZGQCAQ8PFgQfAQULc2tpbGxlbGluamUfAgICZGQCAg8PFgQfAQULc2tpbGxlbGluamUfAgICZGQCAQ9kFgZmDw8WBB8BBQtza2lsbGVsaW5qZR8CAgJkZAIBDw8WBB8BBQtza2lsbGVsaW5qZR8CAgJkZAICDw8WBB8BBQtza2lsbGVsaW5qZR8CAgJkZAICDw8WAh8FaGQWBmYPDxYEHwEFC3NraWxsZWxpbmplHwICAmRkAgEPDxYEHwEFC3NraWxsZWxpbmplHwICAmRkAgIPDxYEHwEFC3NraWxsZWxpbmplHwICAmRkAgIPZBYCZg8PFgIfBWhkFgJmD2QWBAIBDw8WBh8AZR8BBQ1CcnVrZXJNZWxkaW5nHwICAmRkAgMPDxYCHwBlZGQCAw8WAh8FaBYCAgEPZBYCZg9kFgYCAg9kFgRmD2QWAmYPEGRkFgBkAgEPZBYCZg88KwAJAGQCAw9kFgRmD2QWAgIBDxBkZBYAZAIBD2QWAmYPPCsACQBkAgQPZBYCZg9kFgQCAQ8PFgYfAGUfAQUNQnJ1a2VyTWVsZGluZx8CAgJkZAIDDw8WAh8AZWRkAgUPZBYCAgEPZBYKZg88KwAJAGQCAg88KwAJAGQCBA88KwAJAQAPFgQeCERhdGFLZXlzFgAfEQIBZBYCAgEPZBYGAgEPDxYCHg1BbHRlcm5hdGVUZXh0BQlBcnRpa2tlbCBkZAIDDw8WBB8DZR8AZWRkAgUPFgIfAAWIASA8YSBjbGFzcz0iSW5uaG9sZExpbmsiIHRpdGxlPSIiICBocmVmPSIvYXJ0aWtrZWwuYXNweD9NSWQxPTEwNDImYW1wO0FJZD0zODk4Ij5BcnRpa2tlbCAgLSBJbnZpdGVyZXIgdGlsIGRpYWxvZ20mIzI0ODt0ZSBvbSBsZXNlLS4uLjwvYT5kAgYPPCsACQBkAgoPPCsACQBkGAEFOWN0bDAwJE1pZHRTb25lJHVjQXJ0aWtrZWwkY3RsMDAkY3RsMDAkY3RsMDEkY3RsMDEkdWNMaXN0ZQ88KwAKAQgCAWRE2lRTCbkXXJU1SgB3k1CGbyLZIQ== />


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

<input type=hidden name=__EVENTVALIDATION id=__EVENTVALIDATION value=/wEWBAKKvcGHAgKNqpSxBQLxqtPvBwKstP23Cs8ANVkBN3BVs7Vlwn7JrFF+CqGD />
		
    

<div id=ctl00_MidtSone_ucArtikkel_ctl00_pnlArtikkel class=artikkel artikkelmal_3>
	<h1 id=tittel class=InnholdOverskrift >
Sametinget møtte de eldre'"/>
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
