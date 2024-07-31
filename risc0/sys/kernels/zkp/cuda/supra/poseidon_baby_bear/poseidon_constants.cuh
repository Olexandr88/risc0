// Constants for optimized Poseidon
// in Montgomery form

// first element of MDS
static const uint32_t m00 = 1148968229;

// 24 * 29 - 20 * 23 + 1
__device__ const uint32_t poseidon_rc_dev[237] = {
    514215000,  1473356547, 1475549808, 280201050,  66476557,   553479290,  103276920,  1615072023,
    810837962,  646554063,  1079828279, 1652363045, 569019161,  901639906,  1154652333, 1197195121,
    1146559378, 1908415181, 1188553533, 892287745,  1849641539, 1631541944, 725508932,  104512978,
    1334122235, 491896527,  54459111,   376068648,  203528896,  54074077,   1660407700, 518066980,
    1973611996, 282379828,  1621744025, 1797291911, 1693741551, 1978660371, 886544622,  167843215,
    766618548,  1464263490, 1143720041, 1571250914, 1097878221, 138511063,  1364260882, 1916288354,
    773178408,  1821171954, 403657849,  1575896402, 73837948,   743839936,  591330190,  1433978562,
    262499807,  431526004,  719595300,  194223030,  1265398957, 1935012223, 1757830457, 856083153,
    1565856438, 833999680,  113987054,  1855218953, 1681459362, 890486603,  521608901,  173274721,
    1470741859, 504959283,  1923302440, 334947417,  1416053552, 118182962,  1100773057, 225906547,
    1696758794, 235400587,  1997205562, 716176367,  499124855,  1720932111, 289571341,  1719460361,
    1762284302, 1510804498, 1501266228, 1958052382, 1650199808, 355437897,  1969804773, 1941801293,
    817671506,  47575252,   869852083,  1925140332, 158264608,  472485435,  1913186455, 1102069722,
    1977884031, 617151705,  1685439434, 1564277396, 1653752218, 467891362,  731593960,  782967923,
    609672268,  407071440,  212673276,  460297147,  677567512,  363793120,  1678549107, 833066877,
    459934567,  419971704,  688080191,  70117932,   1365891676, 1653220291, 1656885337, 1749401892,
    1268159045, 1129216724, 1087928916, 1908230684, 1288028548, 1197798393, 822467160,  645704131,
    746766446,  1620200706, 1742629702, 83767456,   0,          375119433,  754313984,  1494627799,
    1321016730, 347754392,  1936971545, 180337886,  1258966440, 1514074705, 456894592,  1377484597,
    266812931,  704403437,  1670812389, 1666446930, 1328429462, 1360394640, 1610987342, 1772522464,
    798934251,  1674851379, 112071498,  1715746492, 1053453931, 751003193,  1873226212, 985298804,
    1630960976, 375298143,  76805157,   694439806,  1813214823, 411777096,  1681644167, 80281335,
    452763656,  4769805,    1158512896, 388517857,  1783070203, 1146051739, 388884873,  1275150770,
    422589481,  1867251044, 1799201735, 1064632245, 1403882980, 1661489486, 104890282,  896327136,
    226079283,  201121601,  1286685016, 393760517,  499187550,  676988436,  1248571641, 43402508,
    1447867849, 1243862783, 1153030001, 414044200,  1077745416, 863584793,  1397843532, 637792192,
    1021467779, 1552051397, 195680508,  1772498116, 602732092,  151969109,  832737160,  669272553,
    1402646946, 1112885244, 115225908,  1076106442, 516641843,  832902974,  509214383,  652056156,
    508657665,  1046429553, 597022820,  691788218,  1330712603, 440248856,  997105689,  561115318,
    1091666487, 396559324,  853698366,  573711023,  1347633858};

