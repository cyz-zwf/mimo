SET NAMES UTF8;
DROP DATABASE IF EXISTS mimo;
CREATE DATABASE mimo CHARSET=UTF8;
USE mimo;

CREATE TABLE mimo_login(
    id INT PRIMARY KEY AUTO_INCREMENT,
    uname VARCHAR(50),
    upwd VARCHAR(32)
);

/*特惠房源*/
CREATE TABLE preferential_house(
  pid INT PRIMARY KEY AUTO_INCREMENT,
  pname VARCHAR(32),
  pnum VARCHAR(32)
);

/*特惠房源城市*/
INSERT INTO preferential_house VALUES
(NULL,'广州','2600+房源'),
(NULL,'上海','3000+房源'),
(NULL,'重庆','5000+房源'),
(NULL,'深圳','3300+房源'),
(NULL,'成都','4200+房源'),
(NULL,'长沙','8000+房源'),
(NULL,'北京','2500+房源'),
(NULL,'厦门','1300+房源');

CREATE TABLE house_laptop(
  lid INT PRIMARY KEY AUTO_INCREMENT,
  house_id INT,                    #所属城市
  pic VARCHAR(128),          #图片
  title VARCHAR(128),         #主标题
  subtitle VARCHAR(128),   #副标题
  price DECIMAL(10,2),        #价格
  oldPrices DECIMAL(10,2), #旧价格
  evaluate INT     #评价人数
);

INSERT INTO house_laptop VALUES
(NULL,1,'images/inhome/homeimg/home1.jpg','整套公寓 · 1室1卫1床','邻长隆景区 .广州南站.大夫山.客村.地铁钟村站.落地窗舒适阳台大床房',201,228,465),
(NULL,1,'images/inhome/homeimg/home2.jpg','整套公寓 · 1室1卫2床','【暑期特惠】秋月·昌岗/2号8号双地铁线/广州南站/琶洲会展中心/广医附二医院直达投影温馨三人房',322,358,235),
(NULL,1,'images/inhome/homeimg/home3.jpg','整套酒店式公寓 · 1室1卫1床','【mini/G叁拾贰號】动物园附近,阳光简约时尚吊床一居室',245,278,65),
(NULL,1,'images/inhome/homeimg/home4.jpg','整套公寓 · 2室1卫2床','【宅先生】国风江畔带阳台两房/北京路海珠广场双地铁/天字码头旁珠江夜游/入住即可享受专属手磨咖啡一份',350,389,413),
(NULL,1,'images/inhome/homeimg/home5.jpg','整套公寓 · 1室1卫1床','【朴宿喜度】5号线淘金站清新露台房/建设六酒吧街&花园酒店&广州市第八人民医院&中山大学附属肿瘤医院',256,288,95),
(NULL,1,'images/inhome/homeimg/home6.jpg','整间LOFT · 1室1卫1床','北京路段清新风格公寓',304,338,188),
(NULL,1,'images/inhome/homeimg/home7.jpg','整套公寓 · 1室1卫1床','【童年·印記】尚德大厦+华师地铁站+天娱广场+学府旁',330,388,37),
(NULL,1,'images/inhome/homeimg/home8.jpg','独立房间 · 1室1卫1床','【原inn】江南西吃货天堂|网红餐厅打卡|地铁直达广交会|近北京路|体验老广州的市井烟火气',196,231,119),

