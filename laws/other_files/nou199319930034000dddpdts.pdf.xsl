<?xml version='1.0' encoding='UTF-8'?>
<!-- Format query results for display --><xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:i18n="http://apache.org/cocoon/i18n/2.1" version="1.0">

    <xsl:output method="xml" version="1.0" encoding="UTF-8" indent="yes" doctype-public="-//UIT//DTD Corpus V1.0//EN" doctype-system="http://giellatekno.uit.no/dtd/corpus.dtd"/>

    <!-- Add the metainformation manually -->

    <!--
        The original name of the file that comes from the
        submitter of the document or the URL where the document has been fetched.
        These days it is automatically added by the add_files_to_corpus tool.
        http://divvun.no/doc/ling/CorpusTools.html#add_files_to_corpus
    -->
    <xsl:variable name="filename" select="'http://www.regjeringen.no/upload/kilde/000/nou/1993/0034/ddd/pdts/nou199319930034000dddpdts.pdf'"/>
    <xsl:variable name="text_encoding" select="''"/>
    <xsl:variable name="title" select="'Vuoigatvuohta Finnmárkku eatnamiidda ja čáziide ja daid hálddašeapmi'"/>
    <!--
        Information of the first author: first name, last name,
        date or year of birth, nationality.
    -->
    <xsl:variable name="author1_fn" select="'Tor'"/>
    <xsl:variable name="author1_ln" select="'Falch'"/>
    <!-- m, f or unknown -->
    <xsl:variable name="author1_gender" select="'m'"/>
    <!--
        The country where the author is from. It should be written as
        an ISO_3166-1 code.
        https://no.wikipedia.org/wiki/ISO_3166-1
    -->
    <xsl:variable name="author1_nat" select="'nor'"/>
    <!-- Either YYYY or YYYYMMDD. Examples: 1954 or 19451224 -->
    <xsl:variable name="author1_born" select="''"/>
    <!--
        Information of the second author: first name, last name,
        date or year of birth, nationality.
    -->
    <xsl:variable name="author2_fn" select="'Jon'"/>
    <xsl:variable name="author2_ln" select="'Gauslaa'"/>
    <xsl:variable name="author2_gender" select="'m'"/>
    <xsl:variable name="author2_nat" select="'nor'"/>
    <xsl:variable name="author2_born" select="''"/>

    <!--
        Information of the third author: first name, last name,
        date or year of birth, nationality.
    -->
    <xsl:variable name="author3_fn" select="'Ingunn'"/>
    <xsl:variable name="author3_ln" select="'Åsgård Bendiksen'"/>
    <xsl:variable name="author3_gender" select="'f'"/>
    <xsl:variable name="author3_nat" select="'nor'"/>
    <xsl:variable name="author3_born" select="''"/>

    <!--
        Information of the fourth author: first name, last name,
        date or year of birth, nationality.
    -->
    <xsl:variable name="author4_fn" select="'Stein'"/>
    <xsl:variable name="author4_ln" select="'Larsen'"/>
    <xsl:variable name="author4_gender" select="'m'"/>
    <xsl:variable name="author4_nat" select="'nor'"/>
    <xsl:variable name="author4_born" select="''"/>

    <!--
        Information of the fourth author: first name, last name,
        date or year of birth, nationality.
    -->
    <xsl:variable name="author5_fn" select="''"/>
    <xsl:variable name="author5_ln" select="''"/>
    <xsl:variable name="author5_gender" select="'unknown'"/>
    <xsl:variable name="author5_nat" select="''"/>
    <xsl:variable name="author5_born" select="''"/>

    <xsl:variable name="publisher" select="'Justis- ja bolesdepartemeantta'"/>
    <!-- The values are either: published or unpublished -->
    <xsl:variable name="publChannel" select="''"/>
    <!-- Publication year -->
    <xsl:variable name="year" select="'1993'"/>
    <xsl:variable name="ISBN" select="''"/>
    <xsl:variable name="ISSN" select="''"/>
    <xsl:variable name="place" select="'Oslo'"/>

    <!-- Automatically filled in by CorpusTools -->
    <xsl:variable name="genre" select="'laws'"/>
    <xsl:variable name="collection" select="''"/>
    <!--
        Three letter language code.
        https://no.wikipedia.org/wiki/Liste_over_ISO_639-1-koder
    -->
    <xsl:variable name="translated_from" select="'nob'"/>
    <!-- Translator variables have the same format as the author ones -->
    <xsl:variable name="translator_fn" select="''"/>
    <xsl:variable name="translator_ln" select="''"/>
    <xsl:variable name="translator_gender" select="'unknown'"/>
    <xsl:variable name="translator_born" select="''"/>
    <xsl:variable name="translator_nat" select="''"/>
    <!-- select license type: free, standard or other -->
    <xsl:variable name="license_type" select="'free'"/>
    <!-- The name and email of the submitter -->
    <xsl:variable name="sub_name" select="'Trond Trosterud'"/>
    <xsl:variable name="sub_email" select="'trond.trosterud@hum.uit.no'"/>
    <!-- Keep empty, this is automatically filled in by CorpusTools -->
    <xsl:variable name="wordcount" select="'332467'"/>
    <!-- This variable can have the following values:
        * ocr:          ocr'ed document, should usually not be converted
        * goldstandard: part of the goldstandard corpus, should not be converted
        * correct:      a goldstandard document containing corrected typos,
        * image:        documents consisting of images, should be possible to
                        ocr, then do conversion on it
        * standard:     a usual doc, meant to be used as part of the standard corpus
        * unsupported:  document that cannot be converted by our conversion tools
    -->
    <xsl:variable name="conversion_status" select="'standard'"/>
    <!-- Valid values are complete and uncomplete -->
    <xsl:variable name="metadata" select="'uncomplete'"/>
    <!-- Automatically filled in by CorpusTools -->
    <xsl:variable name="template_version" select="'$Revision$'"/>
    <!-- Automatically filled in by CorpusTools -->
    <xsl:variable name="current_version" select="'Revision'"/>
    <!-- Free text field for notes -->
    <xsl:variable name="note" select="''"/>

    <!-- Automatically filled in by CorpusTools -->
    <xsl:variable name="mainlang" select="'sme'"/>

    <!--
        In the case of a multilingual document, we may want to check for
        other languages. Set the variable monolingual to '1' to turn off
        language recognition (treating everything as mainlang)
    -->
    <xsl:variable name="monolingual" select="''"/>

    <!--
        If monolingual is not set, the document is multilingual.
        Uncomment the languages you want to check for (or add new lines
        with the right ISO-639-3 language codes).

        If *no* languages are uncommented (and monolingual is not 1),
        then the document is checked for all supported languages.
    -->
    <xsl:variable name="mlangs">
        <!-- <language xml:lang="dan"/> -->
    <language xml:lang="nob"/><language xml:lang="eng"/></xsl:variable>

    <!--
        This is automatically added by add_files_to_corpus if a parallel file
        is given on the command line when a document is added to the corpus.

        If manually correcting these values:
        If the document has parallel texts, uncomment the correct languages
        (or add new lines with the correct ISO-639-3 language codes) and
        add the filename of the parallel files to the 'location'
        variables.

        Don't write the full directory; we expect the file to be in the
        parallel directory of this file, with only the language code and
        filename changed.
    -->
    <xsl:variable name="parallels">
        <parallel_text xml:lang="dan" location=""/>
        <parallel_text xml:lang="eng" location=""/>
        <parallel_text xml:lang="fin" location=""/>
        <parallel_text xml:lang="fit" location=""/>
        <parallel_text xml:lang="fkv" location=""/>
        <parallel_text xml:lang="ger" location=""/>
        <parallel_text xml:lang="isl" location=""/>
        <parallel_text xml:lang="kal" location=""/>
        <parallel_text xml:lang="kpv" location=""/>
        <parallel_text xml:lang="nno" location=""/>
        <parallel_text xml:lang="nob" location=""/>
        <parallel_text xml:lang="rus" location=""/>
        <parallel_text xml:lang="sma" location=""/>
        <parallel_text xml:lang="sme" location=""/>
        <parallel_text xml:lang="smj" location=""/>
        <parallel_text xml:lang="smn" location=""/>
        <parallel_text xml:lang="sms" location=""/>
        <parallel_text xml:lang="swe" location=""/>
    </xsl:variable>

    <!--
        For pdf documents, mark which pages should be ignored.
        The format for this is a comma separated list of page numbers
        that should be skipped. It is also possible to use ranges.
        Examples:
        1, 2, 3, 4
        1, 6-10, 15, 20, 25-30
    -->
    <xsl:variable name="skip_pages" select="'1-32,173,765-792,1338,1460-1482'"/>

    <!--
        For txt documents, mark which lines should be ignored.
        The format for this is a comma separated list of line numbers
        that should be skipped. It is also possible to use ranges.
        Examples:
        1, 2, 3, 4
        1, 6-10, 15, 20, 25-30
    -->
    <xsl:variable name="skip_lines" select="''"/>

    <!--
        Margin of a page in a pdf document expressed as a percentage of
        the page width and height.

        The default for all margins are 7

        Text outside these margins will be ignored.

        The format for margin line is:
        [all|odd|even|pagenumber]=integer

        Margin lines *must* contain the keywords all, even, odd or a page
        number followed by a = sign and an integer. Pages with the same margin
        may be separated with ;.

        The integer must be between 0 and 100.

        If there are several values, they are divided by commas.
        Setting different margins for odd and even pages is done by writing
        e.g. odd=8, even=15
        It is also possible to set margins for particular pages:
        8=8, 10=12
        It is also possible to set margins for odd and even pages and
        exceptions from those rules on particular pages.

        Examples on how the select part could look:
        odd=5, even=8, 8=15, 11=3
        all=9, 8=12
        1;3;8=20, 4;5;7=10
    -->
    <xsl:variable name="right_margin" select="'all=7'"/>
    <xsl:variable name="left_margin" select="'all=7'"/>
    <xsl:variable name="top_margin" select="'680=36,1339=18,1458=56'"/>
    <xsl:variable name="bottom_margin" select="'33=24,34=18,35=24,36=19,38=18,39=14,41=28,42=18,43=25,44=30,45=24,46=30,47=23,48=18,49=13,50=19,51=22,52=20,53=17,54=16,55=18,56=14,57=17,58=16,59=18,60=14,61=12,62=12,64=14,65=16,67=17,69=17,70=14,71=14,73=16,74=16,75=17,76=22,77=18,79=14,80=12,81=12,82=16,83=18,84=16,85=14,86=20,87=12,88=18,89=19,90=14,91=12,92=12,93=14,94=14,96=16,97=16,98=12,99=12,100=14,101=12,102=12,103=14,104=16,106=16,107=18,109=14,110=14,112=14,115=12,116=15,117=12,119=14,121=14,122=16,123=12,124=14,125=14,127=12,129=14,130=14,131=14,132=18,133=12,134=15,135=13,137=14,138=14,139=16,142=16,143=131,144=14,145=16,146=16,147=20,149=14,150=16,151=12,152=12,153=12,155=13,158=14,159=12,161=14,163=13,166=14,167=14,170=12,171=22,172=16,175=12,176=18,177=12,178=14,179=12,180=20,181=14,182=13,183=22,184=16,185=15,187=17,188=16,190=18,192=16,193=12,194=12,197=12,198=17,199=14,200=16,201=13,203=14,204=14,205=14,206=18,207=16,209=14,210=17,211=12,212=12,213=14,214=12,215=12,216=12,219=13,220=17,221=12,222=12,223=12,225=13,228=14,229=15,230=14,231=12,232=12,233=15,234=16,235=14,236=13,237=16,239=16,240=14,241=13,242=16,243=14,244=14,246=14,247=14,248=14,250=13,251=14,252=12,254=14,255=14,258=16,259=16,260=14,261=12,262=14,263=13,264=17,265=16,266=20,268=12,269=14,270=12,271=18,272=16,274=17,275=14,276=14,277=12,278=14,279=19,280=12,281=16,282=18,284=12,285=16,286=20,287=18,288=14,289=16,290=15,293=15,294=22,298=13,299=14,301=14,303=13,304=12,305=13,306=14,309=16,310=19,311=16,312=16,313=14,314=18,315=16,316=12,317=16,318=14,319=14,320=13,321=16,323=14,324=12,325=16,326=14,327=12,326=14,327=12,328=14,329=12,331=12,332=12,333=16,335=13,336=14,339=12,343=16,344=16,345=16,346=14,347=15,349=19,350=15,351=12,352=14,353=12,355=12,356=12,357=13,358=17,359=14,360=12,361=12,362=14,364=13,367=12,369=12,371=13,373=12,374=12,375=12,377=12,378=12,383=16,385=14,386=16,387=12,389=16,390=18,391=12,394=14,395=18,396=12,397=15,398=14,399=18,400=16,401=22,403=14,404=13,405=12,406=15,407=20,408=12,412=12,415=12,416=16,417=14,418=13,419=12,421=12,424=14,426=14,428=15,429=14,430=15,431=16,432=16,435=16,436=12,437=14,439=13,443=21,445=12,446=12,447=14,448=16,451=14,452=14,453=14,454=12,455=12,457=12,458=14,460=13,461=17,466=14,468=12,469=16,470=12,471=14,472=13,474=14,476=16,477=14,478=12,480=13,481=14,483=12,484=14,490=14,493=16,496=16,498=12,499=12,500=14,501=12,502=12,505=12,506=12,509=14,512=12,513=14,514=14,515=14,518=13,520=12,521=14,522=14,524=12,525=12,528=16,529=14,530=12,531=12,533=14,534=12,535=12,536=14,537=20,541=16,542=14,543=16,544=16,545=16,546=12,549=12,551=12,553=12,554=12,555=12,561=12,563=16,564=18,565=14,566=14,567=17,568=12,569=16,570=16,571=12,572=14,573=14,575=14,576=12,578=12,579=14,580=12,581=12,582=12,583=12,585=14,586=12,592=13,595=13,596=12,598=14,599=12,600=16,601=12,602=14,607=13,609=15,610=12,611=14,614=14,615=12,616=16,623=12,624=12,625=12,629=14,631=12,632=13,633=15,634=12,635=12,637=14,638=12,639=18,640=24,641=16,648=12,649=12,650=14,651=14,652=13,653=17,654=14,658=12,660=12,663=14,664=12,665=12,666=12,670=14,672=14,674=13,676=12,691=12,694=12,695=13,702=12,703=12,706=12,709=14,711=12,712=12,713=16,714=14,719=12,720=12,728=12,730=12,732=14,737=12,746=13,749=12,751=12,752=14,753=12,757=13,761=12,796=16,798=14,800=14,802=14,804=13,806=14,808=13,810=12,812=14,813=13,814=12,815=16,816=14,818=14,819=14,820=14,822=13,823=13,826=14,827=18,828=13,829=16,830=16,831=16,832=14,833=12,834=16,835=12,836=20,837=16,841=14,842=20,843=12,844=22,845=12,846=13,847=13,850=13,855=12,857=12,859=12,862=17,864=14,865=16,866=18,868=13,871=14,872=16,873=14,874=12,877=12,884=12,885=14,887=12,892=14,893=14,894=14,895=14,896=14,897=18,898=12,900=16,902=14,903=12,908=16,909=12,911=15,912=12,919=12,922=12,924=20,926=12,930=14,931=14,933=14,942=12,943=13,945=12,946=13,948=16,953=13,954=13,955=26,956=16,957=16,958=17,959=17,960=16,961=14,962=13,963=14,964=12,967=14,968=12,969=12,970=12,971=14,973=16,975=14,976=14,977=14,978=14,979=14,981=13,982=12,984=12,985=14,986=17,987=14,988=12,992=16,993=14,994=16,995=14,998=13,999=16,1000=12,1001=15,1002=12,1004=14,1005=12,1008=12,1010=16,1011=16,1012=15,1013=12,1014=14,1015=14,1016=14,1018=14,1019=12,1020=13,1022=14,1026=14,1030=12,1031=14,1034=12,1036=12,1039=12,1041=12,1042=14,1043=14,1050=14,1052=14,1055=12,1060=16,1062=14,1063=14,1065=14,1067=12,1069=12,1072=16,1073=18,1074=12,1075=15,1076=12,1079=12,1080=16,1085=52,1086=14,1087=12,1089=12,1090=16,1092=12,1093=12,1095=14,1096=13,1097=12,1098=16,1099=14,1100=14,1102=14,1103=12,1105=12,1107=12,1109=18,1114=16,1115=14,1116=12,1121=12,1122=12,1124=16,1125=12,1126=12,1127=13,1129=13,1130=16,1131=18,1132=12,1136=16,1140=16,1141=16,1143=14,1144=12,1147=13,1153=18,1156=12,1159=18,1161=14,1162=13,1163=13,1166=13,1169=22,1170=14,1172=13,1173=12,1176=13,1177=14,1178=12,1180=12,1183=12,1188=12,1189=14,1191=16,1195=14,1197=12,1198=12,1200=20,1204=14,1206=18,1210=12,1213=12,1220=12,1221=12,1223=18,1224=13,1227=12,1230=16,1231=18,1232=16,1234=13,1235=12,1237=14,1238=14,1241=14,1244=12,1247=14,1249=12,1253=12,1254=12,1257=13,1264=12,1267=15,1268=24,1269=16,1270=16,1271=16,1272=12,1274=16,1275=16,1276=14,1277=16,1278=16,1280=14,1281=14,1282=13,1283=14,1284=12,1286=14,1288=18,1289=16,1290=13,1291=14,1292=16,1294=16,1295=14,1299=20,1300=24,1301=18,1302=22,1303=16,1304=12,1305=15,1306=13,1307=16,1309=14,1310=12,1313=12,1315=13,1316=12,1317=13,1318=12,1319=12,1320=13,1321=12,1325=14,1325=12,1326=14,1327=14,1331=14,1332=16,1335=16,1336=15,1337=20,1339=18,1340=18,1341=13,1343=16,1344=12,1345=14,1346=20,1348=12,1349=12,1350=14,1351=14,1352=12,1353=14,1354=14,1355=13,1356=14,1357=12,1362=12,1365=14,1367=12,1369=16,1370=14,1371=14,1373=12,1374=16,1376=12,1377=16,1378=16,1379=16,1380=14,1381=18,1383=12,1384=14,1385=18,1386=13,1389=16,1392=12,1393=12,1394=16,1396=12,1397=16,1398=14,1399=20,1400=12,1401=12,1403=14,1404=14,1409=22,1410=16,1411=12,1416=12,1417=14,1418=20,1421=14,1423=16,1426=16,1427=14,1430=14,1431=15,1432=14,1433=14,1434=12,1439=12,1443=12,1445=12,1448=13,1449=14,1452=12,1454=12,1455=12,1456=14,1457=13'"/>

    <!--
        Cut out a part from a page in pdf documents. Has the same format
        as *_margin above. For a given page, all four margins
        must be defined.
    -->
    <xsl:variable name="inner_right_margin" select="''"/>
    <xsl:variable name="inner_left_margin" select="''"/>
    <xsl:variable name="inner_top_margin" select="'1091=37,1346=18'"/>
    <xsl:variable name="inner_bottom_margin" select="'1091=16,1346=54'"/>

    <!--
        This variable is used for epub or html files.

        select contains comma separated xpath path pairs.
        A path pair is separated by a semicolon.
        Each path should start with .//body

        Examples of valid pairs:
        * .//body/div[1]/h2[1];.//body/div[3]/div[1]/h3[1]
        * .//body/div[5];.//body/div[8]/div[3]/h1[1], .//body/div[11]/div[2];.//body/div[11]/div[5]
    -->
    <xsl:variable name="skip_elements" select="''"/>

    <!--
        The default is set to all=1.5.

        The format for linespacing is:
        [all|odd|even|pagenumber]=float (where float is written as integer.integer,
        not integer,integer).

        linespacing lines *must* contain the keywords all, even, odd or a page
        number followed by a = sign and a floating point number. Pages with the
        same linespacing may be separated with ;.

        If there are several values, they are divided by commas.
        Setting different linespacing for odd and even pages is done by writing
        e.g. odd=8, even=15
        It is also possible to set linespacing for particular pages:
        8=8, 10=12
        It is also possible to set linespacing for odd and even pages and
        exceptions from those rules on particular pages.

        Examples on how the select part could look:
        odd=5, even=8, 8=15, 11=3
        all=9, 8=12
        1;3;8=20, 4;5;7=10
    -->
    <xsl:variable name="linespacing" select="''"/>

    <!--
        Information about what is normal text size in pdf documents.
    -->
    <xsl:variable name="main_sizes" select="'12pt,13pt,14pt'"/>

    <!--
        Information about what is title sizes in pdf documents.
    -->
    <xsl:variable name="title_sizes" select="'14pt,16pt,18pt'"/>

    <!--
        Information about what styles titles have in pdf document.
    -->
    <xsl:variable name="title_styles" select="'Bold'"/>
    <!--
        Add all paragraphs that should have xml:lang=X
        Uncomment the following and add the paths, for example:
    -->
    <!--
    <xsl:template match="//body/p[5]">
        <xsl:element name="p">
            <xsl:attribute name="xml:lang">sme</xsl:attribute>
            <xsl:apply-templates/>
        </xsl:element>
    </xsl:template>
    -->

    <!--
        Change or remove problematic characters from the text.
        Specify the elements to match (here all p's within
        //body, that do contain text, but do NOT contain em and
        span elements), and specify the characters
        to be replaced and the replacements. If needed,
        copy this template and target several different elements,
        but don't make several templates that match the same set
        of elements - then only one of them will apply. Also try
        to restrict the template to nodes that do not contain
        other markup, as such markup otherwise will be removed.
    -->

    <!--
    <xsl:template match="p[parent::body][not(./em | ./span)][text()]">
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
            <xsl:with-param name="inputString" select="$text"/>
            <xsl:with-param name="target" select="'cuoñománu/??/uo?o/lá?k/Mu?ka/ske?ke/A?kke/E?lánddas/má?/jo?at/bá?ko/juo?a/Á?ko/'"/> <!--'"/>-->
            <xsl:with-param name="replacement" select="'cuoŋománu/ŋŋ/uoŋo/láŋk/Muŋka/skeŋke/Aŋkke/Eŋlánddas/máŋ/joŋat/báŋko/juoŋa/Áŋko/'"/> <!--'"/>-->
            <xsl:with-param name="continue" select="0"/>
        </xsl:call-template>
    </xsl:element>
</xsl:template>

</xsl:stylesheet>
