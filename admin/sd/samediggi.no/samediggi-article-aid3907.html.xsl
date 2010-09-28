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
<xsl:variable name="filename" select="'http://www.sametinget.no/artikkel.aspx?MId1=3471&amp;AId=3907&amp;Print=1'"/>
<xsl:variable name="title" select="'Sametinget skal følge opp etablerere i sørsamisk område - Sámediggi Sametinget
</title></head>

<body id=ctl00_Body style=background-color:white>
	<form name=aspnetForm method=post action=artikkel.aspx?MId1=3471&amp;amp;AId=3907&amp;amp;Print=1 id=aspnetForm style=width:90%>
<input type=hidden name=__VIEWSTATE id=__VIEWSTATE value=/wEPDwULLTEyNjc4NzYyNTQPZBYCZg9kFgICAw9kFgICAw9kFgICAQ9kFgICAQ9kFgICAQ9kFgJmD2QWAgICD2QWAmYPZBYCZg9kFgJmD2QWDmYPFgIeBFRleHQFcDxoMSBpZD0idGl0dGVsIiBjbGFzcz0iSW5uaG9sZE92ZXJza3JpZnQiID4NClNhbWV0aW5nZXQgc2thbCBmw7hsZ2Ugb3BwIGV0YWJsZXJlcmUgaSBzw7hyc2FtaXNrIG9tcsOlZGUNCjwvaDE+DQpkAgIPZBYCZg8PFgQeCENzc0NsYXNzBRthcnRpa2tlbGJpbGRlIGJpbGRlX3ZlbnN0cmUeBF8hU0ICAmQWAgIBDw8WBB8ABWA8aW1nIGJvcmRlcj0iMCIgICBzcmM9Ii9rdW5kZS9iaWxkZXIvTGl0ZV9EdW9kamkuSlBHIiBhbGlnbj0idG9wIiBhbHQ9IkR1b2RqaSIgdGl0bGU9IkR1b2RqaSIgLz4eC05hdmlnYXRlVXJsBRJqYXZhc2NyaXB0OnZvaWQoMCkWAh4HT25DbGljawXGAXdpbmRvdy5vcGVuKCcvYmlsZGV2aXMuYXNwP0JpbGRlSWQ9MTIyMiZWaXM9c3RvciZFa3Nha3Q9dHJ1ZScsJ2hvbWUnLCd0b29sYmFyPW5vLGxvY2F0aW9uPW5vLGRpcmVjdG9yaWVzPW5vLHN0YXR1cz1ubyxtZW51YmFyPW5vLHNjcm9sbGJhcnM9eWVzLHJlc2l6YWJsZT15ZXMsY29weWhpc3Rvcnk9eWVzLFdpZHRoPTEwMjQsSGVpZ2h0PTc2OCcpO2QCBA8WAh8ABa0CPGRpdiBjbGFzcz0iSW5uaG9sZEluZ3Jlc3MiIHN0eWxlPSIiPg0KPHA+PHN0cm9uZz4tU2FtaXNrZSBsb2thbHNhbWZ1bm4gYmVoJm9zbGFzaDt2ZXIgbCZvc2xhc2g7bm5zb21tZSBhcmJlaWRzcGxhc3NlciBvZyBkZXJmb3IgZXIgZGV0IHZpa3RpZyAmYXJpbmc7IGYmb3NsYXNoO2xnZSBvcHAgZXRhYmxlcmVyZSBzb20gaGFyIGYmYXJpbmc7dHQgb2ZmZW50bGlnIHN0Jm9zbGFzaDt0dGUgZnJhIFNhbWV0aW5nZXQgLCBzaWVyIHNhbWV0aW5nc3ImYXJpbmc7ZCBNYXJpYW5uZSBCYWx0by48L3N0cm9uZz48L3A+DQo8L2Rpdj4NCmQCCA9kFgJmDw8WBB8BBRlhcnRpa2tlbGJpbGRlIGJpbGRlX2hveXJlHwICAmQWAgIBDw8WBB8ABY4DPGltZyBib3JkZXI9IjAiICAgc3JjPSIva3VuZGUvYmlsZGVyL01lZGl1bV9tYXJpYW5uZV9iYWx0byxfbmFlci5qcGciIGFsaWduPSJ0b3AiIGFsdD0iUsOlZHNtZWRsZW0gTWFyaWFubmUgQmFsdG8sIG7DpnJ0ICIgdGl0bGU9IlLDpWRzbWVkbGVtIE1hcmlhbm5lIEJhbHRvLCBuw6ZydCAiIC8+PHNwYW4gY2xhc3M9IkJpbGRlVGVrc3QiIHN0eWxlPSJ0ZXh0LWRlY29yYXRpb246bm9uZTsiPk1hcmlhbm5lIEJhbHRvIDwvc3Bhbj48c3BhbiBjbGFzcz0iQmlsZGVUZWtzdCIgc3R5bGU9InRleHQtZGVjb3JhdGlvbjpub25lOyI+PGltZyBzcmM9ImltYWdlcy9rYW1lcmEuZ2lmIiBib3JkZXI9IjAiIGFsdD0iZm90b2dyYWYiIHRpdGxlPSJmb3RvZ3JhZiIgLz5TYXJhIE1hcmphIE1hZ2dhIDwvc3Bhbj4fAwUSamF2YXNjcmlwdDp2b2lkKDApFgIfBAXGAXdpbmRvdy5vcGVuKCcvYmlsZGV2aXMuYXNwP0JpbGRlSWQ9MjE5OCZWaXM9c3RvciZFa3Nha3Q9dHJ1ZScsJ2hvbWUnLCd0b29sYmFyPW5vLGxvY2F0aW9uPW5vLGRpcmVjdG9yaWVzPW5vLHN0YXR1cz1ubyxtZW51YmFyPW5vLHNjcm9sbGJhcnM9eWVzLHJlc2l6YWJsZT15ZXMsY29weWhpc3Rvcnk9eWVzLFdpZHRoPTEwMjQsSGVpZ2h0PTc2OCcpO2QCCg8WAh8ABdsUPGRpdiBjbGFzcz0iSW5uaG9sZFRla3N0IiBzdHlsZT0iIj4NCjxwPlNhbWV0aW5nZXQgc2thbCBzZXR0ZSBpIGdhbmcgZXQgb3BwZiZvc2xhc2g7bGdpbmdzYXJiZWlkIGZvciBkZSBzb20gaGFyIGV0YWJsZXJ0IHNhbWlza2Ugdmlya3NvbWhldGVyIGkgcyZvc2xhc2g7cnNhbWlzayBvbXImYXJpbmc7ZGUgZGUgc2lzdGUgZmVtICZhcmluZztyZW5lLiBEZXR0ZSBza2FsIHNramUgaSBzYW1hcmJlaWQgbWVkIE5vcmRsYW5kIGZ5bGtlc2tvbW11bmUuPGJyIC8+PGJyIC8+TSZhcmluZztsZXQgbWVkIHByb3NqZWt0ZXQgZXIgJmFyaW5nOyBnaSBkZWx0YWtlcm5lIGlubnNpa3QgaSBodm9yZGFuIGRlIGthbiAmb3NsYXNoO2tlIGwmb3NsYXNoO25uc29taGV0ZW4gaSBueWV0YWJsZXJ0ZSB2aXJrc29taGV0ZXIuIDxiciAvPjxiciAvPkVuIGV0YWJsZXJpbmcga2FuIHRhIG1hbmdlICZhcmluZztyIGYmb3NsYXNoO3IgYmVkcmlmdGVuIGcmYXJpbmc7ciBtZWQgb3ZlcnNrdWRkLiBTbGlrZSB2aXJrc29taGV0ZXIgZiZhcmluZztyIG9mdGUgYWx0IGZvciBsaXRlbiBvcHBtZXJrc29taGV0IGF2IGRlIHNvbSBmaW5hbnNpZXJlciBwcm9zamVrdGVyLiBNJmFyaW5nO2xncnVwcGVuIGVyIHNhbWlza2Uga29tYmluYXNqb25zdXQmb3NsYXNoO3ZlcmUgcyZvc2xhc2g7ciBmb3IgU2FsdGZqZWxsZXQgc29tIGRyaXZlciBtZWQgc2FtaXNrZSBuJmFlbGlnO3Jpbmdlci48YnIgLz48YnIgLz48c3Ryb25nPlNpa3JlIGJvc2V0dGluZzxiciAvPjxiciAvPi1TYW1ldGluZ2V0IGhhciBwcmlvcml0ZXJ0ICZhcmluZzsgZmluYW5zaWVyZSBueWUgdmlya3NvbWhldGVyLCBtZW4gZGV0IGVyIGxpa2UgdmlrdGlnJm5ic3A7ICZhcmluZzsgb3BwcmV0dGhvbGRlIG9nIHV0dmlrbGUgZWtzaXN0ZXJlbmRlIHZpcmtzb21oZXRlciBmb3IgJmFyaW5nOyBzaWtyZSBzeXNzZWxzZXR0aW5nZW4gaSBzYW1pc2tlIG9tciZhcmluZztkZXIsIHNpZXIgc2FtZXRpbmdzciZhcmluZztkIE1hcmlhbm5lIEJhbHRvLjxiciAvPjxiciAvPjwvc3Ryb25nPkZvciBTYW1ldGluZ2V0IGVyIGRldCB2aWt0aWcgJmFyaW5nOyBmJm9zbGFzaDtsZ2Ugb3BwIG55ZXRhYmxlcmVyZSBibGFudCBhbm5ldCBmb3IgJmFyaW5nOyBzaWtyZSBhdCBldGFibGVyZXJuZSBnaiZvc2xhc2g7ciBkZSByZXR0ZSB2YWxnZW5lIGkgZXRhYmxlcmluZ3NwZXJpb2Rlbi4gT3BwZiZvc2xhc2g7bGdpbmdzYXJiZWlkZXQgc2thbCBza2plIGkgZm9ybSBhdiBzYW1saW5nZXIuIERldCBza2FsIHYmYWVsaWc7cmUgdHJlIHNhbWxpbmdlciBwJmFyaW5nOyB0byBkYWdlciBodmVyLiBUZW1hZXIgc29tIHZpbCBibGkgc2F0dCBvcHAgZXIgbCZvc2xhc2g7bm5zb21oZXRzdnVyZGVyaW5nZXIsIHJlZ25za2Fwc2FuYWx5c2UsIHNhbGdzLSBvZyBtYXJrZWRzZm9yaG9sZCwgbmV0dHZlcmtzZGFubmVsc2Ugb2cgYmVkcmlmdHN1dHZpa2xpbmcuJm5ic3A7Jm5ic3A7PGJyIC8+PGJyIC8+PHN0cm9uZz5GJm9zbGFzaDtyc3RlIHNhbWxpbmcgaSBub3ZlbWJlcjxiciAvPjxiciAvPjwvc3Ryb25nPlNhbWV0aW5nZXQgaGFyIGxhZ3QgcHJvc2pla3RldCB1dCBwJmFyaW5nOyBhbmJ1ZC4gVmkgcmVnbmVyIG1lZCBhdCBkZW4gZiZvc2xhc2g7cnN0ZSBzYW1saW5nZW4gdmlsIHYmYWVsaWc7cmUgaSBub3ZlbWJlciwgb2cgZGUgbmVzdGUgdmlsIGJsaSBnamVubm9tZiZvc2xhc2g7cnQgaSAyMDExLjxiciAvPjxiciAvPjxzdHJvbmc+LUh2aXMgcHJvc2pla3RldCBibGlyIHZlbGx5a2tldCBzJmFyaW5nOyB2aWwgU2FtZXRpbmdldCB2dXJkZXJlICZhcmluZzsgc2V0dGUgaSB2ZXJrIGxpa25lbmRlIHByb3NqZWt0ZXIgaSBhbmRyZSBzYW1pc2tlIG9tciZhcmluZztkZXIsIHNpZXIgciZhcmluZztkc21lZGxlbSBNYXJpYW5uZSBCYWx0by48YnIgLz48YnIgLz48L3N0cm9uZz5TYW1ldGluZ2V0IHZpbCBrb21tZSB0aWxiYWtlIG1lZCBtZXIgaW5mb3JtYXNqb24gcCZhcmluZzsgdiZhcmluZztyZSBoamVtbWVzaWRlciBvbSBvcHBmJm9zbGFzaDtsZ2luZ3NhcmJlaWRldC48YnIgLz48YnIgLz48c3Ryb25nPkdqZW5ub21mJm9zbGFzaDtyIGluZm9ybWFzam9uc2FyYmVpZDxiciAvPjxiciAvPjwvc3Ryb25nPlNhbWV0aW5nZXQgaGFyIGhvbGR0IGZsZXJlIGluZm9ybWFzam9uc20mb3NsYXNoO3RlciBpICZhcmluZztyIG9tIFNhbWV0aW5nZXRzIHZpcmtlbWlkZGVsb3JkbmluZ2VyIGkgZGUgcyZvc2xhc2g7cnNhbWlza2Ugb21yJmFyaW5nO2RlbmUuIE0mYXJpbmc7bGV0IGhhciB2JmFlbGlnO3J0ICZhcmluZzsgZiZhcmluZzsgZmxlcmUgcHJvc2pla3RlciBmcmEgZGUgcyZvc2xhc2g7cnNhbWlza2Ugb21yJmFyaW5nO2RlbmUuPC9wPg0KPHA+PHN0cm9uZz4tVmkgaCZhcmluZztwZXIgYXQgbWFuZ2UgZXRhYmxlcmVyZSBibGlyIG1lZCBwJmFyaW5nOyBvcHBmJm9zbGFzaDtsZ2luZ3NhcmJlaWRldCwgc2llciBzYW1ldGluZ3NyJmFyaW5nO2QgTWFyaWFubmUgQmFsdG8uPC9zdHJvbmc+PC9wPg0KPHA+PGEgY2xhc3M9IklubmhvbGRMaW5rVGVrc3QiIGhyZWY9Imh0dHA6Ly93d3cuZG9mZmluLm5vL3NlYXJjaC9zaG93L3NlYXJjaF92aWV3LmFzcHg/SUQ9QVVHMTUwNjA3Ij5IZXIga2FuIGR1IGxlc2UgbWVyIG9tIGFuYnVkZXQ8L2E+PC9wPg0KPC9kaXY+DQpkAgwPZBYCZg9kFggCAQ8WAh8ABQxQdWJsaXNlcnQgYXZkAgMPDxYCHgdWaXNpYmxlaGRkAgUPFgIfAAUTw5hzdGJ5LCBKYW4gUm9nZXIuIGQCDQ8WAh8ABRdTaXN0IGVuZHJldCAgMjMuMDkuMjAxMGQCDg9kFgJmD2QWAmYPZBYGAgEPZBYCAgEPZBYCZg9kFgJmD2QWAmYPZBYCZg8PFggeB19UaXR0ZWwFGypSw6Vkc21lZGxlbSBNYXJpYW5uZSBCYWx0bx4MX0Jlc2tyaXZlbHNlZR4KX0RhdGFLaWxkZTLZDAABAAAA/////wEAAAAAAAAADAIAAABOU3lzdGVtLkRhdGEsIFZlcnNpb249Mi4wLjAuMCwgQ3VsdHVyZT1uZXV0cmFsLCBQdWJsaWNLZXlUb2tlbj1iNzdhNWM1NjE5MzRlMDg5BQEAAAAVU3lzdGVtLkRhdGEuRGF0YVRhYmxlAwAAABlEYXRhVGFibGUuUmVtb3RpbmdWZXJzaW9uCVhtbFNjaGVtYQtYbWxEaWZmR3JhbQMBAQ5TeXN0ZW0uVmVyc2lvbgIAAAAJAwAAAAYEAAAAvQY8P3htbCB2ZXJzaW9uPSIxLjAiIGVuY29kaW5nPSJ1dGYtMTYiPz4NCjx4czpzY2hlbWEgeG1sbnM9IiIgeG1sbnM6eHM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDEvWE1MU2NoZW1hIiB4bWxuczptc2RhdGE9InVybjpzY2hlbWFzLW1pY3Jvc29mdC1jb206eG1sLW1zZGF0YSI+DQogIDx4czplbGVtZW50IG5hbWU9IlRhYmxlMSI+DQogICAgPHhzOmNvbXBsZXhUeXBlPg0KICAgICAgPHhzOnNlcXVlbmNlPg0KICAgICAgICA8eHM6ZWxlbWVudCBuYW1lPSJUZWxlZm9uIiB0eXBlPSJ4czpzdHJpbmciIG1zZGF0YTp0YXJnZXROYW1lc3BhY2U9IiIgbWluT2NjdXJzPSIwIiAvPg0KICAgICAgICA8eHM6ZWxlbWVudCBuYW1lPSJNb2JpbCIgdHlwZT0ieHM6c3RyaW5nIiBtc2RhdGE6dGFyZ2V0TmFtZXNwYWNlPSIiIG1pbk9jY3Vycz0iMCIgLz4NCiAgICAgICAgPHhzOmVsZW1lbnQgbmFtZT0iRS1wb3N0IiB0eXBlPSJ4czpzdHJpbmciIG1zZGF0YTp0YXJnZXROYW1lc3BhY2U9IiIgbWluT2NjdXJzPSIwIiAvPg0KICAgICAgPC94czpzZXF1ZW5jZT4NCiAgICA8L3hzOmNvbXBsZXhUeXBlPg0KICA8L3hzOmVsZW1lbnQ+DQogIDx4czplbGVtZW50IG5hbWU9InRtcERhdGFTZXQiIG1zZGF0YTpJc0RhdGFTZXQ9InRydWUiIG1zZGF0YTpNYWluRGF0YVRhYmxlPSJUYWJsZTEiIG1zZGF0YTpVc2VDdXJyZW50TG9jYWxlPSJ0cnVlIj4NCiAgICA8eHM6Y29tcGxleFR5cGU+DQogICAgICA8eHM6Y2hvaWNlIG1pbk9jY3Vycz0iMCIgbWF4T2NjdXJzPSJ1bmJvdW5kZWQiIC8+DQogICAgPC94czpjb21wbGV4VHlwZT4NCiAgPC94czplbGVtZW50Pg0KPC94czpzY2hlbWE+BgUAAADvAzxkaWZmZ3I6ZGlmZmdyYW0geG1sbnM6bXNkYXRhPSJ1cm46c2NoZW1hcy1taWNyb3NvZnQtY29tOnhtbC1tc2RhdGEiIHhtbG5zOmRpZmZncj0idXJuOnNjaGVtYXMtbWljcm9zb2Z0LWNvbTp4bWwtZGlmZmdyYW0tdjEiPg0KICA8dG1wRGF0YVNldD4NCiAgICA8VGFibGUxIGRpZmZncjppZD0iVGFibGUxMSIgbXNkYXRhOnJvd09yZGVyPSIwIiBkaWZmZ3I6aGFzQ2hhbmdlcz0iaW5zZXJ0ZWQiPg0KICAgICAgPFRlbGVmb24+KzQ3IDc4IDQ3IDQwIDAwPC9UZWxlZm9uPg0KICAgICAgPE1vYmlsPis0NyA0ODAgNjMgMzU4PC9Nb2JpbD4NCiAgICAgIDxFLXBvc3Q+ICZsdDthIGNsYXNzPSIgYmxhbmsiIHRpdGxlPSIiICBocmVmPSJtYWlsdG86bWFyaWFubmUuYmFsdG9Ac2FtZWRpZ2dpLm5vIiZndDttYXJpYW5uZS5iYWx0b0BzYW1lZGlnZ2kubm8mbHQ7L2EmZ3Q7PC9FLXBvc3Q+DQogICAgPC9UYWJsZTE+DQogIDwvdG1wRGF0YVNldD4NCjwvZGlmZmdyOmRpZmZncmFtPgQDAAAADlN5c3RlbS5WZXJzaW9uBAAAAAZfTWFqb3IGX01pbm9yBl9CdWlsZAlfUmV2aXNpb24AAAAACAgICAIAAAAAAAAA//////////8LHhZfR3JpZFZpZXdTb3J0RGlyZWN0aW9uCyonU3lzdGVtLldlYi5VSS5XZWJDb250cm9scy5Tb3J0RGlyZWN0aW9uAGQWBGYPFgIeBXN0eWxlBQt3aWR0aDoxMDAlOxYCAgUPFCsADQ8WEB4UQXV0b2dlbmVyYXRlQ29sdW1uczJoHgdDYXB0aW9uBRsqUsOlZHNtZWRsZW0gTWFyaWFubmUgQmFsdG8eB1N1bW1hcnllHgxBbGxvd1NvcnRpbmdnHg1FbXB0eURhdGFUZXh0BRcoSW5nZW5EYXRhVGlsZ2plbmdlbGlnKR4LXyFEYXRhQm91bmRnHgtfIUl0ZW1Db3VudAIBHhFSYWRDc3NLbGFzc2VWYWxndAUXSW5uaG9sZFRhYmVsbFRla3N0VmFsZ3RkDxQrAAM8KwAFAQAWBB4KSGVhZGVyVGV4dAUHVGVsZWZvbh4OU29ydEV4cHJlc3Npb24FC1RlbGVmb24gQVNDPCsABQEAFgQfEwUFTW9iaWwfFAUJTW9iaWwgQVNDPCsABQEAFgQfEwUGRS1wb3N0HxQFCkUtcG9zdCBBU0MUKwEDAgYCBgIGFgYfAQUSSW5uaG9sZFRhYmVsbFBhZ2VyHg9Ib3Jpem9udGFsQWxpZ24LKilTeXN0ZW0uV2ViLlVJLldlYkNvbnRyb2xzLkhvcml6b250YWxBbGlnbgMfAgKCgAQWBB8BBRxJbm5ob2xkVGFiZWxsT3ZlcnNrcmlmdFRla3N0HwICAmQWBB8BBRJJbm5ob2xkVGFiZWxsVGVrc3QfAgICZGRkZGQWBh4FV2lkdGgbAAAAAAAQfUABAAAAHwEFDUlubmhvbGRUYWJlbGwfAgKCAmQWAmYPZBYGZg9kFgZmDw8WBB8BBQtza2lsbGVsaW5qZR8CAgJkZAIBDw8WBB8BBQtza2lsbGVsaW5qZR8CAgJkZAICDw8WBB8BBQtza2lsbGVsaW5qZR8CAgJkZAIBD2QWBmYPDxYEHwEFC3NraWxsZWxpbmplHwICAmRkAgEPDxYEHwEFC3NraWxsZWxpbmplHwICAmRkAgIPDxYEHwEFC3NraWxsZWxpbmplHwICAmRkAgIPDxYCHwVoZBYGZg8PFgQfAQULc2tpbGxlbGluamUfAgICZGQCAQ8PFgQfAQULc2tpbGxlbGluamUfAgICZGQCAg8PFgQfAQULc2tpbGxlbGluamUfAgICZGQCAg9kFgJmDw8WAh8FaGQWAmYPZBYEAgEPDxYGHwBlHwEFDUJydWtlck1lbGRpbmcfAgICZGQCAw8PFgIfAGVkZAIDDxYCHwVoFgICAQ9kFgJmD2QWBgICD2QWBGYPZBYCZg8QZGQWAGQCAQ9kFgJmDzwrAAkAZAIDD2QWBGYPZBYCAgEPEGRkFgBkAgEPZBYCZg88KwAJAGQCBA9kFgJmD2QWBAIBDw8WBh8AZR8BBQ1CcnVrZXJNZWxkaW5nHwICAmRkAgMPDxYCHwBlZGQCBQ8WAh8FaBYCAgEPZBYKZg88KwAJAGQCAg88KwAJAGQCBA88KwAJAGQCBg88KwAJAGQCCg88KwAJAGQYAQU5Y3RsMDAkTWlkdFNvbmUkdWNBcnRpa2tlbCRjdGwwMCRjdGwwMCRjdGwwMSRjdGwwMSR1Y0xpc3RlDzwrAAoBCAIBZPzwslf8lVJ+WASMRgXhTWHOOX6Q />


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

<input type=hidden name=__EVENTVALIDATION id=__EVENTVALIDATION value=/wEWBAKngcOYCAKNqpSxBQLxqtPvBwKstP23CuubcVv16th1cSuT+O8C0IlYHYNo />
		
    

<div id=ctl00_MidtSone_ucArtikkel_ctl00_pnlArtikkel class=artikkel artikkelmal_3>
	<h1 id=tittel class=InnholdOverskrift >
Sametinget skal følge opp etablerere i sørsamisk område'"/>
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
