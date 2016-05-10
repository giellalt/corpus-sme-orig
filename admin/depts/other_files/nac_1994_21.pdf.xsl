<?xml version='1.0' encoding='UTF-8'?>
<xsl:stylesheet xmlns:i18n="http://apache.org/cocoon/i18n/2.1" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
  <xsl:output doctype-public="-//UIT//DTD Corpus V1.0//EN" doctype-system="http://giellatekno.uit.no/dtd/corpus.dtd" encoding="UTF-8" indent="yes" method="xml" version="1.0"/>
  <!-- Add the metainformation manually -->
  <xsl:variable name="filename" select="'NAC_1994_24.pdf'"/>
  <xsl:variable name="title" select="'Finnmárkku eatnamiid ja čázádagaid geavaheapmi historjjálaš'"/>
  <xsl:variable name="author1_fn" select="'Steinar'"/>
  <xsl:variable name="author1_ln" select="'Pedersen'"/>
  <xsl:variable name="author1_gender" select="'m'"/>
  <xsl:variable name="author1_born" select="''"/>
  <xsl:variable name="author1_nat" select="'nor'"/>
  <xsl:variable name="author2_fn" select="'Hans'"/>
  <xsl:variable name="author2_ln" select="'Prestbakmo'"/>
  <xsl:variable name="author2_gender" select="'m'"/>
  <xsl:variable name="author2_born" select="''"/>
  <xsl:variable name="author2_nat" select="'nor'"/>
  <xsl:variable name="author3_fn" select="'Einar'"/>
  <xsl:variable name="author3_ln" select="'Richter Hanssen'"/>
  <xsl:variable name="author3_gender" select="'m'"/>
  <xsl:variable name="author3_born" select="''"/>
  <xsl:variable name="author3_nat" select="'nor'"/>
  <xsl:variable name="author4_fn" select="'Einar'"/>
  <xsl:variable name="author4_ln" select="'Niemi'"/>
  <xsl:variable name="author4_gender" select="'m'"/>
  <xsl:variable name="author4_born" select="''"/>
  <xsl:variable name="author4_nat" select="'nor'"/>
  <xsl:variable name="translated_from" select="'nob'"/>
  <xsl:variable name="publisher" select="'Stáhta hálddáhusdoaimmahus'"/>
  <xsl:variable name="publChannel" select="''"/>
  <xsl:variable name="year" select="'1994'"/>
  <xsl:variable name="ISBN" select="''"/>
  <xsl:variable name="ISSN" select="''"/>
  <xsl:variable name="place" select="'Oslo'"/>
  <xsl:variable name="genre" select="'admin'"/>
  <xsl:variable name="collection" select="''"/>
  <xsl:variable name="translator_fn" select="''"/>
  <xsl:variable name="translator_ln" select="''"/>
  <xsl:variable name="translator_gender" select="'unknown'"/>
  <xsl:variable name="translator_born" select="''"/>
  <xsl:variable name="translator_nat" select="''"/>
  <xsl:variable name="license_type" select="'free'"/>
  <xsl:variable name="sub_name" select="'Trond Trosterud'"/>
  <xsl:variable name="sub_email" select="'trond.trosterud@hum.uit.no'"/>
  <xsl:variable name="wordcount" select="'159251'"/>
  <xsl:variable name="conversion_status" select="'standard'"/>
  <xsl:variable name="metadata" select="'uncomplete'"/>
  <xsl:variable name="template_version" select="' 1.9 '"/>
  <xsl:variable name="current_version" select="'$Revision: 1.20 $'"/>
<!-- Free text field for notes -->
<xsl:variable name="note" select="''"/>

  <!-- The main language of the document -->
  <xsl:variable name="mainlang" select="'sme'"/>
  <!-- Other languages, in case of multilingual document. -->
<!-- Select "1" for the variable multilingual -->
<!-- and for the languages present -->
  <!--Select "1" for monolingual to turn language recog off-->
<xsl:variable name="monolingual" select="''"/>


<!-- If monolingual is not set, the language is multilingual.
     Uncomment the languages you want to check for (or add new lines
     with the right ISO-639-3 language codes).

     If *no* languages are uncommented (and monolingual is not 1),
     then the document is checked for all supported languages.
