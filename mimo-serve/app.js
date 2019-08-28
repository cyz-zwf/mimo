//加载第三方模块
const express = require("express");
const mysql = require("mysql");
const session = require("express-session");
const cors = require("cors");
const bodyParser = require('body-parser');
const request = require('request');
const querystring = require('querystring');
const SMSClient = require('@alicloud/sms-sdk')
//配置数据连接池
var pool = mysql.createPool({
   host: '127.0.0.1',
   port: 3306,
   user: 'root',
   password: '',
   database: 'mimo',
   connectionLimit: 15,
});
var app = express();
app.use(
   cors({
      origin: ["http://127.0.0.1:8080", "http://localhost:8080"],
      credentials: true
   })
);
//配置session
app.use(session({
   secret: "128位字符串",
   cookie: {
      maxAge: 1000 * 60 * 60 * 24
   },
   resave: true,
   saveUninitialized: true
}))
// parse application/x-www-form-urlencoded
app.use(bodyParser.urlencoded({
   extended: false
}))

// parse application/json
app.use(bodyParser.json());

//托管
app.use(express.static("public"));
app.listen(5050);

/* 注意:以下代码运行时可能会垮掉 */
// ACCESS_KEY_ID/ACCESS_KEY_SECRET 根据实际申请的账号信息进行替换
const accessKeyId = 'LTAIckZdQpyi3Grt'
const secretAccessKey = 'krIzRvEnOWJIsHyv5XYywg6AxRUSan'
//初始化sms_client
let smsClient = new SMSClient({
   accessKeyId,
   secretAccessKey
})

//收到前端get请求
app.get('/sedsms', function (req, res) {
   // console.log(req.stack);
   console.log(req.query);
   console.log(req.query.phone);
   var $req = req;
   var $res = res;
   // console.log(req.url);
   // console.log(req.query);
   var code = ('000000' + Math.floor(Math.random() * 999999)).slice(-6);
   var info = {
      PhoneNumbers: req.query.phone, //必填:待发送手机号,支持以逗号分隔的形式进行批量调用，目前从前端获取手机号码
      SignName: 'mimo小分队', //必填:短信签名-可在短信控制台中找到
      TemplateCode: 'SMS_172885298', //必填:短信模板-可在短信控制台中找到
      TemplateParam: `{"code":"${code}"}` //可选:模板中的变量替换JSON串,目前不用
   }
   //发送短信
   smsClient
      .sendSMS(info)
      .then((res) => {
         let {
            Code
         } = res
         if (Code === 'OK') {
            //处理返回参数
            console.log(res)
            var phone = $req.query.phone;
            var sql = "select uname from mimo_login where uname=?";
            pool.query(sql, [phone], (err, result) => {
               if (err) throw err;
               if (result.length == 0) {
                  var sql = `INSERT INTO mimo_login VALUES(null,${phone},123456)`;
                  pool.query(sql, (err, result) => {
                     if (err) throw err;
                     $req.session.uname = phone;
                     console.log("我是session中的:", $req.session.uname)
                  })
               } else {
                  $req.session.uname = phone;
               }
            })
         }
      }, (err) => {
         console.log(err);
         return;
      })
      .then(() => {
         res.send(code);
      })

})

//主页全球热门房源
app.get("/global", (req, res) => {
   //接收客户端两个参数pno 页码  pageSize 页大小
   var p = req.query.pno;
   var ps = req.query.pageSize;
   //设置参数默认值 pno:1 pageSize:4
   if (!p) {
      p = 1
   }
   if (!ps) {
      ps = 4
   }
   //创建变量offset 计算数据库偏移量
   var offset = (p - 1) * ps;
   //对pageSize转换整形 否则nodejs报错
   ps = parseInt(ps);
   //创建sql语句
   var sql = "SELECT img_url,title,subtitle,price,comment FROM global_house LIMIT ?,?";
   pool.query(sql, [offset, ps], (err, result) => {
      if (err) throw err;
      res.send({
         code: 1,
         msg: "查询成功",
         data: result
      })
   });
})