// 24 * 24
__device__ __constant__ const uint32_t poseidon_mds_dev[576] = {
    1148968229, 337359413,  1058678166, 286146482,  580931447,  1960474093, 1127440776, 584735948,
    1252544723, 631859002,  1002203887, 47832630,   342397923,  680884136,  1038449951, 1185170818,
    1821684607, 1827428185, 1391078373, 1375106559, 416560078,  674099859,  1444399653, 778381119,
    1283748607, 648275890,  466175489,  953049649,  1653631144, 891822619,  1322989752, 1628250158,
    850137955,  860798743,  772952176,  13168147,   115712397,  1427857963, 1614305124, 1612867663,
    1037945809, 197775116,  710481173,  1376817595, 1419536933, 928993611,  310334332,  1388328791,
    1658789712, 1677700585, 157173220,  1500383324, 1524758041, 1580876986, 1655091390, 738883355,
    1616241436, 1616088092, 918959421,  1464147469, 59183209,   646900122,  1645450757, 228488885,
    402145517,  1916317644, 1953229550, 1309203248, 1250912601, 363729436,  712006132,  615968666,
    1787211188, 902812391,  851671092,  284669625,  1414277459, 1219438268, 406956079,  332645108,
    1473565019, 556411498,  1004670305, 106908792,  293622051,  1467780960, 127892259,  1362367046,
    103101405,  1342823240, 141094203,  947170069,  1378561570, 841576988,  711023592,  421242680,
    183944302,  1681879418, 1988896858, 924381025,  1558659851, 382331592,  743985007,  661470098,
    793428145,  1255614296, 92680145,   598358192,  1733935645, 1346664084, 1437364091, 579351148,
    466600251,  1699520572, 838705774,  1874887629, 1617923591, 750849829,  1003508477, 39439916,
    1320680890, 402483874,  1340271289, 1972217233, 63002696,   248281867,  881917801,  1654198370,
    1117029537, 520201880,  1477021415, 552706235,  1130056557, 1533299882, 1561740062, 1850511706,
    27268005,   568177215,  1005038110, 1075987311, 1814621615, 1934031602, 1121902267, 795326480,
    478672924,  983327094,  922457231,  1394410863, 10424734,   1230028313, 289952456,  334313647,
    1847564603, 1868567566, 1277348209, 267744433,  1928610947, 699478037,  623501853,  98908787,
    443118866,  1546055148, 1658347860, 1246075308, 1333145543, 415543486,  844777550,  1477339228,
    462351694,  536603873,  1254273068, 150857950,  622378031,  1647284053, 1407418715, 963361039,
    1208242946, 418343982,  1402871914, 1813336430, 454391645,  218019024,  194942600,  663542394,
    1632629816, 391030894,  1797925177, 1167351567, 1103811095, 1306980501, 260438129,  158839281,
    795126786,  796431651,  1245904245, 1990216586, 1336456442, 1784490911, 30407460,   599937214,
    1907125966, 207309951,  1733479737, 1400352145, 1715501807, 1219699637, 1334896439, 588140310,
    34852611,   1331820058, 135699980,  505178717,  822470382,  600530930,  1932621021, 18952405,
    1330329720, 1108964797, 1595906016, 1696779701, 1113468819, 96930464,   177369151,  1582647496,
    1793978427, 255529879,  846737328,  672874614,  1615230207, 1034629190, 1886443444, 1794031335,
    250122409,  1707003819, 609125932,  1546683838, 1415295430, 1324107997, 922155582,  1907704015,
    529799468,  427496531,  1049869600, 662523261,  1921800083, 454326054,  628653523,  250144492,
    1587154201, 119764773,  1282931919, 1226585197, 891827177,  1831556189, 1719853124, 525964999,
    356369466,  1353393351, 1239555749, 825302922,  799858844,  853229836,  1691372133, 895511873,
    1190715087, 890694727,  191426044,  1667084184, 333045964,  1965027992, 1283878089, 1458521270,
    275600912,  344969171,  406447506,  1661590726, 1813650015, 376164264,  204423097,  433139093,
    1537613445, 697736787,  1964090839, 1809949101, 1512563226, 536051744,  536112139,  116683331,
    1821500273, 913045394,  1010326729, 241901023,  1878634719, 775343532,  1663591930, 321188337,
    667078676,  1500213416, 1171393473, 1693501617, 1964823281, 699531937,  1075324218, 928563789,
    1034898287, 1197615941, 1449481883, 614166847,  669423119,  1684382027, 834923051,  357388421,
    1597387756, 854255230,  728777243,  1599864979, 1162944611, 36923176,   281874824,  754027012,
    1506003985, 489814306,  1223811143, 993258267,  424795102,  648794101,  407724050,  219916099,
    1007519116, 238155408,  1373296544, 360361824,  1411777436, 300074582,  110674160,  184934126,
    1102693738, 796626637,  490635046,  660102801,  1297060800, 987342913,  530624479,  1540990146,
    1163392837, 1011354853, 67925896,   568406893,  975814439,  1551030471, 1303800489, 1926972584,
    945486329,  123162568,  46739189,   289120805,  1057915297, 734923204,  308370028,  3586064,
    1005574282, 975197270,  129539796,  1956284077, 1577194768, 1235750666, 1416915770, 140156324,
    72845879,   1167334051, 50378270,   1426838754, 1359761580, 830078945,  766707107,  291157012,
    1695105876, 1597846118, 2001713934, 782452513,  1700850562, 1740769435, 1685657181, 193841606,
    119317775,  707881787,  902659351,  1179929224, 1867084973, 1254900347, 762023261,  1239237715,
    125685349,  1959360595, 463487844,  1087357424, 1662238690, 1260371055, 498516440,  176899968,
    158787929,  148344220,  1700709317, 416149530,  148064598,  35501461,   1766639473, 1593384228,
    1279213884, 86881636,   1160545947, 21931180,   821827133,  1504337261, 1556010272, 135685787,
    1927390758, 102545825,  594503534,  1717132865, 1124645946, 1191403925, 1781368245, 1500769349,
    1674548195, 887202804,  1836258193, 329323453,  501347125,  1896586033, 449606720,  1627901686,
    51613396,   1768973283, 754696408,  73279254,   1217031743, 796407981,  2003972051, 1616390608,
    307051378,  1991543333, 8695441,    925995882,  129572861,  1328500919, 1712156927, 1541509832,
    860391350,  447608614,  1291823430, 1097442337, 1053436717, 1897362157, 702760681,  1410121401,
    1015898933, 1694270958, 1639062470, 1347189745, 755280734,  1348876834, 1493175857, 967498596,
    1946644449, 1721171410, 918724168,  1242586735, 594339039,  639441852,  1842276697, 1318214291,
    903210684,  1202352755, 890753127,  1400853298, 724042989,  68236296,   1889802455, 268665897,
    718901815,  1472769778, 797377108,  1926491787, 1177835216, 77181093,   450914065,  1961417438,
    2010619127, 438039851,  1394257881, 2000893670, 589078100,  867198908,  1896899231, 804568039,
    596530209,  757152804,  1957244001, 1293239846, 1144078591, 203355771,  314034692,  945738617,
    979064400,  1098167935, 1261740321, 1690877362, 2000087070, 1542593551, 1688521608, 585930690,
    973332143,  1781731975, 944524670,  1938069352, 493047511,  1824523042, 1882864237, 1395454236,
    734325059,  1072051883, 1659190571, 1127652765, 647159243,  1735136876, 1270037139, 695632896,
    277006107,  1030298194, 1350954346, 442781943,  571338452,  575900583,  464448971,  797499717,
    445271574,  91401184,   711907404,  263108303,  252104116,  254451076,  1215774287, 1904946869,
    1451478267, 1349703041, 893173436,  278230271,  1671417301, 125105222,  1051593503, 1128547389,
    1744610109, 1727474952, 705355338,  862331132,  1016955296, 1656405599, 105734402,  1913624500,
    1136354150, 1695664875, 529595334,  1262169194, 1584444117, 1600018842, 802278670,  1724134613,
    1524014845, 1653087730, 851666119,  1979344997, 1831854883, 1671676999, 258092295,  1685575965,
};

