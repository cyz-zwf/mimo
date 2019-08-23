SET NAMES UTF8;
DROP DATABASE IF EXISTS mimo;
CREATE DATABASE mimo CHARSET=UTF8;
USE mimo;


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
(null,'04.jpg','整套房子·1室1卫2床','I SETTE CONI - TRULLO EDERA',508,191);

/*高分体验*/
CREATE TABLE high_score(
  id INT PRIMARY KEY AUTO_INCREMENT,
  img_url VARCHAR(128),
  title VARCHAR(128),
  subtitle VARCHAR(256),
  price INT,
  comment INT
);

INSERT INTO high_score VALUES (null,'05.jpg','工作坊·清迈','Thai Traditional Yantra Tattoo.',587,193),
(null,'06.jpg','浮潜·梅里达','Magic CENOTES + Hacienda',277,357),
(null,'07.jpg','徒步·波多黎各','Hike to a Hidden Waterfall',545,285),
(null,'08.jpg','冥想·马德普拉塔','Medita a orillas del mar...',51,53);