//高分体验
app.get("/highScore", (req, res) => {
   //接收客户端两个参数pno 页码  pageSize 页大小
   var p = req.query.pno;
   var ps = req.query.pageSize;
   //设置参数默认值 pno:1 pageSize:4
   if (!p) {
      p = 1
   }
   if (!ps) {
      ps = 4
   }
   //创建变量offset 计算数据库偏移量
   var offset = (p - 1) * ps;
   //对pageSize转换整形 否则nodejs报错
   ps = parseInt(ps);
   //创建sql语句
   var sql = "SELECT img_url,title,subtitle,price,comment from high_score LIMIT ?,?";
   pool.query(sql, [offset, ps], (err, result) => {
      if (err) throw err;
      res.send({
         code: 1,
         msg: "查询成功",
         data: result
      })
   });
})

//推荐房源
app.get("/recommend", (req, res) => {
   var sql = "SELECT img_url,title,subtitle,price from recommend";
   pool.query(sql, (err, result) => {
      if (err) throw err;
      res.send({
         code: 1,
         msg: "查询成功",
         data: result
      })
   });
})
app.get("/highScore", (req, res) => {
   var sql = "SELECT img_url,title,subtitle,price,comment from high_score";
   pool.query(sql, (err, result) => {
      if (err) throw err;
      res.send({
         code: 1,
         msg: "查询成功",
         data: result
      })
   });
})

app.get("/sessionInfo", (req, res) => {

   var uname = req.session.uname;
   var sql = "SELECT uname from mimo_login where uname=?";
   pool.query(sql, [uname], (err, result) => {

      if (err) throw err;
      if (result.length == 0) {
         res.send({
            code: -1,
            msg: "查询失败"
         });
         return;
      } else {
         res.send({
            code: 1,
            msg: uname
         });
      }
   })
})

// 收藏房源
app.get("/collect", (req, res) => {
   var sql = "SELECT id,rid,img_url,title,price FROM mimo_collect";
   pool.query(sql, (err, result) => {
      if (err) throw err;
      res.send(result);
   })
})
app.get("/isCollect", (req, res) => {
   var rid = req.query.rid;
   var sql = "SELECT id FROM mimo_collect WHERE rid=?";
   pool.query(sql, [rid], (err, result) => {
      if (err) throw err;
      if (result.length > 0) {
         res.send({
            code: 1,
            msg: "已收藏"
         })
      } else {
         res.send({
            code: -1,
            msg: "未收藏"
         })
      }
   })
})
app.get("/addCollect", (req, res) => {
   var rid = req.query.rid;
   var img_url = req.query.img_url;
   var title = req.query.title;
   var price = req.query.price;
   var sql = "INSERT INTO mimo_collect VALUES (null,?,?,?,?)";
   pool.query(sql, [rid, img_url, title, price], (err, result) => {
      if (err) throw err;
      res.send({
         code: 1,
         msg: "添加成功"
      })
   })
})
//http://127.0.0.1:5050/addCollect?rid=116&img_url=home8.jpg&title=城市森林大床／动物园大马戏&price=545
app.get("/delCollect", (req, res) => {
   var rid = req.query.rid;
   var sql = "DELETE FROM mimo_collect WHERE rid=?"
   pool.query(sql, [rid], (err, result) => {
      if (err) throw err;
      res.send({
         code: 1,
      })
   })
})


app.get("/preferential", (req, res) => {
   var sql = "SELECT pname,pid,pnum FROM preferential_house";
   pool.query(sql, [], (err, result) => {
      if (err) throw err
      res.send({
         data: result
      })
   })
})

app.get("/house", (req, res) => {
   var pid = req.query.pid;
   console.log(pid)
   if (!pid) { 
      pid = 1;
   }
   console.log(pid)
   var sql = "SELECT * FROM house_laptop where house_id=?"
   pool.query(sql, [pid], (err, result) => {
      if (err) throw err;
      console.log(result)
      res.send({
         data: result
      })
   }) 
})