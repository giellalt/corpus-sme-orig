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
<xsl:variable name="filename" select="'http://www.sametinget.no/artikkel.aspx?MId1=1042&amp;AId=3898&amp;Print=1'"/>
<xsl:variable name="title" select="'Inviterer til dialogmøte om lese- og skrivehjelp til eldre - diggi.no
</title></head>

<body id=ctl00_Body style=background-color:white>
	<form name=aspnetForm method=post action=artikkel.aspx?MId1=1042&amp;amp;AId=3898&amp;amp;Print=1 id=aspnetForm style=width:90%>
<input type=hidden name=__VIEWSTATE id=__VIEWSTATE value=/wEPDwULLTEyNjc4NzYyNTQPZBYCZg9kFgICAw9kFgICAw9kFgICAQ9kFgICAQ9kFgICAQ9kFgJmD2QWAgICD2QWAmYPZBYCZg9kFgJmD2QWDmYPFgIeBFRleHQFcTxoMSBpZD0idGl0dGVsIiBjbGFzcz0iSW5uaG9sZE92ZXJza3JpZnQiID4NCkludml0ZXJlciB0aWwgZGlhbG9nbcO4dGUgb20gbGVzZS0gb2cgc2tyaXZlaGplbHAgdGlsIGVsZHJlDQo8L2gxPg0KZAICD2QWAmYPDxYEHghDc3NDbGFzcwUbYXJ0aWtrZWxiaWxkZSBiaWxkZV92ZW5zdHJlHgRfIVNCAgJkFgICAQ8PFgQfAAWJATxpbWcgYm9yZGVyPSIwIiAgIHNyYz0iL2t1bmRlL2JpbGRlci9MaXRlX2xhaWxhX3N1c2FubmVfdmFycygxKS5qcGciIGFsaWduPSJ0b3AiIGFsdD0iTGFpbGEgU3VzYW5uZSBWYXJzICIgdGl0bGU9IkxhaWxhIFN1c2FubmUgVmFycyAiIC8+HgtOYXZpZ2F0ZVVybAUSamF2YXNjcmlwdDp2b2lkKDApFgIeB09uQ2xpY2sFxgF3aW5kb3cub3BlbignL2JpbGRldmlzLmFzcD9CaWxkZUlkPTIxOTAmVmlzPXN0b3ImRWtzYWt0PXRydWUnLCdob21lJywndG9vbGJhcj1ubyxsb2NhdGlvbj1ubyxkaXJlY3Rvcmllcz1ubyxzdGF0dXM9bm8sbWVudWJhcj1ubyxzY3JvbGxiYXJzPXllcyxyZXNpemFibGU9eWVzLGNvcHloaXN0b3J5PXllcyxXaWR0aD0xMDI0LEhlaWdodD03NjgnKTtkAgQPFgIfAAXRAzxkaXYgY2xhc3M9IklubmhvbGRJbmdyZXNzIiBzdHlsZT0iIj4NCjxwPlNhbWV0aW5nZXQgaW52aXRlcmVyIHRpbCBkaWFsb2dtJm9zbGFzaDt0ZSBvbSBsZXNlIC0gb2cgc2tyaXZlaGplbHAgdGlsIHNhbWlza2UgZWxkcmUuIFAmYXJpbmc7IG0mb3NsYXNoO3RldCAmb3NsYXNoO25za2VyIFNhbWV0aW5nZXQmbmJzcDsgJmFyaW5nOyBoJm9zbGFzaDtyZSBvbSBodmlsa2UgdXRmb3JkcmluZ2VyIGtvbW11bmVuZSBoYXIgbiZhcmluZztyIGRldCBnamVsZGVyIGxlc2UtIG9nIHNrcml2ZWhqZWxwIHRpbCBlbGRyZSBtZW5uZXNrZXIgc29tIGthbnNramUgaWtrZSBiZWhlcnNrZXIgcyZhcmluZzsgZ29kdCBub3JzayBvZyBodm9yZGFuIFNhbWV0aW5nZXQga3VubmUgdiZhZWxpZztyZSB0aWwgaGplbHAgZm9yIGlnYW5nc2V0dGluZyBhdiB0aWx0YWsgc29tIGZvcmJlZHJlciBzaXR1YXNqb25lbi48L3A+DQo8L2Rpdj4NCmQCCA9kFgJmDw8WBB8BBRlhcnRpa2tlbGJpbGRlIGJpbGRlX2hveXJlHwICAmQWAgIBDw8WBB8ABdkDPGltZyBib3JkZXI9IjAiICAgc3JjPSIva3VuZGUvYmlsZGVyL01lZGl1bV9sw6FpbMOhX29nX2VsZHJlcmFhZGV0LmpwZyIgYWxpZ249InRvcCIgYWx0PSJWaXNlcHJlc2lkZW50ZW4gb2cgRnlsa2V0cyBTZW5pb3Jyw6VkIiB0aXRsZT0iVmlzZXByZXNpZGVudGVuIG9nIEZ5bGtldHMgU2VuaW9ycsOlZCIgLz48c3BhbiBjbGFzcz0iQmlsZGVUZWtzdCIgc3R5bGU9InRleHQtZGVjb3JhdGlvbjpub25lOyI+U2FtZXRpbmdldCBpbnZpdGVyZXIgdGlsIGRpYWxvZ20mIzI0ODt0ZSBvbSBsZXNlIC0gb2cgc2tyaXZlaGplbHAgdGlsIHNhbWlza2UgZWxkcmUuPC9zcGFuPjxzcGFuIGNsYXNzPSJCaWxkZVRla3N0IiBzdHlsZT0idGV4dC1kZWNvcmF0aW9uOm5vbmU7Ij48aW1nIHNyYz0iaW1hZ2VzL2thbWVyYS5naWYiIGJvcmRlcj0iMCIgYWx0PSJmb3RvZ3JhZiIgdGl0bGU9ImZvdG9ncmFmIiAvPkhhbm5lIEhvbG1ncmVuIDwvc3Bhbj4fAwUSamF2YXNjcmlwdDp2b2lkKDApFgIfBAXGAXdpbmRvdy5vcGVuKCcvYmlsZGV2aXMuYXNwP0JpbGRlSWQ9MjE3NiZWaXM9c3RvciZFa3Nha3Q9dHJ1ZScsJ2hvbWUnLCd0b29sYmFyPW5vLGxvY2F0aW9uPW5vLGRpcmVjdG9yaWVzPW5vLHN0YXR1cz1ubyxtZW51YmFyPW5vLHNjcm9sbGJhcnM9eWVzLHJlc2l6YWJsZT15ZXMsY29weWhpc3Rvcnk9eWVzLFdpZHRoPTEwMjQsSGVpZ2h0PTc2OCcpO2QCCg8WAh8ABZQPPGRpdiBjbGFzcz0iSW5uaG9sZFRla3N0IiBzdHlsZT0iIj4NCjxwPlNhbWV0aW5nZXQgaW52aXRlcmVyIHRpbCBkaWFsb2dtJm9zbGFzaDt0ZSBwb2xpdGlzayBsZWRlbHNlIGkgZm9ydmFsdG5pbmdza29tbXVuZW5lIGZvciBzYW1pc2sgc3ByJmFyaW5nO2sgaSBGaW5ubWFyaywgZWxkcmVyJmFyaW5nO2RzbGVkZXJlLCBub2VuIGJhbmtzamVmZXIgb2cgbGVkZXJlIGZvciBwZW5zam9uaXN0Zm9yZW5pbmdlciBpIHNhbW1lIGtvbW11bmVyLCBsZWRlcmVuIGZvciBGaW5ubWFyayBmeWxrZXNrb21tdW5lcyBlbGRyZXImYXJpbmc7ZCwgSW5kcmUgRmlubm1hcmtzIFJldHRzaGplbHBza29udG9yLCBGZWZvIG9nIGxlZGVyZSBmb3Igb3JnYW5pc2Fzam9uZXIgZm9yIHRhcHQgc2tvbGVnYW5nLjxiciAvPjxiciAvPjxzdHJvbmc+SHZvcmRhbiBmb3JicmVkZSBzaXR1YXNqb25lbjxiciAvPjxiciAvPjwvc3Ryb25nPlAmYXJpbmc7IG0mb3NsYXNoO3RldCAmb3NsYXNoO25za2VyIHZpICZhcmluZzsgaCZvc2xhc2g7cmUgb20gaHZpbGtlIHV0Zm9yZHJpbmdlciBrb21tdW5lbmUgaGFyIG4mYXJpbmc7ciBkZXQgZ2plbGRlciBsZXNlLSBvZyBza3JpdmVoamVscCB0aWwgZWxkcmUgbWVubmVza2VyIHNvbSBrYW5za2plIGlra2UgYmVoZXJza2VyIHMmYXJpbmc7IGdvZHQgbm9yc2sgb2cgaHZvcmRhbiBTYW1ldGluZ2V0IGt1bm5lIHYmYWVsaWc7cmUgdGlsIGhqZWxwIGZvciBpZ2FuZ3NldHRpbmcgYXYgdGlsdGFrIHNvbSBmb3JiZWRyZXIgc2l0dWFzam9uZW4uPGJyIC8+PGJyIC8+PHN0cm9uZz5Qcmlvcml0ZXJlciBlbGRyZTxiciAvPjxiciAvPjwvc3Ryb25nPlNhbWV0aW5nZXQgaGFyIGkgJmFyaW5nO3IgYXZzYXR0IG1pZGxlciBmb3IgJmFyaW5nOyBmJmFyaW5nOyBzYXR0IGkgZ2FuZyBoamVscCB0aWwgZWxkcmUgbWVubmVza2VyIGkga29tbXVuZXIgZGVyIGRldCBib3IgbWFuZ2Ugc2FtaXNrdGFsZW5kZSBlbGRyZSBvZyBzb20ga2Fuc2tqZSBoYXIgcHJvYmxlbWVyIG1lZCBtdW50bGlnIG9nIHNrcmlmdGxpZyBrb21tdW5pa2Fzam9uIG1lZCBiJmFyaW5nO2RlIG9mZmVudGxpZ2Ugb2cgcHJpdmF0ZSBpbnN0YW5zZXIuIDxiciAvPkZvciBla3NlbXBlbCBrYW4gZGV0IHYmYWVsaWc7cmUgZW4gdXRmb3JkcmluZyAmYXJpbmc7IGZvcnN0JmFyaW5nOyBpbm5ob2xkIGkgYnJldiBvZyBkb2t1bWVudGVyIGRlciBkZXQgYnJ1a2VzIHVramVudGUgYmVncmVwZXIgb2cgZXQgZm9ybWVsdCBzcHImYXJpbmc7ayBzb20gc2tpbGxlciBzZWcgZnJhIG11bnRsaWcgdGFsZS4gSHZpbGtlbiBoamVscCBmJmFyaW5nO3IgZWxkcmUgZm9yIGVrc2VtcGVsIGkgYmFua2VuZSwgSW5kcmUgRmlubm1hcmtzIHJldHRzaGplbHBza29udG9yIGVsbGVyIGkgRmVmbz88YnIgLz48YnIgLz48c3Ryb25nPkVsZHJlIHBvbGl0aXNrIG1lbGRpbmc8YnIgLz48YnIgLz48L3N0cm9uZz5JIGwmb3NsYXNoO3BldCBhdiBrb21tZW5kZSAmYXJpbmc7ciB2aWwgU2FtZXRpbmdldCB1dHZpa2xlIGVuIGVsZHJlcG9saXRpc2sgbWVsZGluZyBzb20gZXR0ZXIgcGxhbmVuIHNrYWwgZmVyZGlnc3RpbGxlcyBpIDIwMTIuIERlcmZvciB2aWwgZGV0IHYmYWVsaWc7cmUgbnl0dGlnICZhcmluZzsgdml0ZSBodm9yZGFuIGVsZHJlIHNqJm9zbGFzaDtsIHZ1cmRlcmVyIHNpbiBzaXR1YXNqb24gb2cgaHZpbGtlIGhqZWxwZXRpbHRhayBkZSBzYXZuZXIuPGJyIC8+PGJyIC8+PHN0cm9uZz5UaWQ6IFRvcnNkYWcgMjMuMDkuMTAga2wgMTIuMDAgLSAxNi4wMDxiciAvPjxiciAvPlN0ZWQ6IEthdXRva2Vpbm88YnIgLz48YnIgLz5NJm9zbGFzaDt0ZXJvbTogQWxsYXZhcmR1IGkgMy4mbmJzcDsgZXRnJm5ic3A7IHAmYXJpbmc7IERpZWh0b3NpaWRhPC9zdHJvbmc+PC9wPg0KPHA+TSZvc2xhc2g7dGV0IGVyICZhcmluZztwZW50IGZvciBwcmVzc2VuPC9wPg0KPC9kaXY+DQpkAgwPZBYCZg9kFggCAQ8WAh8ABQxQdWJsaXNlcnQgYXZkAgMPDxYCHgdWaXNpYmxlaGRkAgUPFgIfAAUTw5hzdGJ5LCBKYW4gUm9nZXIuIGQCDQ8WAh8ABRdTaXN0IGVuZHJldCAgMTcuMDkuMjAxMGQCDg9kFgJmD2QWAmYPZBYGAgEPZBYCAgEPZBYCZg9kFgJmD2QWAmYPZBYCZg8PFggeB19UaXR0ZWwFISpWaXNlcHJlc2lkZW50IExhaWxhIFN1c2FubmUgVmFycx4MX0Jlc2tyaXZlbHNlZR4KX0RhdGFLaWxkZTLhDAABAAAA/////wEAAAAAAAAADAIAAABOU3lzdGVtLkRhdGEsIFZlcnNpb249Mi4wLjAuMCwgQ3VsdHVyZT1uZXV0cmFsLCBQdWJsaWNLZXlUb2tlbj1iNzdhNWM1NjE5MzRlMDg5BQEAAAAVU3lzdGVtLkRhdGEuRGF0YVRhYmxlAwAAABlEYXRhVGFibGUuUmVtb3RpbmdWZXJzaW9uCVhtbFNjaGVtYQtYbWxEaWZmR3JhbQMBAQ5TeXN0ZW0uVmVyc2lvbgIAAAAJAwAAAAYEAAAAvQY8P3htbCB2ZXJzaW9uPSIxLjAiIGVuY29kaW5nPSJ1dGYtMTYiPz4NCjx4czpzY2hlbWEgeG1sbnM9IiIgeG1sbnM6eHM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDEvWE1MU2NoZW1hIiB4bWxuczptc2RhdGE9InVybjpzY2hlbWFzLW1pY3Jvc29mdC1jb206eG1sLW1zZGF0YSI+DQogIDx4czplbGVtZW50IG5hbWU9IlRhYmxlMSI+DQogICAgPHhzOmNvbXBsZXhUeXBlPg0KICAgICAgPHhzOnNlcXVlbmNlPg0KICAgICAgICA8eHM6ZWxlbWVudCBuYW1lPSJUZWxlZm9uIiB0eXBlPSJ4czpzdHJpbmciIG1zZGF0YTp0YXJnZXROYW1lc3BhY2U9IiIgbWluT2NjdXJzPSIwIiAvPg0KICAgICAgICA8eHM6ZWxlbWVudCBuYW1lPSJNb2JpbCIgdHlwZT0ieHM6c3RyaW5nIiBtc2RhdGE6dGFyZ2V0TmFtZXNwYWNlPSIiIG1pbk9jY3Vycz0iMCIgLz4NCiAgICAgICAgPHhzOmVsZW1lbnQgbmFtZT0iRS1wb3N0IiB0eXBlPSJ4czpzdHJpbmciIG1zZGF0YTp0YXJnZXROYW1lc3BhY2U9IiIgbWluT2NjdXJzPSIwIiAvPg0KICAgICAgPC94czpzZXF1ZW5jZT4NCiAgICA8L3hzOmNvbXBsZXhUeXBlPg0KICA8L3hzOmVsZW1lbnQ+DQogIDx4czplbGVtZW50IG5hbWU9InRtcERhdGFTZXQiIG1zZGF0YTpJc0RhdGFTZXQ9InRydWUiIG1zZGF0YTpNYWluRGF0YVRhYmxlPSJUYWJsZTEiIG1zZGF0YTpVc2VDdXJyZW50TG9jYWxlPSJ0cnVlIj4NCiAgICA8eHM6Y29tcGxleFR5cGU+DQogICAgICA8eHM6Y2hvaWNlIG1pbk9jY3Vycz0iMCIgbWF4T2NjdXJzPSJ1bmJvdW5kZWQiIC8+DQogICAgPC94czpjb21wbGV4VHlwZT4NCiAgPC94czplbGVtZW50Pg0KPC94czpzY2hlbWE+BgUAAAD3AzxkaWZmZ3I6ZGlmZmdyYW0geG1sbnM6bXNkYXRhPSJ1cm46c2NoZW1hcy1taWNyb3NvZnQtY29tOnhtbC1tc2RhdGEiIHhtbG5zOmRpZmZncj0idXJuOnNjaGVtYXMtbWljcm9zb2Z0LWNvbTp4bWwtZGlmZmdyYW0tdjEiPg0KICA8dG1wRGF0YVNldD4NCiAgICA8VGFibGUxIGRpZmZncjppZD0iVGFibGUxMSIgbXNkYXRhOnJvd09yZGVyPSIwIiBkaWZmZ3I6aGFzQ2hhbmdlcz0iaW5zZXJ0ZWQiPg0KICAgICAgPFRlbGVmb24+KzQ3IDc4IDQ3IDQwIDAwPC9UZWxlZm9uPg0KICAgICAgPE1vYmlsPis0NyA5NzcgNTQgMTAyPC9Nb2JpbD4NCiAgICAgIDxFLXBvc3Q+ICZsdDthIGNsYXNzPSIgYmxhbmsiIHRpdGxlPSIiICBocmVmPSJtYWlsdG86bGFpbGEuc3VzYW5uZS52YXJzQHNhbWVkaWdnaS5ubyImZ3Q7bGFpbGEuc3VzYW5uZS52YXJzQHNhbWVkaWdnaS5ubyZsdDsvYSZndDs8L0UtcG9zdD4NCiAgICA8L1RhYmxlMT4NCiAgPC90bXBEYXRhU2V0Pg0KPC9kaWZmZ3I6ZGlmZmdyYW0+BAMAAAAOU3lzdGVtLlZlcnNpb24EAAAABl9NYWpvcgZfTWlub3IGX0J1aWxkCV9SZXZpc2lvbgAAAAAICAgIAgAAAAAAAAD//////////wseFl9HcmlkVmlld1NvcnREaXJlY3Rpb24LKidTeXN0ZW0uV2ViLlVJLldlYkNvbnRyb2xzLlNvcnREaXJlY3Rpb24AZBYEZg8WAh4Fc3R5bGUFC3dpZHRoOjEwMCU7FgICBQ8UKwANDxYQHhRBdXRvZ2VuZXJhdGVDb2x1bW5zMmgeB0NhcHRpb24FISpWaXNlcHJlc2lkZW50IExhaWxhIFN1c2FubmUgVmFycx4HU3VtbWFyeWUeDEFsbG93U29ydGluZ2ceDUVtcHR5RGF0YVRleHQFFyhJbmdlbkRhdGFUaWxnamVuZ2VsaWcpHgtfIURhdGFCb3VuZGceC18hSXRlbUNvdW50AgEeEVJhZENzc0tsYXNzZVZhbGd0BRdJbm5ob2xkVGFiZWxsVGVrc3RWYWxndGQPFCsAAzwrAAUBABYEHgpIZWFkZXJUZXh0BQdUZWxlZm9uHg5Tb3J0RXhwcmVzc2lvbgULVGVsZWZvbiBBU0M8KwAFAQAWBB8TBQVNb2JpbB8UBQlNb2JpbCBBU0M8KwAFAQAWBB8TBQZFLXBvc3QfFAUKRS1wb3N0IEFTQxQrAQMCBgIGAgYWBh8BBRJJbm5ob2xkVGFiZWxsUGFnZXIeD0hvcml6b250YWxBbGlnbgsqKVN5c3RlbS5XZWIuVUkuV2ViQ29udHJvbHMuSG9yaXpvbnRhbEFsaWduAx8CAoKABBYEHwEFHElubmhvbGRUYWJlbGxPdmVyc2tyaWZ0VGVrc3QfAgICZBYEHwEFEklubmhvbGRUYWJlbGxUZWtzdB8CAgJkZGRkZBYGHgVXaWR0aBsAAAAAABB9QAEAAAAfAQUNSW5uaG9sZFRhYmVsbB8CAoICZBYCZg9kFgZmD2QWBmYPDxYEHwEFC3NraWxsZWxpbmplHwICAmRkAgEPDxYEHwEFC3NraWxsZWxpbmplHwICAmRkAgIPDxYEHwEFC3NraWxsZWxpbmplHwICAmRkAgEPZBYGZg8PFgQfAQULc2tpbGxlbGluamUfAgICZGQCAQ8PFgQfAQULc2tpbGxlbGluamUfAgICZGQCAg8PFgQfAQULc2tpbGxlbGluamUfAgICZGQCAg8PFgIfBWhkFgZmDw8WBB8BBQtza2lsbGVsaW5qZR8CAgJkZAIBDw8WBB8BBQtza2lsbGVsaW5qZR8CAgJkZAICDw8WBB8BBQtza2lsbGVsaW5qZR8CAgJkZAICD2QWAmYPDxYCHwVoZBYCZg9kFgQCAQ8PFgYfAGUfAQUNQnJ1a2VyTWVsZGluZx8CAgJkZAIDDw8WAh8AZWRkAgMPFgIfBWgWAgIBD2QWAmYPZBYGAgIPZBYEZg9kFgJmDxBkZBYAZAIBD2QWAmYPPCsACQBkAgMPZBYEZg9kFgICAQ8QZGQWAGQCAQ9kFgJmDzwrAAkAZAIED2QWAmYPZBYEAgEPDxYGHwBlHwEFDUJydWtlck1lbGRpbmcfAgICZGQCAw8PFgIfAGVkZAIFDxYCHwVoFgICAQ9kFgpmDzwrAAkAZAICDzwrAAkAZAIEDzwrAAkAZAIGDzwrAAkAZAIKDzwrAAkAZBgBBTljdGwwMCRNaWR0U29uZSR1Y0FydGlra2VsJGN0bDAwJGN0bDAwJGN0bDAxJGN0bDAxJHVjTGlzdGUPPCsACgEIAgFkJ3RVutNVA2aEWg65D/38pop54QY= />


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

<input type=hidden name=__EVENTVALIDATION id=__EVENTVALIDATION value=/wEWBAKWw9XVCAKNqpSxBQLxqtPvBwKstP23Cu+G9SIA0LZLqvk4HuXyf7dmBpFu />
		
    

<div id=ctl00_MidtSone_ucArtikkel_ctl00_pnlArtikkel class=artikkel artikkelmal_3>
	<h1 id=tittel class=InnholdOverskrift >
Inviterer til dialogmøte om lese- og skrivehjelp til eldre'"/>
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