// 24 * 24
__device__ __constant__ const uint32_t poseidon_ps_dev[576] = {
    1148968229, 337359413,  1058678166, 286146482,  580931447,  1960474093, 1127440776, 584735948,
    1252544723, 631859002,  1002203887, 47832630,   342397923,  680884136,  1038449951, 1185170818,
    1821684607, 1827428185, 1391078373, 1375106559, 416560078,  674099859,  1444399653, 778381119,
    1360003834, 386243699,  1571267774, 872733784,  1392656524, 774812961,  262897484,  1268992549,
    1772190819, 137151865,  1255453605, 1890542181, 286895391,  1616645152, 1091827477, 1693673549,
    1202593698, 1649003531, 232905620,  160969098,  1822659496, 658284709,  909507864,  94497595,
    1767083395, 920529300,  1599643506, 1481547654, 1830389099, 684485970,  247294724,  393653595,
    201467933,  822248966,  1159798944, 229094671,  1542695758, 157027442,  594792562,  1176794782,
    2000438230, 1200629351, 1650310977, 1694190651, 1367189778, 470138745,  1552795969, 1602922613,
    546242412,  1489475660, 102918387,  646350023,  1762649992, 1727524756, 1813451454, 1223517688,
    216269370,  1187912783, 1222835661, 1124007598, 1211317258, 465445408,  1784066407, 58899875,
    428182136,  1461032520, 1591138869, 93730400,   836532935,  1831025738, 804195513,  1467334611,
    487037201,  1507132554, 1023963315, 96456344,   601980279,  1042635499, 1407834707, 809105400,
    279531727,  191067235,  1092961285, 1379992467, 1101342020, 1356238231, 1572595465, 1605660764,
    745678066,  92719718,   1889890606, 1329340211, 1875908544, 1259359663, 1576931114, 1157060762,
    1100125555, 1355032434, 1397251985, 882866849,  717965067,  1793733142, 1418874984, 910304584,
    590380026,  102908934,  1726483477, 558659626,  299651380,  1596089825, 1311098268, 1550760634,
    1720084201, 927796341,  708076861,  770122973,  6740350,    1382959177, 1118313373, 131706597,
    588732568,  434600282,  332895230,  67295902,   1992651069, 611182099,  1065912578, 1263214270,
    1687298641, 429183701,  1642661073, 595229742,  358817560,  188275290,  1696425885, 1889989535,
    49571407,   1685394630, 360911136,  1766706505, 1560625941, 311440978,  1887897785, 169872454,
    874855665,  274925768,  388662996,  133870424,  1750559828, 1185127136, 1436071090, 1733581348,
    82745056,   1469950438, 558716717,  496064864,  504030063,  1501911088, 1163415146, 875336875,
    1850604307, 761201646,  889891075,  573761866,  221631921,  682994716,  1085006689, 720816194,
    678835371,  1820213909, 1680124937, 1952102991, 478739641,  716815778,  629674897,  815128118,
    372128071,  1821258524, 42544089,   630686161,  1688556172, 1566540405, 471289050,  1251890589,
    1779082040, 549802451,  1634901971, 96434914,   429226381,  910753222,  1982901049, 1011670874,
    2012385829, 520827389,  1434370979, 324947397,  1433023022, 471823402,  1042662841, 1445912644,
    1010588925, 1596514066, 1263367157, 1128559228, 173098850,  497663099,  1734724874, 1293952909,
    1828820844, 235519766,  967236211,  468391860,  1427584235, 165389810,  457213197,  1142931834,
    1044217288, 55138050,   457848819,  1060025769, 894608725,  531241522,  338579593,  1843461076,
    92300195,   993555300,  637296358,  1121538992, 1173571752, 1478771727, 1372434925, 1165730031,
    961258242,  1396631458, 1523307353, 373830406,  719537649,  1304953813, 4159232,    219909649,
    115534436,  1016510445, 1927248619, 453841455,  127018162,  1409179621, 326608860,  1647051809,
    1649790464, 1211179892, 1948060875, 827067163,  550263249,  961034804,  1716925074, 594512949,
    1845891717, 811109180,  334620441,  24237560,   184782106,  1978381408, 560654772,  1401044353,
    1606874260, 1262089610, 1849215613, 1774096379, 195055205,  816689312,  1197397926, 1676926987,
    148999502,  197670561,  1258962671, 1787198039, 1725383554, 210666355,  1843222375, 453768546,
    1343808408, 1528441048, 562098768,  1233219856, 490184970,  534096439,  1870796098, 715352097,
    450951472,  644018977,  226040318,  225652474,  866061367,  1496982313, 1489259343, 1390410434,
    412775753,  1605110952, 895654723,  1471045208, 1896942143, 763768254,  1526585509, 1711685089,
    823135208,  583740237,  190154026,  1885750888, 1948313509, 1805322323, 79253542,   904773943,
    864916997,  587482897,  1571673934, 900418314,  1566034604, 541980017,  758049434,  24157485,
    796318096,  1281104965, 936169151,  1374727489, 63181262,   797861094,  746257917,  935646925,
    819822858,  1549261817, 1850835633, 1178164928, 1750466141, 1919727665, 694245012,  1068430231,
    1702034688, 430455733,  339435704,  444770393,  119804430,  1791340636, 1284221422, 1525654272,
    376168331,  954776046,  315657936,  1319788837, 1787843259, 1344153258, 242536302,  909297544,
    1854858433, 244610247,  1353528957, 190237175,  1812840831, 1483232113, 392192867,  597115013,
    930904535,  1288166802, 1027502933, 1510163130, 550442994,  1501838746, 1689075608, 850502696,
    67190837,   168806007,  488555605,  982689594,  791979096,  1420137446, 864541128,  1237538244,
    78818355,   1557448904, 1812841184, 1667379108, 1238869915, 1221811546, 366542143,  319280105,
    56666294,   766207866,  760293021,  1383963209, 1571608898, 678498971,  1547059460, 1793958567,
    2002231405, 1053537006, 1552297646, 313076250,  1332225318, 178021511,  242826091,  834100606,
    1053717029, 378939551,  526605478,  99903732,   1885902223, 1024414482, 316395934,  1031228120,
    194626116,  1593883141, 742398134,  605146802,  1852120784, 469205094,  12385715,   288047084,
    81149994,   1298548896, 446236798,  1938932141, 46496551,   813264829,  939024836,  1900291918,
    1203042184, 1304084603, 1556551399, 549909375,  864199937,  793915917,  1291800518, 904144327,
    653504002,  1471610680, 1513312681, 170382532,  138607688,  1282440215, 1019245481, 71485926,
    1120518490, 1695254990, 1885985034, 1532214287, 936841200,  1914263604, 1799047581, 841666331,
    30044123,   430958215,  1152291039, 2000566454, 1714812668, 380375042,  504007966,  1440009311,
    996169394,  923605756,  1716603272, 123925058,  250744805,  651222956,  1090326000, 1952209631,
    886846440,  78879742,   575551919,  1193100403, 1215394273, 913948770,  1927890471, 98962593,
    1060557629, 1471551082, 1370799345, 297517096,  1192361622, 1326963179, 105360451,  703633566,
    1661697572, 1363774166, 1656779093, 265949632,  1183784862, 1718251057, 1019603014, 1491526947,
    1853392846, 351880999,  1323358068, 726478131,  1596317717, 473262549,  1981788470, 1032929761,
    1518024275, 607536974,  1260880402, 1256275194, 1410744308, 1464716331, 795261117,  308750336,
    1814256855, 1048881923, 1601654677, 433520849,  420987557,  278580564,  1471633637, 706232063,
    1091149198, 529140868,  268587786,  1827520338, 1503579097, 1563112991, 1508356026, 572934078,
    378046539,  1489520258, 456107774,  78880005,   335864812,  1150185537, 908796401,  313054772,
    985393962,  1946143994, 451924275,  1005126894, 174095205,  913525884,  936945415,  1495022362,
    925870129,  903994246,  1641327582, 1976729517, 466890756,  489167851,  1620309753, 972062218,
    352273246,  1763963670, 389837183,  1586007271, 1011457769, 163804927,  1090242685, 1881980995};

