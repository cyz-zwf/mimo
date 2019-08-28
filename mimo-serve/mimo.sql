SET NAMES UTF8;
DROP DATABASE IF EXISTS mimo;
CREATE DATABASE mimo CHARSET=UTF8;
USE mimo;

CREATE TABLE mimo_login(
    id INT PRIMARY KEY AUTO_INCREMENT,
    uname VARCHAR(50),
    upwd VARCHAR(32),
    unamePhone VARCHAR(11)
);
INSERT INTO mimo_login VALUES(null,'赵飞燕','123456','18866665555');

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

