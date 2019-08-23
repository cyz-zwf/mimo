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
         }
      }, (err) => {
         console.log(err)
      })
      .then(() => {
         res.send(code);
      })

})

//主页全球热门房源
app.get("/global", (req, res) => {
   var sql = "SELECT img_url,title,subtitle,price,comment from global_house";
   pool.query(sql, (err, result) => {
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