(NULL,2,'images/inhome/homeimg/home9.jpg','整套公寓 · 2室1卫2床','近外滩东方明珠/陆家嘴两居室&东昌路地铁站/直达机场火车',486,540,39),
(NULL,2,'images/inhome/homeimg/home10.jpg','整套公寓 · 1室1卫2床','｢小确幸｣新天地地铁步行5分钟,品质亲选浪漫阳光大一居大浴室,投影仪*乳胶床垫*智能马桶',423,498,88),
(NULL,2,'images/inhome/homeimg/home11.jpg','整套公寓 · 2室1卫2床','白日梦镜 黑白现代超大空间投影巨幕私人院落  永康路',398,468,56),
(NULL,2,'images/inhome/homeimg/home12.jpg','整套公寓 · 2室1卫2床','千寻-宽屏百寸投影-近蓝村路地铁站､富都广场､巴黎春天',511,568,13),
(NULL,2,'images/inhome/homeimg/home13.jpg','整套公寓 · 2室1卫2床','潭古晗景-老宅新生故事的开始/建筑师的家/南京西路地铁站/露台花园/毗邻两大商圈超大Loft整租',414,460,78),
(NULL,2,'images/inhome/homeimg/home14.jpg','整套公寓 · 单间1卫1床','【梧桐树下】永康私人公馆ins小套间繁华都市私密后花园毗邻IAPM10号线地铁',270,338,80),
(NULL,2,'images/inhome/homeimg/home15.jpg','整套公寓 · 2室1卫2床','【[ACASA] 静安寺 IAPM 长乐路独门独院 复式洋房Loft 极简工业风',495,550,68),
(NULL,2,'images/inhome/homeimg/home16.jpg','整套公寓 · 1室1卫2床','【原inn】江南西吃货天堂|网红餐厅打卡|地铁直达广交会|近北京路|体验老广州的市井烟火气',294,368,11),

(NULL,3,'images/inhome/homeimg/home17.jpg','整套公寓 · 1室1.5卫1床','解放碑附近临江落地江景房(冉小姐的家A)地铁沿线+洪崖洞､朝天门､长江索道､八一美食街等景点',167,239,14),
(NULL,3,'images/inhome/homeimg/home18.jpg','整套公寓 · 2室1卫2床','朴宿 高空城景两居近解放碑洪崖洞索道旁',140,280,26),
(NULL,3,'images/inhome/homeimg/home19.jpg','整套公寓 · 1室1卫1床','尘市民宿.冬至 ',205,228,79),
(NULL,3,'images/inhome/homeimg/home20.jpg','整套公寓 · 1室1卫2床','米造民宿2807-爱若有光明/双床四人间50平/复古时尚片场/靠近解放碑洪崖洞',189,278,44),
(NULL,3,'images/inhome/homeimg/home21.jpg','整套公寓 · 1室1卫1床','“洁癖房东”【Nancy家】【夏】解放碑洪崖洞朝天门,近地铁,巨幅落地窗赏夜景,弹钢琴',304,338,238),
(NULL,3,'images/inhome/homeimg/home22.jpg','整套公寓 · 2室1卫2床','米造民宿XR2602-就是爱你/解放碑核心区/楼下较场口美食街地铁站/双榻榻米影院空间50平',180,268,52),
(NULL,3,'images/inhome/homeimg/home23.jpg','整套酒店式公寓 · 1室1卫2床','707解放碑步行街中心位置民宿/带家庭影院投影/楼下是好吃街楼和解放碑地铁站',104,139,136),
(NULL,3,'images/inhome/homeimg/home24.jpg','整套酒店式公寓 · 1室1.5卫2床','米造民宿XR-514 蒲公英的约定/解放碑核心区/楼下美食街街/步行洪崖洞跨江索道/较场口地铁站',175,258,85),