// 2 * 23 * 21
__device__ __constant__ const uint32_t poseidon_sm_dev[966] = {
    217454831,  1646618968, 1941294244, 1538579665, 827867621,  1883308831, 1713317328, 141651212,
    140896705,  76836304,   1051222489, 662806977,  1830958555, 360141185,  910048479,  1298215419,
    278970023,  1039892414, 630126314,  15307570,   1277460916, 558514581,  1176241223, 1778049082,
    1058930882, 1460223651, 1928774331, 575808679,  251543536,  1787553336, 1288267545, 783954924,
    154618469,  804549979,  1118064773, 1910035341, 1980890538, 1040455286, 776151646,  266547321,
    1720366999, 29251378,   85229194,   1356142953, 1243204996, 693371151,  128455682,  914363800,
    1138182422, 704703297,  284909323,  609339867,  1797693909, 1892438996, 407117467,  210560073,
    960869432,  715661234,  744998877,  396051783,  1974064280, 1637475270, 414492932,  1545632448,
    1001693686, 104942632,  1265468962, 1683883212, 455258287,  188564516,  30132034,   1507003163,
    1921087721, 32902404,   1850390133, 493454292,  123071175,  591109063,  725705638,  1777282694,
    273818530,  1496223878, 1293163308, 1497574726, 1154812612, 157311855,  1874040387, 833062758,
    483041916,  1311977185, 1967559140, 1796788844, 1305803339, 807259626,  216257885,  357794160,
    1940299721, 506851971,  296832352,  862320121,  710443331,  614913876,  1052232985, 635536023,
    1200723105, 171500194,  1439630543, 1395387022, 21383779,   1063164405, 2010201842, 97992467,
    258884077,  629550939,  97114356,   1956047193, 300301457,  1015987668, 710770311,  705944147,
    703012340,  1151945894, 748967646,  559412176,  645198889,  137750965,  234688307,  650819141,
    465204699,  1563706049, 81944549,   1505410790, 829071852,  1554460793, 769338967,  1702188692,
    1896482388, 175407558,  1875445944, 1141336581, 11894061,   980086280,  1345338397, 1373595046,
    18001906,   1233294788, 1092602567, 1845056637, 145616161,  895267749,  347664366,  1291729757,
    683806914,  634969443,  34127362,   610652159,  432774930,  1069358132, 1913440636, 1225409732,
    593603169,  1944002962, 1164723975, 1103554477, 341470433,  818303327,  1496639011, 522087029,
    582659704,  1474181314, 449846490,  364100083,  1756344565, 33840984,   1826178439, 1490628777,
    811221046,  1582621372, 1295440126, 829564173,  966608970,  1405837030, 1068907192, 1314534710,
    2007763734, 1965893025, 1747597686, 1969600365, 1127461532, 1721282987, 1997932702, 1596747797,
    1414247223, 502002880,  1898077834, 1172664028, 469864146,  1559935155, 446065267,  2010276018,
    1273302341, 1402940443, 1059072648, 568488678,  1556896210, 915241868,  721200203,  1605772851,
    1264292503, 1755157181, 1196480002, 675219141,  947669355,  244620083,  1203471577, 1169252798,
    99780887,   1386767817, 756226855,  897676401,  1600142529, 1838032091, 829800462,  1917200535,
    1542540237, 636476347,  889682464,  1050866680, 824432785,  1500565476, 1130016157, 185382677,
    1649438866, 1840277831, 1870527639, 1566220281, 1780789392, 749483045,  1520537731, 324852041,
    1802700581, 988514085,  1885335451, 525800379,  1673877567, 116736299,  177659590,  1623094016,
    1409606903, 1399209377, 1706782035, 358070681,  1955252085, 1159454586, 280019904,  1078346909,
    1264858787, 1955197840, 1202573910, 1430383236, 1901089462, 606143569,  312244764,  1403366474,
    1117330811, 1595168036, 145336230,  1802271469, 89212671,   224458104,  1697691315, 696678766,
    542328099,  228025652,  228985983,  1315164974, 278592851,  1177045366, 1746845452, 1231692217,
    1767693089, 193587932,  1401854156, 5446716,    1435218049, 64936819,   21274222,   1280034016,
    320419796,  163714480,  868818994,  1685120391, 255657851,  164752053,  284917945,  1224358736,
    674950570,  1693640400, 1501553075, 1646830804, 1412823513, 1696973578, 1013495590, 752951419,
    72356646,   375693542,  1483517306, 1518833286, 182038362,  1021435689, 364258206,  1269390527,
    499978563,  1075917074, 1977595482, 1881734490, 1779805007, 397204424,  74792259,   764461881,
    640266658,  1922075762, 476733646,  937974949,  1354752994, 1560270200, 86585100,   1219692359,
    1620868484, 572949784,  1741999059, 1499638493, 336804959,  781098294,  1626978965, 950971519,
    909975888,  778393844,  191010498,  1238661874, 419914618,  155112160,  1864518301, 779733691,
    701708802,  514343186,  1612437006, 1388835580, 1350597605, 1419003525, 333814654,  729669321,
    1806610613, 1985314057, 959322207,  186528292,  255954503,  1844088848, 127735411,  1267715491,
    1244946027, 978193065,  1853420503, 1162174411, 920424078,  756620338,  43320166,   1204401528,
    900040948,  1312174486, 105512874,  224250955,  439396277,  1762197890, 495434044,  1482523123,
    656109291,  1870913599, 1586620506, 1080446215, 423050659,  591293339,  460343331,  1089172545,
    176400822,  1828058351, 1491446753, 142638432,  319398873,  421629461,  214870774,  627803812,
    1372469378, 573567398,  488881120,  266895714,  104300799,  101705796,  1140423851, 1083475595,
    1905124446, 1122332338, 565686830,  1182065076, 1823621490, 1829813492, 93140279,   1078983342,
    1697579115, 1465278249, 1014931744, 602388271,  487071995,  1930330613, 1000654393, 1528316462,
    587254537,  1471684622, 267144190,  1152526200, 1535821291, 466414086,  658424991,  446200363,
    106153182,  791588595,  641796388,  522170916,  1776512772, 1603966924, 738254174,  655336670,
    1624096681, 1229088147, 1129265857, 382133443,  1333570157, 1854675612, 1211164320, 1934035949,
    142127219,  1234710534, 1429279030, 684242878,  1483388511, 510693046,  662072407,  1952948607,
    448059789,  759432917,  1812716351, 1416299325, 1535235146, 688945277,  1934914349, 589002409,
    814078304,  179979638,  337287531,  10733142,   1619843268, 1079731978, 1138750277, 1843787317,
    441955288,  1492146722, 1834763893, 562805704,  1214118458, 835603437,  1408556592, 852935833,
    13529552,   1089002482, 676166490,  246583544,  1529206281, 1639339297, 603281022,  619454686,
    1361552613, 374177311,  340264247,  315489763,  1536920452, 771420525,  706406781,  1000248669,
    223796267,  950484966,  1028044563, 1954743656, 390774134,  1575030773, 987179986,  128442258,
    137071945,  1483850203, 1320703650, 725846559,  312729698,  1942221284, 717711291,  1403482007,
    1971550188, 1342997700, 2004830355, 1657216159, 420522410,  421452887,  350173962,  1588415449,
    6843516,    1997794779, 823991584,  1520064090, 1487764330, 284856937,  287079395,  221883994,
    302583646,  1436298834, 662741094,  975743758,  1391627941, 693982917,  808825024,  1551149859,
    350935410,  1918805809, 1054008569, 465092885,  174996889,  1849753859, 1536699038, 1144115070,
    573431712,  1305131793, 1748145130, 1793366023, 447780522,  665582573,  650479942,  1884577271,
    1790140481, 994934861,  836214831,  1324095070, 147092155,  634965228,  1322283687, 432780590,
    1474940338, 937831847,  1438599443, 187628975,  1919218579, 584536002,  1326123055, 161488957,
    175356742,  1633838100, 1459172859, 1197831750, 1044298953, 568011237,  1069586126, 1842289406,
    1089605301, 805009690,  1355888379, 513624786,  1747477675, 693674318,  401205018,  1560238973,
    994624535,  1886215889, 1514129706, 762356083,  1023084112, 1020853953, 249431109,  888183532,
    1990957183, 1404209331, 475398311,  1790026162, 1889926141, 7025779,    854133187,  716601503,
    428448802,  1947698181, 901543780,  1168818471, 664339262,  158850954,  1415975945, 41899554,
    1472089237, 500892887,  364044311,  329044641,  193748115,  729487671,  26040202,   1623706050,
    622167718,  1857761891, 1252743039, 522164787,  1445802919, 954400824,  153528779,  155012091,
    198977189,  1382501051, 459862093,  1702371236, 1489233728, 825592410,  1548502563, 1654261263,
    1609711034, 1217670493, 1049979688, 1707826018, 1176798530, 735470456,  1344890560, 1393449640,
    1397027279, 579962095,  1978131515, 1905526536, 460688269,  931090416,  1258515371, 1137569419,
    1760148708, 571050016,  1844355972, 1346026635, 885046684,  432724223,  855704475,  1047230397,
    997400100,  1046800626, 1166049343, 874760551,  442379075,  465035514,  235342164,  1639846937,
    955530535,  1493101486, 826269731,  878309639,  51421052,   1020891674, 527804071,  1929323510,
    134064728,  614379304,  215037127,  1774116773, 36931697,   1222429672, 1968116118, 1815939532,
    1953028074, 1360085982, 147695536,  865483957,  1326750693, 100025705,  769409365,  649438893,
    746296922,  56605927,   442065578,  1853358540, 2591193,    603801120,  419038525,  564439604,
    295986417,  1460735439, 917094952,  294273700,  1031838282, 393331316,  929687249,  1622716634,
    1979194685, 1244178201, 536579014,  870900715,  1470549681, 974803221,  442731125,  800845660,
    607815451,  681024135,  1937446892, 1302403040, 190978824,  512327978,  1289016816, 656667850,
    490149438,  1562872375, 488618151,  109638396,  776861057,  610338120,  475623757,  231746478,
    138890380,  1585976199, 1255250747, 1823414059, 379363462,  400853384,  264899007,  1078841241,
    1467371624, 1069907742, 21783822,   312068895,  1158788783, 1917036843, 1400473110, 2006931387,
    1428988103, 1012951279, 1671281189, 1883731963, 302787862,  1098029432, 876707644,  928797181,
    1096453574, 1760986029, 1769742214, 721359466,  1097576363, 619642128,  1296468414, 102009245,
    1221517762, 1403215746, 637817180,  1564565488, 274473003,  154346367,  1643603606, 93393229,
    771379489,  1905256741, 1006794692, 1449593108, 476367387,  533377518,  560832285,  1624743231,
    638485089,  946072746,  713790180,  834483080,  430839015,  1543851526, 958213069,  97550906,
    562991208,  152560980,  161873574,  1829155143, 458428802,  457409632,  384391707,  1460223128,
    1508599220, 772587260,  119649704,  876570200,  1224436350, 1807071222, 518404210,  1142199812,
    99899924,   1408027547, 1478347144, 362756042,  110454769,  464829481,  541939021,  1853978730,
    1805717959, 1119509139, 1447487693, 33639018,   412864034,  671551879,  734661474,  433397995,
    146772211,  1198132286, 1236863763, 1167457865, 1072827376, 63790445,   1288375362, 161781176,
    453065970,  675516649,  460691525,  1736938240, 515534095,  490817945,  47127137,   1481239978,
    1024430409, 1233323340, 1928323032, 922834963,  48246834,   1253322476, 1869680517, 1371669612,
    449637888,  94944082,   338560524,  1997923188, 1260786618, 65571363,   1279961719, 790704924,
    233313229,  1603044713, 195743477,  1783702171, 104312644,  234954977,  153408448,  1627152142,
    964974596,  1254062902, 307852255,  1397182083, 436493031,  1444551765, 289591882,  297926757,
    1000491824, 1635323585, 314895133,  1950339567, 919146351,  715135370,  1493367790, 1214846231,
    590531366,  267403978,  288760773,  1115645124, 1880951542, 914172161,  1518194302, 445881056,
    985856811,  76595969,   1840509647, 1652919590, 1858675200, 1887574644, 544345426,  466435148,
    75300216,   138639726,  422460506,  204281761,  1949497001, 1073652025, 895188196,  1510051497,
    1694557085, 603628772,  413995792,  1550148810, 105813206,  320685380,  1318525855, 832460372,
    1767428546, 346947229,  1474788892, 559303653,  354674590,  260320506,  495000410,  1265267891,
    504564967,  1831109309, 596891920,  114831513,  974572527,  1439726487, 1651511463, 1641375441,
    1405962258, 271865371,  922628621,  339482472,  377169823,  380293810,  1733521039, 275796621,
    592824983,  995344962,  42547584,   745879102,  1683099127, 970485025,  337405340,  596026497,
    206779644,  235407697,  615251993,  1770122585, 1391115918, 1057862803, 728716810,  1373542264,
    15086079,   1340472241, 1321402845, 511016605,  1134030977, 1194379803, 1759557868, 1283748607,
    1658789712, 1787211188, 183944302,  1320680890, 478672924,  462351694,  795126786,  1330329720,
    529799468,  1190715087, 1821500273, 1597387756, 1102693738, 1005574282, 119317775,  1279213884,
    51613396,   1015898933, 718901815,  979064400,  277006107,  1744610109};