-->
<xsl:variable name="mlangs">
	<language xml:lang="nob"/>
	<language xml:lang="eng"/>
</xsl:variable>

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
<!-- Add the locations of the parallel files to the variables-->


<!-- If the document has parallel texts, uncomment the right languages
     (or add new lines with the right ISO-639-3 language codes) and
     add the filename of the parallel files to the 'location'
     variables.

     Don't write the full directory; we expect the file to be in the
     same directory as this file, with only the language code and
     filename changed.
     -->
<xsl:variable name="parallels">
	<parallel_text location="nou199419940021000dddpdfa.pdf" xml:lang="nob"/>
</xsl:variable>

<xsl:variable name="main_sizes" select="'10pt,11pt,12pt,14pt'"/>
<xsl:variable name="title_sizes" select="'14pt,15pt,16pt,50pt'"/>
<xsl:variable name="title_styles" select="''"/>
<xsl:variable name="excluded" select="'4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,189,190,191,192,193,194,195,196,197,198,199,313,314,315,316,317,318'"/>

<!-- Change or remove problematic characters from the text. -->
<!-- add the template to match (here all p:s), and write the -->
<!-- replaced characters and the replacements. -->

<xsl:template match="p">
<xsl:variable name="text" select="current()"/>
<xsl:variable name="type" select="@type"/>
<xsl:variable name="lang" select="@xml:lang"/>
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
               <xsl:with-param name="inputString" select="translate($text,'ðñçóþÑÝýÇÓÐ','đŋčšŽŊŦŧČŠĐ')"/>
     <xsl:with-param name="target" select="'Adelaer/gaefhes/haes/daen/siidaer/omgaaes/saae/mae/undgaae/taen/taed/baer/vaer/raer/naes/saer/saet/saet/naer/Nae/raep/vaeg/raen/Fae/Rae/jael/'"/>
<xsl:with-param name="replacement" select="'Adelær/gæfhes/hæs/dæn/siidær/omgaæs/saæ/mæ/undgaæ/tæn/tæd/bær/vær/rær/næs/sær/sæt/sæd/nær/Næ/ræp/væg/ræn/Fæ/Ræ/jæl/'"/>
            <xsl:with-param name="continue" select="1"/>
            </xsl:call-template>

</xsl:element>
</xsl:template>