(NULL,4,'images/inhome/homeimg/home25.jpg','整套公寓 · 1室1卫1床','【新故 深圳】双地铁口|美食街|巨幕投影|北欧空间|1-3人公寓',195,278,97),
(NULL,4,'images/inhome/homeimg/home26.jpg','整套公寓 · 1室1卫1床','【朋友家·1303】深圳北站高铁站/民治/白石龙地铁站/简约北欧ins温馨一房一厅独立卫浴独立空间~',194,228,17),
(NULL,4,'images/inhome/homeimg/home27.jpg','整套公寓 · 1室1卫1床','【白日梦蓝】loft|美食街|罗湖口岸|巨幕投影|哈曼卡顿音响|小霸王游戏机 ',251,279,17),
(NULL,4,'images/inhome/homeimg/home28.jpg','整套公寓 · 1室1.5卫1床','【Mocha’s House】摩卡公寓深大桃园附近舒适如家的暖心小屋',278,339,44),
(NULL,4,'images/inhome/homeimg/home29.jpg','整套公寓 · 1室1卫1床','【简尚】近华强北 大剧院舒适打大床房',328,358,85),
(NULL,4,'images/inhome/homeimg/home30.jpg','整套公寓 · 1室1卫1床','梦幻1 |福田CBD/会展中心/华强北/皇岗口岸/设计师原创空间,网红打卡圣地,星星灯',169,199,52),
(NULL,4,'images/inhome/homeimg/home31.jpg','整套公寓 · 1室1卫1床','(云意)罗湖阅见·生活美学公寓城景大床房近地王大厦万象城KKMALL大剧院D出口',300,359,136),
(NULL,4,'images/inhome/homeimg/home32.jpg','整套公寓 · 1室1卫1床','｢木夕｣深圳北站/九方购物中心/直达香港福田口岸',238,258,85),

(NULL,5,'images/inhome/homeimg/home33.jpg','整套公寓 · 1室1卫2床','『G•52』【巨幅投影双床房】HOUSE /二环内/万象城 /建设路/ 乳胶寝具/祖马龙个护',159,227,18),
(NULL,5,'images/inhome/homeimg/home34.jpg','整套酒店式公寓 · 1室1.5卫2床','北欧风格民宿/春熙路/地铁口/',132,188,36),
(NULL,5,'images/inhome/homeimg/home35.jpg','整套公寓 · 2室1卫2床','带有大落地窗的意式风格复式一居室 ',214,428,12),
(NULL,5,'images/inhome/homeimg/home36.jpg','整套公寓 · 1室1卫2床','可开发票 【简爱】下楼就是春熙路/距春熙路地铁口300米/1居2床/IFS/太古里/春熙路/宽窄巷子',216,308,74),
(NULL,5,'images/inhome/homeimg/home37.jpg','整套公寓 · 2室1卫2床','〈一半.宁蘭Ⅰ〉太古里旁的双子塔,俯瞰整个春熙路/超高层无遮挡观景窗/时尚轻奢公寓/近地铁二三号线',359,408,114),
(NULL,5,'images/inhome/homeimg/home38.jpg','整套公寓 · 2室1卫2床','西博会/世纪城/极地海洋世界 北欧轻奢精装',224,280,52),
(NULL,5,'images/inhome/homeimg/home39.jpg','整套公寓 · 2室1卫2床','特色民宿/楼下太古里/临近春熙路双地铁的温馨轻奢风一居室',313,368,42),
(NULL,5,'images/inhome/homeimg/home40.jpg','整套公寓 · 2室1卫2床','蜀缘~拾/太古里/春熙路地标建筑LOFT~4.9米全落地全景采光',468,520,15),

(NULL,6,'images/inhome/homeimg/home41.jpg','整套公寓 · 1室1卫1床','长沙五一广场｢逐境｣沉绿/双地铁口上的巨幕投影独立公寓/国金IFS/步行街/太平街/坡子街/乐和城',268,298,9),
(NULL,6,'images/inhome/homeimg/home42.jpg','整套公寓 · 2室1卫2床','忆阁一线江景烟花/地铁口/五一广场/太平街/坡子街/文和友',438,498,36),
(NULL,6,'images/inhome/homeimg/home43.jpg','整套公寓 · 1室1卫1床','有味旅行-平地一声雷 江景浴缸/半圆网红飘窗可看烟花/五一广场/太平街坡子街步行2min可达/地铁口',232,258,79),
(NULL,6,'images/inhome/homeimg/home44.jpg','整套公寓 · 1室1卫1床','现代简约风 长沙高铁南站 绿地之窗 独立公寓一居(包接送高铁站)杜花路地铁口长沙国际会展中心',123,168,44),
(NULL,6,'images/inhome/homeimg/home45.jpg','整套公寓 · 1室1卫1床','It is me【room1】点击我头像 看更多房源',118,168,290),
(NULL,6,'images/inhome/homeimg/home46.jpg','整套公寓 · 1室1卫1床','【逸舍·小美风】树木岭地铁口150m落地大窗智能家居,净化器,净水器,进口SPA淋浴花洒',160,200,52),
(NULL,6,'images/inhome/homeimg/home47.jpg','整套公寓 · 1室1卫1床','五一广场开福寺地铁站公寓房',142,189,58),
(NULL,6,'images/inhome/homeimg/home48.jpg','整套公寓 · 1室1卫1床','五一广场､解放西路､坡子街､汀兰雅苑全线江景､高端北欧风民宿之暖屋.小舍七',236,268,85),

