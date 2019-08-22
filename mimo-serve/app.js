//加载第三方模块
const express = require("express");
const mysql = require("mysql");
const session = require("express-session");
const cors = require("cors");
const bodyParser = require('body-parser');
const request = require('request');
const querystring = require('querystring');
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
const port = process.env.PORT || 5050;
app.listen(port, () => {
   console.log(`Server is running on port ${port}`);
})