<xsl:variable name="bottom_margin" select="'all=7,21=52,22=32,23=14,24=14,25=13,26=16,28=16,30=19,31=16,32=16,33=16,34=18,35=20,36=15,37=17,38=16,39=16,40=13,41=11,42=14,43=14,44=19,45=19,46=13,47=14,48=22,49=16,50=14,51=16,52=15,53=15,54=18,55=16,56=14,57=18,58=16,59=13,60=14,61=12,62=12,63=14,64=14,65=14,67=16,68=13,70=14,71=14,72=14,73=13,74=28,76=12,77=17,78=18,79=14,80=18,81=16,82=16,83=15,85=15,86=15,87=16,89=12,90=18,92=17,93=18,94=13,96=16,97=18,98=22,99=22,100=12,101=12,103=14,104=13,105=12,106=21,108=16,110=18,111=15,112=16,113=21,114=23,115=22,116=14,117=20,118=12,119=16,120=16,121=19,122=14,123=14,124=22,125=18,126=16,127=14,128=25,129=20,130=15,131=14,132=16,133=31,134=14,135=19,136=17,137=16,138=14,139=12,140=15,141=14,142=13,143=16,144=20,145=16,146=14,147=19,149=13,150=18,151=13,152=14,153=18,155=12,156=14,157=18,158=16,159=16,160=15,161=12,162=14,163=14,164=20,165=25,166=22,167=24,168=24,169=17,170=24,171=13,172=12,173=18,174=16,175=16,176=20,178=12,179=18,180=16,181=14,182=16,183=17,184=13,185=50,201=24,202=46,203=16,204=17,206=22,207=36,208=16,209=30,210=28,211=17,212=16,215=26,216=22,217=12,218=12,219=25,220=16,221=14,222=18,223=14,224=12,225=14,227=12,228=14,229=13,230=16,231=12,234=12,235=15,236=16,237=13,238=12,239=19,240=14,241=14,242=17,243=14,246=14,247=13,249=13,250=21,251=15,252=14,253=12,254=25,255=20,256=23,257=16,258=22,259=15,260=15,261=22,262=34,263=23,265=18,266=18,267=13,268=15,271=14,272=18,273=14,274=21,275=16,276=80,277=12,278=13,280=14,282=12,283=12,284=23,285=16,286=16,287=20,289=15,292=24,293=22,294=16,295=13,298=18,300=13,302=13,306=12,308=12,309=14,310=14,311=18,312=20,320=12,321=14,322=70,324=26,325=15,326=18,328=16,330=13,331=15,332=28,333=24,338=15,339=20,340=16,341=12,342=18,343=16,347=14,348=28,349=15,350=24,351=18,352=15,353=20,354=34,355=16,356=13,357=16,358=18,359=13,360=16,361=22,362=30,363=15,364=18,366=12,367=18,368=19,369=12,371=34,372=18,373=18,374=15,375=16,376=26,377=20,378=14,379=15,380=26,381=26,382=12,383=16,384=20,388=18,389=16,390=17,391=16,393=16,394=21,395=21,396=17,397=22,398=28,401=18,402=24,403=14,404=31,405=16,406=18,407=31,408=25,409=24,410=19,411=26,412=20,413=28,414=23,415=15,416=16,417=22,418=17,419=26,420=20,421=22,423=24,424=14,425=14,426=24,427=25,428=18,429=14,430=25,431=16,432=14,433=21,434=25,436=16,437=20,438=66,440=16,441=16,442=16,443=14,444=12,446=12,447=22,448=18,449=14,450=12,456=15,457=17,458=21,459=17,460=16,461=17,462=16,464=20,467=18,468=14,469=17,470=19,471=14,472=18,473=21,474=15,475=12,476=14,477=13,478=18,479=18,481=15,482=14,483=18,484=15,489=12,490=14,491=30,493=12,495=18,496=14,497=25,499=16,500=26,501=12,502=12,503=12,504=22,506=16,507=12,508=14,509=16,510=18,511=13,512=14,513=14,514=16,516=12,517=16,518=14,519=17,520=14,522=14,523=14,524=14,525=14,526=13,528=14,529=12,530=15,531=12,532=12,533=12,534=12,535=16,536=16,537=14,538=12,539=12,540=14,541=16,543=18,544=16'"/>
<xsl:variable name="left_margin" select="all=7"/>
<xsl:variable name="top_margin" select="'all=7,62=52,68=20,89=14,93=46,215=24,216=10,217=36,257=25,277=20,285=22,324=38,329=27,330=74,347=42,363=41,385=29,399=36,400=54,416=42,417=16,422=50'"/>
<xsl:variable name="right_margin" select="all=7"/>
<xsl:variable name="inner_top_margin" select="'22=20,23=28,41=24,44=50,54=14,60=24,64=52,69=15,87=24,88=40,91=50,94=58,95=14,96=56,116=52,121=56,125=16,127=24,129=34,138=53,163=46,165=22,167=34,185=16,216=26,217=48,237=28,238=36,245=29,252=44,253=38,263=18,286=58,291=48,340=56,362=16,384=38,389=51,390=58,402=34,415=36,424=48,429=50,430=30'"/>
<xsl:variable name="inner_bottom_margin" select="'22=72,23=66,41=71,44=45,54=81,60=57,64=42,69=70,87=47,88=21,91=34,94=22,95=68,96=38,116=44,121=38,125=78,127=68,129=59,138=27,163=48,165=73,167=59,185=67,216=38,217=31,237=64,238=57,245=40,252=27,253=56,263=77,286=36,291=40,340=30,362=66,384=46,389=33,390=27,402=60,415=58,424=30,429=27,430=58'"/>
<xsl:variable name="skip_pages" select="'1-20,186-200,213-214,288,296,313-319,323,337,344-346,392,439,452-455,465,492,545-549'"/>
</xsl:stylesheet>