(NULL,7,'images/inhome/homeimg/home49.jpg','整套公寓 · 1室1.5卫1床','【长亭短亭】R7*小南瓜',167,239,14),
(NULL,7,'images/inhome/homeimg/home50.jpg','整套公寓 · 2室1卫2床','【BedRoom】北京西站/马连道/牛街金融街 地铁七号线湾子站 家庭一居',140,280,26),
(NULL,7,'images/inhome/homeimg/home51.jpg','整套公寓 · 1室1卫1床','北京南站 地铁附近 天安门 西单 温馨单间 ',205,228,79),
(NULL,7,'images/inhome/homeimg/home52.jpg','整套公寓 · 1室1卫2床','｢單獨TERRA SPACE｣-步行至王府井故宫-老舍故居对面-温暖舒适的手艺人居住空间',189,278,44),
(NULL,7,'images/inhome/homeimg/home53.jpg','整套公寓 · 1室1卫1床','【进屋】“Home C” 步行三里屯太古里|SOHO工体|高层落地窗|100寸投影',304,338,238),
(NULL,7,'images/inhome/homeimg/home54.jpg','整套公寓 · 2室1卫2床','｢平克慢｣Loft酒店式公寓,超大浴缸观景窗,三里屯簋街,国贸CBD',180,268,52),
(NULL,7,'images/inhome/homeimg/home55.jpg','整套酒店式公寓 · 1室1卫2床','【ecoHome-北京】蒲黄榆F26/二环边地铁楼上/家庭友好/榻榻米/15分钟南站/2站天坛',104,139,136),
(NULL,7,'images/inhome/homeimg/home56.jpg','整套酒店式公寓 · 1室1.5卫2床','【硬糖小屋】地铁6号线草房站',175,258,85),

(NULL,8,'images/inhome/homeimg/home57.jpg','整套公寓 · 1室1.5卫1床','坐落环岛路海边/近曾厝垵 厦大 中山路/法式花园别墅/共享两个法式空中花园/4只小猫咪娱乐专区',167,239,14),
(NULL,8,'images/inhome/homeimg/home58.jpg','整套公寓 · 2室1卫2床','厦门环岛路曾厝垵.厦大.沙坡尾.鼓浪屿设计师泳池民宿ROOM301',140,280,26),
(NULL,8,'images/inhome/homeimg/home59.jpg','整套公寓 · 1室1卫1床','厦门日初 近曾厝垵/厦大/会展/中山路/典型日式和风民宿',205,228,79),
(NULL,8,'images/inhome/homeimg/home60.jpg','整套公寓 · 1室1卫2床','雅致双床!近海边\厦大\曾厝垵\鼓浪屿的亲子双床(同类型房源,可选房源,随机安排!)先咨询,再下单!',189,278,44),
(NULL,8,'images/inhome/homeimg/home61.jpg','整套公寓 · 1室1卫1床','303留下.厦门大学.曾厝垵.环岛路.沙坡尾【点我头像查看更多房源】',304,338,238),
(NULL,8,'images/inhome/homeimg/home62.jpg','整套公寓 · 2室1卫2床','[脏脏粉]近鼓浪屿中山路的复式海景套房/2-6人三室一厅一厨',180,268,52),
(NULL,8,'images/inhome/homeimg/home63.jpg','整套酒店式公寓 · 1室1卫2床','解忧·【猫先生】  厦门大学.曾厝垵.海边.环岛路(点我头像.查看更多房源)',104,139,136),
(NULL,8,'images/inhome/homeimg/home64.jpg','整套酒店式公寓 · 1室1.5卫2床','中山路旁独栋复式投影仪露台花房room3｢天空｣,近鼓浪屿､厦大､沙坡尾､南普陀',175,258,85);


