//加载第三方模块
const express = require("express");
const mysql = require("mysql");
const session = require("express-session");
const cors = require("cors")
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

//托管
app.use(express.static("public"));
app.listen(5050);


//主页全球热门房源
app.get("/global",(req,res)=>{
    var sql = "SELECT img_url,title,subtitle,price,comment from global_house";
    pool.query(sql,(err,result)=>{
        if(err) throw err;
        res.send({
            code:1,
            msg:"查询成功",
            data:result
        })
    });
})

//高分体验
app.get("/highScore",(req,res)=>{
    var sql = "SELECT img_url,title,subtitle,price,comment from high_score";
    pool.query(sql,(err,result)=>{
        if(err) throw err;
        res.send({
            code:1,
            msg:"查询成功",
            data:result
        })
    });
})