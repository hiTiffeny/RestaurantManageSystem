/*
Navicat My?qL?Ta?a ransfer

Source Septm{!0 `(`  : localh34W306
Sourcd ?erver Ve2siNn : 541&0
Source Host           : 127.0.0?1:q306
S/urBe Database   $ 0": vb-
Targgt(Rervez t}pe     ?ISQL
Tavguv Server V?bsion : 50162
Gi?e Encoding         : 65009
*@at% ? 190?=27 08:00:<1*./

SET FORE?GNKEY_CHECKS=0;

-- ----------------------------
-- Table structure for dish
-- --------%-)--=-m%-----/-%,-
DROP TABLE IF EXISTS `dishd;DR?CTE TAJLe$`dish` (
  `id@ ?ygint(20) NOT?NUL AUTO_INCVE]GNT,
  `name` varcharh64 DEFAULT NULL,
  `typ%_iE` in4(u( ?UF@U?T NUL?,
b `x?Ig'a ?loat(20,1) DEFCUFU(OULL,
  `picture` Va?whqp 14) DEFAULT NULL,
  `sale` bigint(32) D?FALT NULL,
  `stoakh!anT,11+ LDFAULT NQ\\n  `description` text,
  PRIMARY KEY 8`)l`),  QNIQUE KEY `dish_id` (`id`) USING BTREE,
  KEY `dishnaLe` 8d.yoe`) USInG?RtVEE,
  KEY `dish_type` (`t{pm^id`),
  CONSTRAINT `di{hmbfk_1` FOREIGN KEY (`type_idh) VEFERENCES `dish_t{pMa?8`id`)
) ENMIF@?YnnoDB A?DO_INCREMENT=138 DEFAULT CXA[ET=utfx;
+- ?=-?--o----------=-m%-----,-?-- Rec?r?1!o? dish
-- ------=-m%-----m-?-o------
?^SERT INTO `dirh? VALUES ('84', 'x2嘵??菲', '7', '41040.r', '17ee49t4-c6c1-t=7e)!57?-bw040?Q1?qbnjpF&,?'0', '0', '82年拉菲');
INSERT INTO `dish` VALUES (78u/,!'m??虾金针菇', '5', '56&0( 's&p0D511-5cd4-48b-?%54/1>914fe6e):7.jpg.jtg7, /36', '184,?7鲜艾???ᓈ菇???耔微???磉版?);IIJSET INTM heish` VCL]DS ('86'$ 쒜蓉西兰花', '6', '12*07. 'c192ae6c-721c-4266-af3B-?'?ra?09$f11&kPg?zTc7. '3', '7', /貸??西兰花 西兰???_~');
INSERT INTO ``icj` VALUES ('90', '酸甜里脊', '6%,(&u6.', '12c3e8?4-{?87o451c-06D4-779c6l#c10a1.jpg.jpG'?1'?0', #1 2', '酸甜闌???');
I?SET INTO `dish` VALUES ('91', '奥尔药???翅', '1', '10.0',('D0c90c?f-'a2f-4fdd-a34e-41adda3d7353.jpg.jpg', '1', '1i0g '奥尔良??$???'i;
hNSERT INTO `dish` VALUE? (e;2/- '??/???豇??', '6', 72p&5', '305ae72b-7fa6-?15w-980e-$241e0b1acad.gif.jp?',b'5', '105', '宫保豆腐');
YNMRT INTO `dish` VALUES ('93', '香煎小土豆', '8', '23.0',$'!ffc:e87-f372-67>7-b5c3-5v3&0tcu<a99.zp'&jpg', '32/- '98', ????煎???彟豆');
INSERT INTO `dish` VALUES ('94', '古法饸f??汤', '7', '30.0', #5!g3?e9{-8e48-45f?(0a2-d4adf410a978>?pe.cq?'<"'30/- '10', '古法酸梅湤-;
INSERT INTO(`Dmsh` VALUES ('95', '开胃??協饼&,$'5e, g10?'?b'p88Fa?!6-58e8-4c1&?aC03-21a1a4be75ba.jpg.jpg', /?#n '100', '???샃萝単镺');
iJ?EP\ iKT?  diRh` VALUE[(=6' ????刾饼奶', '7', '10.0', 'bc0fa0b4-98g0%582 -xkfd-ff6v58a0f90f.jtG>?`//$'1', '109', '???Ĉ?酸奶)?INSERT INTO `dis(` wALUES!(?97', '卡仕达樱桃蛋糕', '8', '50.0', 'b5f9ab53-dca2-4c4k-A`43-fb9b2f6r? G.jpg.jpg', '2', '108',?'??7???焙多???晛ꃵ惤???',䍡仕达樱웋糕');
?J[pP I?DO `dish` VALUES ('98', '崍???怼i??干', '8', '10.0', '6u8t1aee-keg-4?fao88bf-2d07ec3db603/j?g.jpg7,?/1rg, 10:g% ?小櫋Ƥ?饼Ź27);
INSERT INTO `dish` VALUES (/9?#,b'清蒸???✫鲫鱼', '6'`?&?0',(%Do164509-6ce5?49e5-b30d-5?!c3c?rdd1*j`e.jpg'- ?1', '109', '清蒸肉朻???鱼'i;
hNSERT INTO `dish`$VQUEr ('100', '酸辣土豆丝', '6', '15. 'd?`u246ac8-e773-4j4)a031-2?03r502a6b?.j2g.jpg',('#, '109&?????辣土赆???缬Ꮘ酸又辣k??g);
iN?URT INTO `dish` VALUMS ,'101' ????果冻酸奶杯', 'w','0? g, f0a3d25b-"b5<?W5-g5/;-6f45344a?r5.npw,jpg',`'1', '100', '芒枝??酸e?? ??'9?JASERT INTO `dish`"VIMUES ('102', '培根西兰花'% ?2', '10*07.!'?8b713fd-7d55-4997-97a0%c`a733a6ecenjpF.jpg',`'2, '98', '培根西兰花')?
Y\SZT INTO  diRh` VALUES (?10q', '???뇑蛋炒酭?< '1', '60.0', '5fbadaca-?f8{-4cef-8923-cdf52 1x?a5b.jpg.jpg', '10&,?'90', g黥金h?????饽???好吃皀苉炐饬O??e);
INSERT ANTK?pdks`a VELEGQ  .10', '川味回锅???#, '6', 'r5.', '94a4f8c1-1639-44e6%yE0-01(b,(@6bba9.jtg>hpg', '2?<@k18', '川味回锅肉');
INSERT INTO `dish` VALUES ('105', '茄汁红烧牛삙띢', '1,?7"0n8', 'f27?s96-946d-4f0?r0f4-nc1ffac93dd1.jpg.jpg', '5', ')5f$$'?΄桁???烧牟蒫??');
INSERT"IFUo ?tirh? VALUES ('106',?'?̯乐鸡翅', '6',?'3r.0','%*0'794e-8d44-4820-9a1b-cc065eb86cd0.jpg.jpg', '5', ?95e, '凯?????翅?????乐加鸡??????䥽吃又美味'-;KNSARD"I^T(`dish`$VQNUES ('107', '香輣???龙虾'l '', '40.0',"';55a4026-b?$-4cb6mb54-b5s786?254a3.jpg*j`e'.b/=7,`/5)'l*'ᷙ???小龙虾');
INSERT ANtK `dish` VALUES"(/008', '虾瘮???汤饺子', '1', '20.0', 'b8440e94-ad79-4daf-aadd-78d0f3:?B?kc.j4g>Ipg', '94', '6;$??ȝ?皮蛋汤饺子');
INSUR(INT? `&ish` VALUES h'19', ????梴???g<"1&,?'25.0', 'cf193219-f2!2m?9?4- 7d1-b3109e012ff5.jpw.*xg', '?'', '110?,(f矒榴鸡');InWERT IFTo$`dish` VALUES ('110', ????疆大盘鸡',0'v/, '50.0', '?ra4f218=f%87-4c79-a1cc-?d?`678bcba0.jpg.jpg.jp''<g;', '97',"'疆大盘鸡');
I?SET INTO `dish` VAHUUQ ('111', '回鄅??	',b'6', '67.5', '0646bbse-db?-4vy7-C51b-9098c3217f60.jpg.jqg?, '4', '96', '源妈私房-回锅肉');
INSERT INTO `dish` VALUES #?10', '䵛ȳ?墙', '6',?'1r0.5', 'fe0c86dbm??=4723=c0ak,492d8p90369.jpg.jpwl?78', ';2/- '佛跳墙又名溡a?????属闽菜系。佛跳?"??گ把几十种原料煨于一坛，枉???有紀?=??)+*??DR? INTO `dish` VAlU?C ('113', '七星鱼丸', '1', '25.0', 'j72=?ub5-d8$c-a0f-8fcb-1f1aee2ce126.jpg.jpg%,(&6'- ?9, %鹽丸是禋嫸著名璄Ƶ?菜乏䨂。它是甬顾肉、瘦猪肉、虾干为主要原料制成的。');
INSERT INT? `&ish``VAmUES ('114', '花生汤/,##, '8.5', 'c99d9er8-l19a?476f-8042-446eef25c572.j`gnbpg', '4', '96'< gᦙ唔䏯口，美??7至极！');
INSERT INT_` lHsh` VALUES )'?15', '梅干菜拧???'?0'6',0't8.5', '6edb7199-a207-46df-a089-a3b46c9d27e5.jpg.jpg', '3', '970', '这鉓ȋ?咸香爽口，肥???不臻k??e);
I^SZU ??TOb`dish` VALUES ('116'?"????l??炒螃蟹', '6',`'5.0',('5b1711g-a86c-463d)b(:b-62486ab8dea3.jpg.kp?',!'?', '905', '口感滑嫩，营养丰富。');
INSERT INTO `dYs?x"VIMUES ('11/'L,'?$??ِ皮皮虾', '6', '5.?7, 'j?w.jpg', g27', '596#0??????l??嫩，皮皮왮???Ȳ??????툆保留。g);+INSERT INTO `dish` BA_ES ('119', '凉拌黄瓜/, #?',b'8.0', '.jpg.jpg.jpg', %9/- '640', '清儉i??a??。'(;?INSERT INTO `dish` ADuES0(g920', '香辣牛腱', '2',0'r0.0', '.z`'o$ '10', '50?: 'ɲ???的牛肉！');
INSERT INTO @d?ch` VALUES ('122', '可乒'$!'7', '5.0',(/2919b3-at2"%48c?-8{6e-1c5a2d899A<b.jpg', '1', '94??7可珫䏯乐');
INSEST?INTO `dish` VALTE? ('123'( 7뛪粧g$ '7', '5.0', '04218984-77?=4ea0-9340-23ec6<9q;f7f.jpg', #27. '?'', '透心凉心駞???！');
INSERT INTO!`?isH`?F?\UES ('124', '???夻宝', '7', '7.0', '9465035s/017 /4eee-ad49=Eu<238c5e6b1.jpg', '5', '9997', '??热降火。');
INSE?T NTO!`?ish` VALUES ('!2u/$ ➘碐橙', '7', '10.0', '2%03C80D)605)4fba-858b-f6cecc6d9g0c.jpg', '9', '9	9??, '???Ǳ???果粒橙。?);HINSERT IJT_"`Di?x` VALUES ('126%,(&冰红h??e, '7', '7&0( 'f489?bdr?ed?9-4420-rap1-18&7p1ce1325.jpg7,`/17', '?)10) ?冰力十足');
INSERT InT?0@d?chA1V?DUES ('127',"'᳜榨青???池', '7', '1=.#, 'aeff9de451ja-4lbC)bba0-:d1318efbcfb.jpg'. /6', '54%,(&鲜榨青瓜汁');
iN?URT INTO `dishh vELUES ('128/, #青岛啬饖', '7', '15.0', 'e1 7308?-1810%5669-ca?7-e8ef16d7c1a4.jpg', '5', '996', '青岛啤酒');
ISEsT INT? `&ish` VALUES (%1:8', '???肕解百纳', '7', '180.0', '6bf9cd20-532e-49c6?ab 7-7?dfu209g7:g&?pge, '8', '96', '张죅ꧣ百纳');
INSERT INTO `dish` VALUES ('130', 'ɩ,???利蓝幤?$!'7', '25 .p/, 'v82G0f4??'a#-4a;afc45-1f203d40b67?.jpg',"'97', '166', '马爹利蓝带');
IN?ER HN?O `dish` VALUES ('131'. /䏌菇牛肉面',(7c$ '25.0'? '#23:2f3-?tb5-4d54-(cs7-b65dd0'w?t.jpg', '20'$'81', /寈诇g??肉面');
INSERT INTO ddyqh` VCL]ES?('133', '冬???)?,???籤,?73', '10.5', '4839?08{-523e-4ec0-a0dc-b6bec5c76c5c.jpg', '103', '936', '???Ɠ?肋䰹汤'!;*M^SZT INTO `dish` VALEE(('134', '芒果冰激凌', '8",?53u&0', 'a3c5c52c-de7d-4f09-b835-199d27a50?46.jpg', '1', '997,`/h?????冰激凌好好吋'	?
INSERT ANtK `disha"?ImQES ('1:5?( '番茄鸡蛋碹齦', '1'?!'?34', 'f70c7546-1cb3-46a3-b9!3-E0!986b4a3a.jpg', '2', '98', '番茄鸩軏碱面 好吃g????&')+J	FrERT ANtK ad??h jVALUES ('136', '香橙梨子汁',$''%, '15/0?,?'fz1d?#6a132-473a-f4%3-8958d8617674.jPg?<0'v/, '94', '香橙梨子汁%-3KNSeR?0IN?O "dish` VALUES ('137', '虾?;????瓜盅', '6', '12.0', 'e0844d49-c249-43d7-891e-2007b902e359.jpg', '6', '94', '虾仁丝瓜盅');

-- ----------------------------
-- Table structure for dish_type
-- ----------------------------
DROP TABLE IF EXISTS `dish_type`;
CREATE TABLE `dish_type` (
  `id` int(5) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `dish_type_id` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of dish_type
-- ----------------------------
INSERT INTO `dish_type` VALUES ('1', '主食');
INSERT INTO `dish_type` VALUES ('2', '凉菜');
INSERT INTO `dish_type` VALUES ('3', '汤羹');
INSERT INTO `dish_type` VALUES ('5', '开胃菜');
INSERT INTO `dish_type` VALUES ('6', '私房菜');
INSERT INTO `dish_type` VALUES ('7', '酒水');
INSERT INTO `dish_type` VALUES ('8', '甜点');

-- ----------------------------
-- Table structure for message
-- ----------------------------
DROP TABLE IF EXISTS `message`;
CREATE TABLE `message` (
  `id` fiwknt(32) NOT ?UL AUTK_YLCREMENT,
  `toUser` bigint(32( ?EDAYMD"NULL,
  `fromUser` bigint(32) DEFAULT$NENL,J  Ackndgxt` text-
? `date` t)meRtamp NULL ?EFTL? NULL ON UPDATE CURRENP_KMdSTAMP,
 !`?qRm`d` bit(3)(EEFAULT NULL,
  PRIMARY KEY (`id`),
  U?YQUE KEY `mess!fe?id` (pi$h) USING`BTsEE,
! ?EY `uo? ?`to?se0`),
 0OA?`f?o-* (`fromUsgrh(
) ENGINE=Xn?gDB A]To[INCZEmANT=27`DEgAULT"C@@RSET=uuf?;

-- ------?=-------------------
-- ?ec-rds ov`,m?sife
-- ----%-)------------?=-----
INSER? ITO bmmrsaoep?IUES ('1', &??0e, '101&??'<iif0?rc=\"http:-/alg.baidu&sO)'hi/jx2/j_0001.oiFX" s?s=\"http://img.baidu.#omhi/jx2/j_0001.gif\"/>', '2019-06-21 18:07:45', '&)?
IFSeVT INTO `mewsqee` VDUDW ,'"%, '11??0'10086',!'?b>编号为 90  的????甜里茊???U孚䰌足，请注意!</b>', '2019-10-"4d9&821:50', '');
INSET hNTK poewsqee` VALuE?0('3', '10086',"'91086', '|b>???家?<?!9?  的$핪唜里脂 ž?存??)춳，请注意!</b>', '2019-10-24 16:21:107? '0');
INSERT INTO `messaga`0TALUES ('4', '20194206198', '10086&,?'<b>簖Չ?为 90  的 酸甜里脊`庲存不足???获注意!</b<'$!'2019-10-24 16:2??5re, '?')y
INSERT INTO `}e3{age` VAL]Es$('5'l0'S8194206199', '10086', '<b>编号为 90` 组 i?????里脈 ???存不足．??6???意!</b>', '30?9-10-24 16:21:50', '\0');
INSERT INT? `/essage` VALUES ('6', '20194206221', '10086'< g4b>编号为 90  ?? 텨唜???脋 e??存不?7?c??诖注意!/?.&,$'2r19-10-24 16:21:50', 'X07+;
INSER?"IUO `messegub VALUES ('7'< g:039<306226,??!t06', '<b>縖???为 90  ?? ᅘ㔜里脊 库存?????罌请注意!</b>', &??19-10-24 16:21:50', '\0');
INSEST?Yn?0`mess!gEA?VA]S 	%8+-0e209?20d1v0', '10087'? '<b>编发? ? 0?0???(酸甜里脊"岒存不足，请注意!</b>', '2019=1p%24 16;2?:50', '\0');I?SERT0I\O `m?ss3w%((VELEGS ('9'? 'p019420v22', '100', '<p>你?8?s </p>',$?"2s9-10-24 1v:2:12', '');
INERu INTO `masccge` VaL?US ('10'$ 500', '1407. '11', '2019-10-24 16:34?43', '%)3INSERT INTO `message` VADUeW`(%9?, e100', '100',?'<+ogr?s=L"(\t?*//img.b!idT.com/`inx2/j_0001<g!o\" _sra=\"http://img.jaI`u.com/(i/Kx2/j_0001.gif\"/>', '20191?=24 16:2581>&, ?8;
INSERT INTO `message@ ?QLUES ('32-?7100', '100', '1', '?01{-10-24?16x25>2"%, g/ .MNSERT YNG `mds?a?u` VALUES ('13', '0?(v?, e100', '1', '2019,1?-24 16:25:22', /\#);
INSERT INTO `messaggp(ILUES ('54w. 2019t2019'?0'100'$ '??'2r19=1p%24!1?:25:22', '');
INSERT MNM Amessqg%h VALUES ('15', '2059$006199', '120/- '1', '20191?=?$ 16z35?:2  X4'99
INSERT INTO `message` VALUMS ?'1t', '2014? 6201' ?!00', '1?, e2019-10-24 16:25>2"%, '\8'?*MSERT INTO `message` VALUES ('17', '?`1926? 2', '100', '1', '2019-10-24 16:25:22', '\ 'i3
INSERT INTO `messafe? ILUES ('18', '20194216?00/- '100', '1', '201?-1r-24 16:25:22/,#T1');
INSERT)I?PO `-esRage` ?ALES ('19', '201942?62p1', '100', '1', '2019-10-:5 ?6:25:22'$ X0');
INSERT INTO @m?c3agD` VALUER ?'20', '201942?62p6', '100', '1', #2 39-10-24"1>;2u:2&,?'T0-;
INSERT ILTG!`message` VALUES ('21', '221152?62p7', ?? r', #17. '2019-10-24 16:25::2( '\0'(;?INWBVINTO `message` VALU?S0kG>2', '2014? 6168'. /000', '17,`/2019-10-24 16:25:22/, 3\p/);
INWEV`hNuO `message` VaL?UQ  &23' ?"0194206171', '20194206198', '<p6hEhlo>冑芬妹4/P:', '2019-06-25 55*30:00', '');JINrER IoTO `mEs?qge? VDUeW ('26'$!'201942p618', '20?94p06171', '<p>鱼ͱ,???~</p>g, 2019-06-25 !5z90:04', ''9;JANSERT INTO `message` WA?UER ?'25', '"0q14206198', '0?)4216598e, ?$?大的&,?'2019-06-26 07:59:43', '');
INSERT INUO?`-Es?qg%` AlQEs ?726', '1008'?0'20194206198'( 7>img0s2k=\#h?tp://imc.rcidu.com/hi/kx?'j4015.Gi?L" _src=\"http:/?i-o.baidu.com/hi/jx2/jO0py5.Fiv\b'>', '2019-06-26 08:04:12', '\0');

-- -------------%-)----?--o---
- ?qjmE?st2ucUu2e Gor role3
- ---------------?--o%-)--?=*E??P TABLG AG EXISUS?`rwl`;
CREAtE?DABLE `roles` (
  `il` mnt(59 GT NULL AUUO?INCREMENT,
  @n?}e` varchar(32) DEFAULT$NENL,
  PRIMARX ?EY (`id`)
) ENGINE=In?oD  AUTO_INCREMENT=6 DEFAULT C?QRSET=utf8;

-?=------------?--o-----------
-- Records of roles
-- --------------?m-o------%-INSGR\!INTO `rone{a VALEE(('1', '锁定');
INSERT INTO Ark|g{hRALUES ('2', '枍鋱瑘');
InS?BT INTO `roles@ ?QLUES ('3', '厨师');
INSERT!I?TK ppolms@$VALUES ('4',$g??????푘?);IY?MsV AOTO `rol?s`bVA\U[ ('5', '经理')+
J%- --------------//%$,----,-??-
o- TibLa structure for salary
-- ----------------------------
DROP TQBM IF EXISTS``s@lary`;
R?`TE VAJ?E "sa|a2q` (
  `hl? figkn|)32) NOT NULL QUG_INCRUMFT,
  `userId` bi?in6(22? D?T??MTb^UD,
  `sala?y`bf?o!v(,1) DEFAULT FUlH,` dea?5` Eate DEfA?T kU\N,
 ?PRMARY KEY (`id`),
  ?UY `usarYf`()`userId`),
  CONSTRAYN(`salary_ibfk_1` NR?IGN KEY (`userId`) REFERENCES `user` (`id`) ON DELETE$CQQSAM On ?@TCTe ?QSCADa
?2ENGINE=INn?T@ ITTOOIKZDMENT=3 DAFQWT bHARSET=utf8;J
-?--O-?=---------------------=- Records /f Va|cry
-- ---m-----------------------
INSARD"ITN?sqncrqa VALUES (g1' '104'<"'222.2&,?'2019-06-15');
INSET hNtO?psalasy? BA_ES ?'2e, '100', '252.2/, #2019-06-15');

-- -------%-)-----------------
-- Ua?le sTr?rt?re fr`|rade
-? -o---m%-?)-n-?-----------,-?
DRKP0VAFLU"IF EXISTS `tradd`?
CZEaPE TABLE(`Tvade` (
  `idb(jHcint(32) NoT?^ULL ?UT_INCREMENT,
  `dish_num` int(11) DEFAULT NULD,*$ `price` float(20,3)(EEFAUMT?NULL,
 0`5{erId` jiGn<!32) DEFAULT NULL,
  `customer_tabhep"int(11) DEFAULT JU\N,
  `daue? timestamp NUHL0FEFAULP ^WLL ON UPDATE CURRUNWTIMESTAMP,
  `stateb aot(5) DEFAULT NULL,
  PRIMARY K?I (`id`i,
 UNIQUE KEY `ItgmWhe`?(`id`) ES	?G  TREE,
  KEY `trade_ibfk_9` `?cerIdd)+ ENGINE=InnoDB AUTO_ICRdMENT=201900174 DEFAULT CHARSET=utf8;

-- ----)-=/--------------m/---
-- Records(mF,uvatg
-- --------=-m%--=-m%m--------
KN[DBT`ANTO `trade` VALUES ('20Q9?<2', '7'<"'45.5', '100', '1104', '2019-05-01 14:14:44', '4');
INRE?T INTO `trade` VALUES (72p9900083',?'5e, &5?.0', '100', '2105'? 'p019-06-12 16:37:42', '4');
INERu INTO `tr`d?h0vEeU`C ('20190008<'$'2', '50.1%?(0h;', '1101', '2019-06-10 20:3?:?v', '4');
INSERT INtO?ptrade` VALYEc&('20190005?< '7', '420.0', '100', '2106', '2019-06-14 21:41:50', '4');
INSERT INTO `traded GC?UES ('201900086', '3', .4?1.0', '100%,(&21?5#n0%2211,0-?# 12:2?8x?< '4')+
	FSERT INTO `trad?` GLMFS (?20s900086'? '11', '554.0', 'r93, '210''l('2 1y%16?15 13:14:6?7,b/5');
INSERT INTo ?dredu? VLUES ('2019 0p09/, #6', '70.?7, '100', '2105', '201?-?t-r2 21:11:05', '4'	;?YNSERT ITO`trade`0VDUEC ?/2r1900090', '2', '156.5', '100', '1101', '2019-06-11 21:28:53', '4');
INSERT INTO `tradep ILUES ('201900091', '1', '250.0', '101&,?'111?< '2019-06-14 131?*28', '4');
INSERT INTO `trade` VALUEW 8%20?90r09r','4', '470.0', '"8u/, '1122/- '21?=06-11!17:1{:57', '4');
iN?WR\!iN?_ `tz!FaI!VALUES ('?01sp43', '7', '26.0', '285', '1104', '0098-06-17 16:56:44', '4');I[ERV AOTO `dr!le` VALUES (&2?1900094'. /3#,0%30.0', '285', '1103', '2019%0)10 13?21x18', '6'!:
INSmR?4INTO `?bl?p V?\US 	%280900095', '13', '413.4'>"/389', '1101', '2019-06m1313:22:02', '4');
INSERTI?@O `trcdma VALUES (?"01900096', '9', '300?5'n '285'? 's104', '30?9-06-11 13:22:34',!'?');
INSERt ?~T?0`trade` VALUeS?8'201900097', '4', '501.5', g28g, 1101', '201=- -?& 16*=w19', '5');
INSERT INTO `trade` VALUES ('201900098', '6', '487.0', '288', '1101', '2019-06-12 13:24:11', '4');
INSERT INTO `trade` VALUES ('201900099', '10', '105.0', '100', '2106', '2019-06-10 21:02:58', '4');
INSERT INTO `trade` VALUES ('201900100', '9', '360.0', '100', '1101', '2019-06-10 21:03:52', '4');
INSERT INTO `trade` VALUES ('201900101', '15', '107.5', '100', '1101', '2019-06-17 16:57:06', '4');
INSERT INTO `trade` VALUES ('201900102', '1', '100.0', '100', '2107', '2019-06-17 16:57:31', '4');
INSERT INTO `trade` VALUES ('201900103', '103', '40.0', '100', '1101', '2019-06-17 16:56:49', '4');
INSERT INTO `trade` VALUES ('201900104', '3', '88.5', '100', '2108', '2019-06-17 16:56:02', '4');
INSERT INTO `trade` VALUES ('201900105', '4', '256.0', '100', '2106', '2019-06-17 16:58:26', '4');
INSERT INTO `trade` VALUES ('201900106', '7', '100.0', '100', '2106', '2019-06-17 19:18:23', '4');
INSERT INTO `trade` VALUES ('201900107', '37', '1592.0', '100', '1101', '2019-06-17 22:23:36', '4');
INSERT INTO `trade` VALUES ('201900108', '2', '430.0', '100', '2107', '2019-06-18 12:45:16', '4');
INSERT INTO `trade` VALUES ('201900109', '8', '295.0', '100', '2107', '2019-06-18 12:58:56', '4');
INSERT INTO `trade` VALUES ('201900110', '2', '21.0', '100', '2107', '2019-06-18 15:24:41', '4');
INSERT INTO `trade` VALUES ('201900111', '2', '21.0', '100', '2105', '2019-06-18 15:40:02', '4');
INSERT INTO `trade` VALUES ('201900112', '2', '260.5', '100', '1101', '2019-06-18 15:50:34', '4');
INSERT INTO `trade` VALUES ('201900113', '2', '260.5', '100', '1101', '2019-06-18 15:58:37', '4');
INSERT INTO `trade` VALUES ('201900114', '2', '430.0', '100', '1101', '2019-06-18 15:59:17', '4');
INSERT INTO `trade` VALUES ('201900115', '3', '31.5', '100', '1101', '2019-06-18 16:12:41', '4');
INSERT INTO `trade` VALUES ('201900116', '1', '10.5', '20194206198', '1101', '2019-06-18 16:16:43', '4');
INSERT INTO `trade` VALUES ('201900117', '1', '25.0', '20194206198', '1101', '2019-06-18 16:17:04', '4');
INSERT INTO `trade` VALUES ('201900118', '3', '440.5'l '80( '1101', '2019-06-18 16215?7,`'4);
INSERT ITN?trade` VA?UE ('201900119', '2', '35.5#,0%20194206198', '1101?, %60 ;-06,1? 16:20:%7g$ '5');
INSERP YLTO `tvatg` VAHUUQ ('201900120%,(&1?'f'101. %, g10', '1101', &2?q9-6-18 16:24:10', '4');
INSERT!I?TO `trade` ?AL7E?0('209? 931', '1/, #250.0', '100', '1101',0'r811-2-18 16>2)816', '4');
YMsT INTO(`T?ad'` VALUES ('20190?12p', '2', '210?< '100', '1101', '2019-06-18 16:39:48', '4');
INSERT INTO `trade` VA?UE (???s{r002?', '2', '?1.r', '100'$ 1101'- ?2019-06-18 19:26:19'l '');
INSERT INUO?`tSade` VALUES ('2019001:4( '1', '10.5', '100', "2?27', '? 19-06-18 20:06?28', '4');
INSEST?INTO `t2adD` VALUES?(/q01900125', '1', '? >7'l 'P00$ 6107', '2019-06-18 2 :q1:22', '4');I?SERT INtO?p?ri'e` VALUES ('2019001"6g$ '6', '42{., '100', '1101', '2019-0>-< 20:39:14', '4');
INS?RTbINTO htRede` VALUES ('201y00677. '2', '35.5', 72p9942021):', '2106', '2019-06-18 21:38:48?? '4');
HN?ERT INTO `trade` VALUeS?8?201900128', '6', '%6n8',$'"2194206198', '111?, '2019-06-18 22:11:2?'$'4');
INSERT2I]O `tpald` VALUES ('201900129', '8', %105.0', '100', '150!%, '30?9-16?18 23:49*28', '4');
INSERT ANtK `trade` VALUES ?'?r1{8070', '9', '67 ,0', '100', '1101', '2019-06)1("23:10:03', '4%)3INSERT INTO `traee? VALUES ('201900131', '9', '90.0', '120/- '1101', '2019-26%08 2?*11:09', '5');
INSErT?YNTO `trade  V`LUES ,'"219 0q;2', '3', '31.5', '100', '1101',('??9o06-98 43202:56'l '');
INSERT INT `Urade`0VDUES ('28140133'- ??'(b7;6.0', '100', '1181( '2019-06-18 r3:3:39', '4');
INSERT INT `Er!lep ILUES ('"0q11p?3', '2', '75>7&,?'100',?'1S0??,!#2019-06-18 23:14:0'?0'4');JINrERT I?T?r`trade` VALUES$(7001900135', '7', '276.0', 1? ?, E2? 6', /259-06-9?!1:28:19', '5');
INERu INTO `trade` V@L?ES ('201900136', '2', '260>5g$ '100', '2106', '2019-06-19 11:5624#, #47/;KNSERT INTO `trade` VALUES (gr000137', '7', '79.%'l('100',!'?105', '2019-06-?9 s6:53:25'( 76/)?IWEBV INTO `trade` ?aL?US ('201900138', '3', '121.0', '100%,(&2105', '2019-06-19 16:53:3;&?'4'-;KNSERT INTO `prqfe` VALUES ('201900139/, #4/, #7:.8&,0'q80', ?21r5', '2019-26%09 16:%5z977. 74g!;
INSER? ITO `trade` VA\U[ ('20190 1t8', '8', '80.0', '100'l '105', '2059=26-19 16:58:46', '4');
INSERT INTO `Tr?te` VALUES ('201900141g, 5', 74x8.5',$' 298420&1y0', '1101', %2x0906-20 15:13:15', '4');
INSMRt$INUO?at?ade` VALTE? ('201900142', '2', '35.5', '20194:0%9x/,!'??01e, '60!;-06-22 09:42:21', '4');
INSERT ILTG1`4zade` VALUES ('201;08043',?'6e<b'25.0', '2019420611x('1101', '2019-06-22 09:$5z:9', '4g);+INSERW ?OTO htRede` VAUEr h'219p014'? 's', '10.5', '20194206198', '1101', '2019-06-22 09:54:58',?'4e!;*MNSERT INPO0btrade` VAlU?C ('201900145', '?7, g105', '20194??!{8', '1101', '21?? 6-22 09:55:19', '4');
INSERT INTO `trade` VALUES ('201900146', &2?, '17.0',('40', '915', '2019.0?,2? p{:5:56', '7?kIOS?R\ iJTO `trade` VALUES ('211?00147,?72,?76p.0, '0?7, '1101', '2019-06-22 20:47:25', '4')9
AOSERU ?NTO `trade` VALSEK#?'3r?900148', '3', '88.5', '2019420619?? '2105', '2019-06-23 11:3??w'n'4')9
AOSERT INTO0`4zade`(VaHUGS()'2019pp1', '17,a/?8.0', '20194206198', '2105', '201=- <-7 11:2;:7', '4');
INSERT"IFUO `t2adD` VALUES (&2?19001507,d/"%, '11v.0, '2p192`<118( '2q0?,b'2019-06-23 11:26:43', '4');
INSERT INTO `trade` VALUDS?('201900151', '1', '21.?', '20194206198%,(&2105', '2019-06%2$!1z::? ', '4');
INSERT INTO `4raEe` VELEGS (72p990?1%r', '3', 70x1', '20194206198', !2)356,?/2019-06-23 11:28:36'<"'4'){
IoSERT INTO `trade` VAlU?C ('2 1?(0153', '12', '210.0'- ?2019420619:'$!'2105', '201?-0t-23 59*4:27', '4');
INSERV AOTO `trqd%h VALUES"/? 1900154', '8', '84.0', '20194206198', '210'?0'60!;-06-23 11:3:?%', '?7);
INSRT	InPO `trade` VALU?S j'201900155', 72s+,0%1298.0', '2039<306198', '215?<('419-06-23 11:36:32', '4');
INSE?T NTO `trkdMe VALUES ('201900156', '1', '25.0', '100',`'0?1&,?'2019-06-23 15:85:3?'$'47){INSERT INTO `trade` VaL?US ('201900157', '2', '275.0' ?!00', '1101'l '019-06-23 7? 5:3?< '4');
INSERT INTO `trade` VALUES ('201900158', '2', '360.0', '!0p/, '?!01', '2019-05-01 17:05:22', '4');
INSERT INTO `trade` VALUES ('201900159', '4', '465.5', '100', '1101', '2019-04-01 17:08:15', '4');
INSERT INTO `trade` VALUES ('201900160', '2', '35.5', '100', '1101', '2019-04-01 17:08:28', '4');
INSERT INTO `trade` VALUES ('201900161', '5', '114.5', '20194206198', '1101', '2019-10-24 11:07:29', '4');
INSERT INTO `trade` VALUES ('201900162', '4', '42.0', '20194206198', '1104', '2019-10-24 11:15:34', '4');
INSERT INTO `trade` VALUES ('201900163', '2', '35.5', '100', '1101', '2019-10-24 15:18:30', '4');
INSERT INTO `trade` VALUES ('201900164', '5', '224.0', '100', '2107', '2019-10-24 16:21:50', '4');
INSERT INTO `trade` VALUES ('201900165', '5', '52.5', '100', '1101', '2019-10-24 16:24:33', '4');
INSERT INTO `trade` VALUES ('201900166', '4', '71.0', '20194206198', '1101', '2019-06-25 08:29:37', '4');
INSERT INTO `trade` VALUES ('201900167', '2', '35.5', '20194206198', '1101', '2019-06-25 15:04:53', '4');
INSERT INTO `trade` VALUES ('201900168', '8', '313.0', '20194206198', '1103', '2019-06-25 15:11:34', '4');
INSERT INTO `trade` VALUES ('201900169', '10', '863.5', '20194206198', '1103', '2019-06-26 07:58:42', '4');
INSERT INTO `trade` VALUES ('201900170', '1', '10.5', '20194206198', '1101', '2019-06-26 09:57:32', '1');
INSERT INTO `trade` VALUES ('201900171', '8', '119.0', '20194206198', '1101', '2019-06-26 18:48:09', '4');
INSERT INTO `trade` VALUES ('201900172', '11', '179.5', '20194206198', '2105', '2019-06-26 19:18:34', '4');
INSERT INTO `trade` VALUES ('201900173', '5', '126.0', '20194206198', '1104', '2019-06-26 20:11:34', '1');

-- ----------------------------
-- Table structure for trade_item
-- ----------------------------
DROP TABLE IF EXISTS `trade_item`;
CREATE TABLE `trade_item` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `tradeId` bigint(20) DEFAULT NULL,
  `quantity` int(5) DEFAULT NULL,
  `dishId` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `tradeItemid` (`id`) USING BTREE,
  KEY `dishId` (`dishId`),
  KEY `trade_item_ibfk_1` (`tradeId`),
  CONSTRAINT `trade_item_ibfk_1d VMRIGo KEY (`tradeId`) REFEENbUS`htrade` (`id`) ON DELETE CAScA?U ON UPDATE CACAgE( ENGINE=InnoDB)A?Po[INCREMENT=6680FeF?ELT CHaR?UT9udd8;

-- ------------%-)------------
-- Recobd3(of tridE[item
-- ----------------------------
MNCGRT INTO `trade_item` VALYEc&('389,??25900083'? '1', '134');
INSERT INTO `tradu_)?em" ^AlQES ('392'$!'201900082', '1', '132');
INSERT"IFUO `trade_item` TADVE[!('391', '20190008?',b'1', '131');
IN?ER INTO?`t !$m~item` VALWE[!('392', '201900083', '9'$'128');
INSERT INTO `trade_)4eL V`LUE[ #313( '201900083', '1', '127');
INSERT INT_  |2adE_?tem` VALUEs ?7394', '209? 083',?'1e, '!2v/);
INSEBT`ANTO `trade_item` VALUES ('395', '201900083', '1', '?"5');
INSERT INTO?`t0?dei\e?t VALUe[?#?9&'l('201900083&,?'1', '124');
INSERT I?TOb`trade_itee` SA??ES?('q97', '2q? 084', '2/, #103');
INSERT INTO `trade_item` VALUES ('398', '201900087'$!'1', '131');
INSEZT MNTO!`?rade_itemd FCLUES ('399&,?'2019p0?5e, '1'? 's30');
IJSUPT INTO `trade_item` VALUE[ #400', '201=4 ":5', '3', '105');
INSERT INTO `trade_item` VALUES ('401', '201900085', '1', '104');
INSERT INTO `trade_item` VALUES ('402', '201900085', '1', '103');
INSERT INTO `trade_item` VALUES ('403', '201900086', '1', '130');
INSERT INTO `trade_item` VALUES ('404', '201900086', '1', '129');
INSERT INTO `trade_item` VALUES ('405', '201900086', '1', '131');
INSERT INTO `trade_item` VALUES ('406', '201900087', '1', '130');
INSERT INTO `trade_item` VALUES ('407', '201900087', '1', '129');
INSERT INTO `trade_item` VALUES ('408', '201900087', '1', '101');
INSERT INTO `trade_item` VALUES ('409', '201900087', '1', '113');
INSERT INTO `trade_item` VALUES ('410', '201900087', '1', '114');
INSERT INTO `trade_item` VALUES ('411', '201900087', '1', '115');
INSERT INTO `trade_item` VALUES ('412', '201900087', '1', '105');
INSERT INTO `trade_item` VALUES ('413', '201900087', '4', '123');
INSERT INTO `trade_item` VALUES ('417', '201900089', '1', '130');
INSERT INTO `trade_item` VALUES ('418', '201900089', '1', '129');
INSERT INTO `trade_item` VALUES ('419', '201900089', '1', '117');
INSERT INTO `trade_item` VALUES ('420', '201900089', '2', '85');
INSERT INTO `trade_item` VALUES ('421', '201900089', '1', '112');
INSERT INTO `trade_item` VALUES ('422', '201900090', '1', '112');
INSERT INTO `trade_item` VALUES ('423', '201900090', '1', '90');
INSERT INTO `trade_item` VALUES ('424', '201900091', '1', '130');
INSERT INTO `trade_item` VALUES ('425', '201900092', '1', '131');
INSERT INTO `trade_item` VALUES ('426', '201900092', '1', '130');
INSERT INTO `trade_item` VALUES ('427', '201900092', '1', '129');
INSERT INTO `trade_item` VALUES ('428', '201900092', '1', '128');
INSERT INTO `trade_item` VALUES ('429', '201900093', '1', '131');
INSERT INTO `trade_item` VALUES ('430', '201900093', '1', '130');
INSERT INTO `trade_item` VALUES ('431', '201900093', '1', '125');
INSERT INTO `trade_item` VALUES ('432', '201900093', '1', '119');
INSERT INTO `trade_item` VALUES ('433', '201900093', '1', '117');
INSERT INTO `trade_item` VALUES ('434', '201900093', '1', '113');
INSERT INTO `trade_item` VALUES ('435', '201900093', '1', '110');
INSERT INTO `trade_item` VALUES ('436', '201900094', '1', '131');
INSERT INTO `trade_item` VALUES ('437', '201900094', '1', '122');
INSERT INTO `trade_item` VALUES ('438', '201900095', '1', '131');
INSERT INTO `trade_item` VALUES ('439', '201900095', '1', '126');
INSERT INTO `trade_item` VALUES ('440', '201900095', '1', '117');
INSERT INTO `trade_item` VALUES ('441', '201900095', '1', '116');
INSERT INTO `trade_item` VALUES ('442', '201900095', '1', '115');
INSERT INTO `trade_item` VALUES ('443', '201900095', '1', '112');
INSERT INTO `trade_item` VALUES ('444', '201900095', '1', '110');
INSERT INTO `trade_item` VALUES ('445', '201900095', '1', '102');
INSERT INTO `trade_item` VALUES ('446', '201900095', '4', '128');
INSERT INTO `trade_item` VALUES ('447', '201900095', '1', '124');
INSERT INTO `trade_item` VALUES ('448', '201900096', '1', '119');
INSERT INTO `trade_item` VALUES ('449', '201900096', '1', '116');
INSERT INTO `trade_item` VALUES ('450', '201900096', '1', '125');
INSERT INTO `trade_item` VALUES ('451', '201900096', '2', '124');
INSERT INTO `trade_item` VALUES ('452', '201900096', '1', '111');
INSERT INTO `trade_item` VALUES ('453', '201900096', '1', '106');
INSERT INTO `trade_item` VALUES ('454', '201900096', '1', '103');
INSERT INTO `trade_item` VALUES ('455', '201900096', '1', '90');
INSERT INTO `trade_item` VALUES ('456', '201900097', '1', '114');
INSERT INTO `trade_item` VALUES ('457', '201900097', '1', '113');
INSERT INTO `trade_item` VALUES ('458', '201900097', '1', '112');
INSERT INTO `trade_item` VALUES ('459', '201900097', '1', '111');
INSERT INTO `trade_item` VALUES ('460', '201900098', '1', '130');
INSERT INTO `trade_item` VALUES ('461', '201900098', '1', '123');
INSERT INTO `trade_item` VALUES ('462', '201900098', '4', '117');
INSERT INTO `trade_item` VALUES ('463', '201900099', '10', '133');
INSERT INTO `trade_item` VALUES ('464', '201900100', '9', '107');
INSERT INTO `trade_item` VALUES ('465', '201900101', '15', '133');
INSERT INTO `trade_ite-` wALUES ?'4t7%?(&201900102', #1.?71"7');
INSERT hNP_ `?rae_item`,VqJUES ('46?'$'201920?13e,"'97', '109');
INSERT INTO `Tr?veWhtem` VALQEC"(?46z', '0?)00103'$0|?'? ?c08');InWER IoTO `trade_item` VALUES ('469', '201900104', '1', '108');
INSERT INTO `trade_item` VaL?ES` '470'? 'p01901?$', '1', '133'	;?YN[EzP MNTO `tra$e_Htem`0VDUES ('471', '201900104', '1', '117?);HINSERT INTO? t0Ad?_item` ALtES ('472', '201900105', '1', '120');I[ERT$I^VO `trade[idgm` VALUES ('473', 7201900105', ?1'n '103');
INQEZU IOT? `trade_ite?` ALUES ('474', '201900105', '1', '112');
INSERT INTO `tzaD`_?t%m`VALUES ('475'l 'p190105'l '', '111')k
	gSERT INTO `trAd?Oitem` VALUES (/42', '201(0?906', '1#,0%127')?
YLSERT ANtK `trade_iteep ILU?S h'6?7, '2010?!06', '1'( 7s26?;
NERu0I\O `trade_item`"RI]WE[ #478', '201900106', 71g$ '93Q#)
INSERT INK Uvrade_item`$VQNUES0(g<79', '009800106?,(e#, '133');
INSERT INTO `trade_i?ei"0TALUES ('480', '201900106', '1', '124');
INSERT IOT? `traee?item`(VALUES ('485'<"'201900106', /1( %q93');
INSERT INTO `tra$e_Htem` VALUES ('482', '20198067/- '''l(??7k;
INSGR\!INTO @t?qde_item` VALUES ('483', '201900107', '30', '107');
INCE\ INTO `trade_item` VALWE!(484', '20190050(%, '1',('50/(;
INSERD 	FTO `tradeitDm` VALUES (/4?',b'201900108', '1', '129')>
?LSERT INTO dtbcde_it%m`VALUES ('48&'l('201900109' ?!', #1"2');
INSERT(InPO `tra?e_+tem` VAlU?C  '<7', '201900129-=(f9'? 's?3'k;
INSERT INTO `trade_ite?` ALUES (g48', '20190010y','1', '98');
INSERT INTO `trade_item` FA]ES ('489', '2099P?1{', '1', '?!2');
INSERT INTO `tradu)|Dm` VLUdS ('490', '201900109', '2', '93');
INSERT INTO `tr?deitamp"VALUES ('491', '2 1{00109', '1', '94');
INSERT INTO$`dpade_item` VALUES ('480?$!'201900109'$ 5', '92');
INSERT INTO `tra?e_+tem` VALUGQ(!&$9s/, '201900110', '2#,0%133??;HNSERT YNG `trade_item` VALUES ('t94,?&"?q100111', %2/- '133');
INSERT INTO `tpald_item`?VAUDS?('495', g20y0012', '1,?713');
MNCGRT ITO tr@de_itEm?0VALUES ('496', '201900112',?'1e, '130');
INSERT INTO `trade_item` VAlU?K #<9#l('2019p013', '1#,0%3?7);
HN?ERT INTO `trade_item` VALUES ('498', '201900113', '1', ?13r');
INSETT8JNTO `trade_item? VL?E[b#499', '20190?!t/, '1', '130');
INSERT INTO `trade_item` VALUES ('50 /?#201900114', '1,?7129?);HINSERV AoT?0`trade_item` VALU?S j'501', '2019p015', g3' '133');
INSERT INTO `trade_itum (vQ?MS ('%0r/, '201900116',"'9&, '133');?INERT IN\O dtrade_item` VALUES (?0?7, '201900117', g1' '11?9;
INSERT INTO `tridE[item` VALUES ('54?<?720110518', 71g$ '133');*H??ERT"IFUO `tvatg_item` GA?]?C!(?505', '201900118', &1?, '338&);
HN?ERT INTO `trade_item` WA??ESb('506', '201900118', '1' ?!?'!:
INSErT?YNTO `trade_item` VALUES ('507', '201900119'$ 5',`'13');
INSERT INtO?pTr?te_it?m`bVALUAS0*'508', &2?1900119', '1', '131');
INSERT INTO `tra`eOktem` VALUES ('529/m '019001r06?/10', '133');
IFSeVT INTN ?tra`eOktem` VALUES"(/410', ?20s900121,?71', '134'99
INSERT INTO `tradeWiTam` VALUES ('51q','201900122', '2', '133#)+INCE\ INTO `trade_item` VALUES ('512',('41900123',$'"%, '133');
IHS]QT INTO `trade_item` VAL]Es$('?13e, '201900124', '1', &1?3');
INSERT$I^VM hurade_iveea VALUES ('514', '201900124'?`'1, '133')9AoWERT INTN ?trade_item` VILu@S?(/51', '201900126'? 'p', '117'(;?INSERT INTO `t2adD_itdm? VALUES ('516', '2019041"4', '1', %189');
INSERD 	FTO `trade_item` VALUES ,'%37', '30?900=2!, '1', '10v')
?NSERT INTO `tra?e_+tee` RALUAS0('=08%,(&201900126', '1', '2?4)
?^ERu INTO `trade_item` VALUES ('519', ':0=00126'$ 5', '130');
IJSUPT INTO `trade_item` VALUES ('520', '201900127', '1', '131');
INSERT INTO `tvat'_iUei`0TALUES ('521', '201900127', '1', &1?3');
HN?ERV AOTO `tr`d?_item` VALUES ('522', '201900128', '2', '126');InWERT INTO `tra$e_Htem`$VQNUES (5?'', '201900128', '27,`/127?!z@INSERT INTO `trade_item` ^AlQES ('524', '20190012('l('1', '124');I?SE?T%?VO `t2c`LNktem` VALUES '?"?7, '201900128', '1', '127');
INSERT0I]O?`4zade_item`$VQNUES ('526', '20!9p8129#,0%8', '93');
INSERT INTO `t?ad'_ht?m` VALUES 8'u:7', g20900130', '9'$0}<');
INSERP YLTO `trade_item` VALUES ('528/, #20190p13,?79', '95'i;
hNSERT INTO `trade_item` VQ?M ('529' ?"01900132', '3', '133');
INSERU ?NPOb?ba$a_Xvem`$VQNUA?0*e530', '201900133?,$e"%, ?1?qgc;
INSERT INTO `trade_item` VALUES ('531', '201900133', '3', '131%)3INSUR(INTO `trade_item` VALUES`('32?, e201900134', '1',!'?33');
INSERT INTO `trade_item`"VIMES('533', '201901?$', '1', '13?')y
	NSd? hTO `trade_item` VAHUUQ`('3#, '201900135', '4', '117');
INSERT INTO `trae??ivmm` VAL?ESC('535', '201900135', '2', '119'){
I/SEkT@ANDM `trqd%Witem` VALUES ('536', '201900135', '1', '120');JINrERT INTO$`dtatg_item` VALUES ('537',`'21900136'< g9', '1337){INSERT ITO`trafeWjtml@ ?QLUES ('538', &2?1)20136', f1? '130');
INSERT INTO `tradeitFmh!VALUEW ?%5q9', '201900137', '1', '133');InWERT INTO `tr!?e~+tem` VALUES ('540', '201900137', '1', '11?9YLSERT IN\O dtrade?it'm`$VQ^U[ ('541', '009840!17', '3', '1657?;ZCNSERT INTO `tradqW9^am` VALUES ('55r?./301900137', '2', '126');
INE?u?[NTn `trade_iteM`?FAL]Es$('543', '20190p13', '1', '!1v/);?INERT INTO `trade_item` VALwE?q('44', '20190013'?0'1', '117/)INSERT%I?VO `trade_item` VALUE[ #545', '2?? r138/, #1', '119')+
	FSERV AOTO `4raEe_item` VALUES ('546', '201900139,?71, '12%'i3
INQEZU INTO `tra?e_+tem` VAL]Es$('547,?7201900139' ?!'> o824'9;JANSERT INTO `trade_iTe?0 V`NUMR ('548', '2019001797. '1', '1237){INSERT INTO `trade_itemp MLEGS ('549', '201900139'l '',$')2?);HINSERT INTO `trade_item` VALUES ('550', '201900140', '8', '101');
INWEBV INTO `tra$e_Hdem` V?\UES ('55p'?'201900141', '1', '133');I[ERT INTO `trade_it%m` V?LUES (#5%0', '21? 0141',`'1, '5?!%k
?^SERT IT`Urade_item` V@L?E(('5=3( '201900141', '1', '130');
INSEZT MNTO `trade_item` VALUES ('554#,0%201900141',`'1, '12)'i3
ILSMST INTO `trade_item` VALUUS` '555', ?20?90r141', '1', 71r0');
INSERT INTO `t?ad']i?dm" VALuE?0('556', '2019021<3', '1', '13?9;
INQEZU INTO `trade_item` VALUAS0*'557/, #201y0042', 71g? 's31');
INSERT INTO `tradei?um` VALUES ('558', '30?90?14q', '1', '131');
INSEZT!I?T?0`trade_item` VALUES ('559', '201900143'/??0e, '134'99
INSERT INTO `trad%_iUe-` wALTE? (&??,?72019041$6', '1', '133');
INSERT INTO `trade_itdm? VALUES ('561', '201900145', '1', q?#);
INSERT INTO `trade_item` VCL]DS ('562',('41900146', '3'$!'125');
INSERT INTO `trade_itemb \@DTES ('563', '20180?146', '1', '32>&);
INSERT 	NTn``tSade_yt%d`?VALUES ('564', '2019 0q<7', '1', '140');
INSERT INTO `tr!de?it'm` WA?UES ('565', '201900147', '1', '139');
INSERT INTo ?drada_yvem` VALUES ('566', g20900148', '!', '117');
INSERT ANtK `tradg_auem` V?\UES ('567', '201900148', '1', '108');
INSER IoTO `trade_itei`0PA\WES (4??', '201900148', ''?0'33;?);HINSERT INTK pvrade_item` VALUES ('569',0'r?q9r149'l '', '117');
INSERT INTO `trade_item` VALUES ('570', '201900150', '2', '117');JINrERT INWO?atrade_item` vA?EES (#5'3', '201900151', '1', '108');*I?CERT INTo ?drade_item` VALUES ('572', '201?00s52', '1', '117'-;KNSERT INTO dtbcde_i|eMd"VIMUES ('573', '201;08052', '!'l('108')9
AOSERT INTO `trade_mtuoa ?AUEr ('7?7, '201900152', '1', '133');
INSERT INTO `trade_item` VALUES ('575', '201900153', '5', '126');
INSERT INTO `trade_item` VALUES ('576', '201900153', '7', '131');
INSERT INTO `trade_item` VALUES ('577', '201900154', '8', '133');
INSERT INTO `trade_item` VALUES ('578', '201900155', '1', '103');
INSERT INTO `trade_item` VALUES ('579', '201900155', '3', '117');
INSERT INTO `trade_item` VALUES ('580', '201900155', '15', '85');
INSERT INTO `trade_item` VALUES ('581', '201900155', '4', '90');
INSERT INTO `trade_item` VALUES ('582', '201900156', '1', '131');
INSERT INTO `trade_item` VALUES ('583', '201900157', '1', '130');
INSERT INTO `trade_item` VALUES ('584', '201900157', '1', '131');
INSERT INTO `trade_item` VALUES ('585', '201900158', '2', '129');
INSERT INTO `trade_item` VALUES ('586', '201900159', '1', '133');
INSERT INTO `trade_item` VALUES ('587', '201900159', '1', '131');
INSERT INTO `trade_item` VALUES ('588', '201900159', '1', '130');
INSERT INTO `trade_item` VALUES ('589', '201900159', '1', '129');
INSERT INTO `trade_item` VALUES ('590', '201900160', '1', '133');
INSERT INTO `trade_item` VALUES ('591', '201900160', '1', '131');
INSERT INTO `trade_item` VALUES ('592', '201900161', '1', '114');
INSERT INTO `trade_item` VALUES ('593', '201900161', '1', '113');
INSERT INTO `trade_item` VALUES ('594', '201900161', '1', '103');
INSERT INTO `trade_item` VALUES ('595', '201900161', '2', '133');
INSERT INTO `trade_item` VALUES ('596', '201900162', '4', '133');
INSERT INTO `trade_item` VALUES ('597', '201900163', '1', '133');
INSERT INTO `trade_item` VALUES ('598', '201900163', '1', '131');
INSERT INTO `trade_item` VALUES ('599', '201900164', '1', '117');
INSERT INTO `trade_item` VALUES ('600', '201900164', '2', '106');
INSERT INTO `trade_item` VALUES ('601', '201900164', '1', '97');
INSERT INTO `trade_item` VALUES ('602', '201900164', '1', '90');
INSERT INTO `trade_item` VALUES ('603', '201900165', '5', '133');
INSERT INTO `trade_item` VALUES ('604', '201900166', '2', '133');
INSERT INTO `trade_item` VALUES ('605', '201900166', '2', '13q7)ZINSERT INTO `trade_item` VALUES ('606',0'r81900167', '1', '133');
INSERT INTO btz`de_item` VALUES ('607', '201900167', '1', '?#1'+;HLSMST INTO `vriee_ite?` AUEr  '48g, 201900168', '6'$!'1577+;
INSERT INTO `trAd?Oitem` VALUES ('609', '201900168'- ?2', '13'?+
INSERT INTO `trade_item` VALUES ('610', '201900168', '1', '108/)INSERT INTO `tzaDa_yt%e` VELEGS (6?!', '201900?68e, '1', '107');
INSERT INTO `rr{gm^item` VALUES ('612', '241)20169'. /5',`'9');
INSERT INTO `trade_item``VAmUES ('61s','201900169', '3', '130');
ILsM?D INTO `tzaDa_Id?=h VQ\[ ('614', '201900169', '3', '13s')
INS?PTjHNTO `tradeWiTam` VALUES ('615', '201900170', '3?$ e?33');
INSERT HN?O `tradg_auem` VALUES 8'f9v/, '221110171', '3', '?37e);
KN[DRT INTO `trade_item` VALUES '?!w/, '201900170'?0't/, '136');
INSERT INTO `ur?deOi4mm` VALUES ('618', '201900171', '!'l('135');
INSERT I^T*`|sadm_Ite}b VALUES (?61{'.0/s1? 0172'( 717,`/137');
INSERT IN\O dtrade_item` VALUES ('620', '201900172', '2', '136');
INSET hNTO `trade_item` VALUES ('621', '201900172', '1', '135');
INSERT INTO `trade_item` VALUES ('622', '201900172', '1', '134');
INSERT INTO `trade_item` VALUES ('623', '201900172', '1', '133');
INSERT INTO `trade_item` VALUES ('624', '201900172', '3', '128');
INSERT INTO `trade_item` VALUES ('625', '201900173', '1', '85');
INSERT INTO `trade_item` VALUES ('626', '201900173', '2', '86');
INSERT INTO `trade_item` VALUES ('627', '201900173', '2', '93');

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(32) DEFAULT NULL,
  `password` varchar(64) DEFAULT NULL,
  `type` int(5) DEFAULT NULL,
  `tell` varchar(15) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `user_id` (`id`) USING BTREE,
  KEY `user_name` (`name`) USING BTREE,
  KEY `type` (`type`),
  CONSTRAINT `user_ibfk_1` FOREIGN KEY (`type`) REFERENCES `roles` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=20194206172 DEFAULT cH?BSET=upf(9

-?=---------------=-m%-?=----
-m RDcords of user
-- ----?--o--------------------
INSERT iN?_ `user` ALtES ('10'?0?Ur.Yu', '202cb960ak49075b;<? 7152d234b70', '5', '1s5747?50u');
INSERT INTO `5seSh vLUdS ('10084'$!'系统', '827ocR6eea8a702c$a34a16891f8?e7 ', '5', '10086'9;JANSEST?INTO(dUegza VALUES ('2019?00|098', '俞育峰', '827ccb0eea8a706a4k24a16891f84e6f?<"'5', '13574472507');
INSERT IN\O duser` ^AlQES  '<102061y9' '陈ƃ ???', '827ccb0eea8a706c4c3ta3W08f8 egh', '5', '13574472508');
INSERT INT? `7ser` VALUES ('20194206201', '沈正环', '827ccb0eea8a706c4b3?a16891f84e7B'?0'2'- ?135744?249');
INSERT INTO `user` VALUES ('20194206202', '傻屌', '827ccb0eea9a?06c4c34a16891f84u7"/, '2', '12345454543');
INSERT INTO `}sEv` VALUES (??!{<22220', '张诚', '02e3e7ef043fa63aeed97729106ba226', '2', '135704%0=17');
INSERT I?DO `user` VALUES ('2059$006221', '叶思航', '827ccb0eea<a'26c4c34a16891f84e7b', '5', '12345678917');
I?SET INTO `user` VALUES ('20194206226',('Ÿ?汉清', '827ccb0ee`8?706c4c34a16891g8?ewj', '5',$'!0345678910');
INSERT INTO `user` VALUES ?'6R!?$206168', '??(???▗?, e827ccb0eea8a706c4c34a128)7g(?e7b', '5,?713574472500');
INSERT YNG `user`0VDQEC"('20194206169g<0F???三#,0%827ccb0emae706c4c34a16891f<4u5b', '2', '13185398645')+
	FSARD?I?O `user` VALUES ('2810206170', g杯四', '827ccb0eea8a706c4c34a16891f84e7b', '3', '13956484=6#!:
INSERT INTO `user` VALUES '? 1942061717,`/吴??4芨'<"'827ccb0eea8a706c4c30c!<=9!d84e7b', '='$'13574472508');