/*国内热门目的地*/
CREATE TABLE hot_city(
  hid INT PRIMARY KEY AUTO_INCREMENT,
  hname VARCHAR(32),
  hnum VARCHAR(32)
);

/*国内热门目的地*/
INSERT INTO  hot_city VALUES
(NULL,'成都','2600+房源'),
(NULL,'上海','3300+房源'),
(NULL,'重庆','2000+房源'),
(NULL,'北京','2800+房源'),
(NULL,'杭州','1900+房源'),
(NULL,'大理','8000+房源');

/*全球热门房源*/
CREATE TABLE global_house(
  id INT PRIMARY KEY AUTO_INCREMENT,
  img_url VARCHAR(128),
  title VARCHAR(128),
  subtitle VARCHAR(256),
  price INT,
  comment INT
);

INSERT INTO global_house VALUES (null,'01.jpg','整套公寓·5室1卫7床','Penthouse,4-5rooms + 5 balconies',1952,409),
(null,'02.jpg','整栋木屋·1室1卫3床','The Pondhouse - A Magical Place',1760,229),
(null,'03.jpg','整套公寓·1室1卫1床','Pettinarihome Campo de FIORI',1015,610),
(null,'04.jpg','整套房子·1室1卫2床','I SETTE CONI - TRULLO EDERA',508,191),
(null,'05.jpg','蒙古包·1室6床','A quiet yurt in Savoie-Bauges',590,340),
(null,'06.jpg','整栋别墅·10室11卫13床','Villa Amonteera,Luxury with Fantastic',8508,76),
(null,'07.jpg','整套公寓·5室1卫7床','Penthouse,4-5 rooms + 5 balconies',1967,411),
(null,'08.jpg','整栋别墅·1室2卫6床','Luxury Gold Coast Hinterland Villa',1173,224),
(null,'09.jpg','整栋别墅·3室2卫3床','Private Family Love Villa4 close to BALL',692,54),
(null,'10.jpg','整套公寓·1室1卫2床','Sunny apartment near metro station.',546,261),
(null,'11.jpg','木屋·1室1卫1床','BALIAN TREEHOUSE w beautiful pool',633,196),
(null,'12.jpg','整套公寓·1室1卫1床','White Breeze pool 1BD Apartment',435,89),
(null,'13.jpg','整栋乡村小屋·1室1卫3床','Casa do Rio-Beach and Mountains',546,192),
(null,'14.jpg','独立房间·2室1卫2床','Stylish house close to river thames',567,242),
(null,'15.jpg','露营车/房车·1室1卫1床','Super Cute Retro Airstream',958,432),
(null,'16.jpg','整栋木屋·1室1卫3床','The Pondhouse - A Magical Place',1774,230);

/*高分体验*/
CREATE TABLE high_score(
  id INT PRIMARY KEY AUTO_INCREMENT,
  img_url VARCHAR(128),
  title VARCHAR(128),
  subtitle VARCHAR(256),
  price INT,
  comment INT
);

INSERT INTO high_score VALUES (null,'h_01.jpg','工作坊·清迈','Thai Traditional Yantra Tattoo.',587,193),
(null,'h_02.jpg','浮潜·梅里达','Magic CENOTES + Hacienda',277,357),
(null,'h_03.jpg','徒步·波多黎各','Hike to a Hidden Waterfall',545,285),
(null,'h_04.jpg','冥想·马德普拉塔','Medita a orillas del mar...',51,53),
(null,'h_05.jpg','摄影·东京','您的私人东京摄影师!',654,510),
(null,'h_06.jpg','一日游·里斯本','辛特拉难忘一日!',503,1170),
(null,'h_07.jpg','徒步·悉尼','体验8字水塘,海岸线探险徒步行',730,145),
(null,'h_08.jpg','庄园·曼谷','探秘天然庄园与大自然',277,367),
(null,'h_01.jpg','工作坊·清迈','Thai Traditional Yantra Tattoo.',587,193),
(null,'h_02.jpg','浮潜·梅里达','Magic CENOTES + Hacienda',277,357),
(null,'h_03.jpg','徒步·波多黎各','Hike to a Hidden Waterfall',545,285),
(null,'h_04.jpg','冥想·马德普拉塔','Medita a orillas del mar...',51,53),
(null,'h_05.jpg','摄影·东京','您的私人东京摄影师!',654,510),
(null,'h_06.jpg','一日游·里斯本','辛特拉难忘一日!',503,1170),
(null,'h_07.jpg','徒步·悉尼','体验8字水塘,海岸线探险徒步行',730,145),
(null,'h_08.jpg','庄园·曼谷','探秘天然庄园与大自然',277,367);

/*推荐房源*/
CREATE TABLE recommend(
  id INT PRIMARY KEY AUTO_INCREMENT,
  img_url VARCHAR(128),
  title VARCHAR(128),
  subtitle VARCHAR(256),
  price INT
);

INSERT INTO recommend VALUES(null,'rec01.jpg','C珠江新城双地铁3/5号线/美领事馆/广州塔','整体出租 1室1厅 宜住2人 - 5分/20点评',299),(null,'rec02.jpg','广州东站宝泰万佳有利金马沙河服装批发','整套出租 1室0厅 宜住2人 - 0分/1点评',259),(null,'rec03.jpg','【栖】珠江新城/美国领事馆/广交会/小蛮腰','整体出租 1室0厅 宜住2人 - 0分/0点评',268),(null,'rec04.jpg','广州东站天河城商圈/短租长租/温馨梦幻之家','整体出租 1室0厅 宜住2人 - 0分/3点评',328),(null,'rec05.jpg','简约装饰 独门独户套房 广州东站','整体出租 1室0厅 宜住2人 - 0分/1点评',298),(null,'rec06.jpg','北欧趣味风|浪漫影院房|毗邻体育西路.天河城','整体出租 1室1厅 宜住2人 - 0分/0点评',366),(null,'rec07.jpg','广州东站&珠江新城&长隆&北京路上下九&套房','整体出租 1室0厅 宜住2人 - 5分/5点评',258),(null,'rec08.jpg','『风廊』广州东站&广交会直达&双地铁大1居','整体出租 1室0厅 宜住2人 - 0分/2点评',338),(null,'rec09.jpg','东站，天河，艺术剧院、沙河商圈、一房厨卫整租','整体出租 1室2厅 宜住2人 - 0分/0点评',228);


-- 收藏
CREATE TABLE mimo_collect(
    id INT PRIMARY KEY AUTO_INCREMENT,
    rid INT Not Null Unique,
    img_url VARCHAR(128) Not Null,
    title VARCHAR(256) Not Null,
    price INT Not Null
);
INSERT INTO mimo_collect VALUES
-- (null,111,"yuanben1.jpg","原本【空岛】奥帆，禅意智能海景民宿，地铁房",698),
(null,112,"home2.jpg","日式榻榻米和风影院双人大床",378),
(null,113,"home7.jpg","天骄嘉园主题度假公寓精品豪华大床房",508),
(null,114,"home8.jpg","城市森林大床／动物园大马戏",545);

