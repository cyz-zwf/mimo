<template>
  <div>
    <div class="top">
      <div class="imgSZ"></div>
      <div class="middle">
        <div class="lt">
          <div>{{isLogin?login:"您好,请先登录"}}</div>
          <div class="jiaoyin"></div>
          <div class="qiandao">签到</div>
        </div>
        <div class="rt">
          <div class="touxian"></div>
        </div>
      </div>
      <div class="bottom">
        <div class="txt">开通超级会员立省1598元</div>
        <div class="open">立即开通</div>
      </div>
    </div>
    <!-- 我的订单 -->
    <div class="bg_box">
      <div class="order">
        <div>我的订单</div>
        <div>
          <ul>
            <li>
              <img src="http://127.0.0.1:5050/images/Me/ic_dd.png" />
              <p>全部订单</p>
              <p class="bg_list">查看订单详情</p>
            </li>
            <li>
              <img src="http://127.0.0.1:5050/images/Me/ic_fp.png" />
              <p>开具发票</p>
              <p class="bg_list">发票历史及抬头</p>
            </li>
            <li>
              <img src="http://127.0.0.1:5050/images/Me/ic_ms.png" />
              <p>打开门锁</p>
              <p class="bg_list">预定后可使用</p>
            </li>
          </ul>
        </div>
      </div>
      <mt-swipe :auto="4000" class="swipe">
        <mt-swipe-item>
          <img src="http://127.0.0.1:5050/images/inhome/seimg/2f8.jpg" style="width:100%" />
        </mt-swipe-item>
        <mt-swipe-item>
          <img src="http://127.0.0.1:5050/images/inhome/seimg/4c.jpg" style="width:100%" />
        </mt-swipe-item>
        <mt-swipe-item>
          <img src="http://127.0.0.1:5050/images/inhome/seimg/ca38.jpg" style="width:100%" />
        </mt-swipe-item>
      </mt-swipe>
      <div class="order" v-for="(item,i ) of list" :key="i">
        <div v-cloak>{{item.title}}</div>
        <ul>
          <li>
            <img :src="`http://127.0.0.1:5050/images/Me/${item.one.pic}`" />
            <p v-cloak>{{item.one.title}}</p>
            <p class="bg_list" v-cloak>{{item.one.desc}}</p>
          </li>
          <li>
            <img :src="`http://127.0.0.1:5050/images/Me/${item.two.pic}`" />
            <p v-cloak>{{item.two.title}}</p>
            <p class="bg_list" v-cloak>{{item.two.desc}}</p>
          </li>
          <li>
            <img :src="`http://127.0.0.1:5050/images/Me/${item.three.pic}`" />
            <p v-cloak>{{item.three.title}}</p>
            <p class="bg_list" v-cloak>{{item.three.desc}}</p>
          </li>
        </ul>
      </div>
      <!-- 我要成为房东 -->
      <div class="change">我要成为房东</div>
    </div>
  </div>
</template>
<script>
export default {
  data() {
    return {
      isLogin:false,
      login:"hi",
      list: [
        // {
        //   title: "我的订单",
        //   one: { pic: "ic_dd.png", title: "全部订单", desc: "查看全部订单" },
        //   two: { pic: "ic_fp.png", title: "开具发票", desc: "发票历史及抬头" },
        //   three: { pic: "ic_ms.png", title: "打开门锁", desc: "预定后可使用" }
        // },
        {
          title: "我的订单",
          one: { pic: "ic_dd.png", title: "全部订单", desc: "查看全部订单" },
          two: { pic: "ic_fp.png", title: "开具发票", desc: "发票历史及抬头" },
          three: { pic: "ic_ms.png", title: "打开门锁", desc: "预定后可使用" }
        },
        {
          title: "我的钱包",
          one: { pic: "ic_fx.png", title: "邀请好友", desc: "代金券多邀多得" },
          two: { pic: "ic_djj.png", title: "代金券", desc: "¥ 0" },
          three: { pic: "ic_jf.png", title: "积分", desc: "0" }
        },
        {
          title: "我的特权",
          one: { pic: "ic_mian.png", title: "免押入住", desc: "未开通" },
          two: { pic: "slrz.png", title: "商旅认证", desc: "未认证" },
          three: { pic: "ic_dianbo.png", title: "点评", desc: "入住后可发表" }
        },
        {
          title: "更多功能",
          one: { pic: "ic_dw.png", title: "收件地址", desc: "管理收件地址" },
          two: { pic: "ic_ren.png", title: "常用联系人", desc: "共0人入住" },
          three: { pic: "ic_call.png", title: "联系客服", desc: "在线解答疑问" }
        }
      ],
      car: false
    };
  },
  methods: {
    loadLogin() {
      this.axios("sessionInfo").then(result => {
        // 没登录时会显示查询失败，
        // 登录后才会显示成功，并显示数据
        if(this.isLogin){
          this.login=false;
        }else{
          this.isLogin=true;
          this.login="hi "+result.data.msg[0].uname        
        }      
      });
    }
  },
  mounted() {},
  created() {
    this.loadLogin();
  }
};
</script>
<style scoped>
[v-cloak] {
  display: none !important;
}
.top {
  height: 6rem;
  font-family: Avenirregular, sans-serif !important;
  font-size: 0.4rem;
  position: relative;
  color: #fff;
  background: linear-gradient(to top, #f16b80 0%, rgb(245, 207, 207) 100%);
}
.top::before {
  content: "";
  display: table;
}
.imgSZ {
  width: 0.8rem;
  height: 0.8rem;
  background: url("http://127.0.0.1:5050/images/Me/ic_se.png") no-repeat;
  background-size: 100%;
  position: absolute;
  right: 0.3rem;
  top: 0.2rem;
}
.middle {
  height: 3rem;
  position: absolute;
  top: 25%;
  left: 5%;
  width: 90%;
}
.lt {
  float: left;
}
.rt {
  float: right;
}
.jiaoyin {
  background: url("http://127.0.0.1:5050/images/Me/ic_jiaoyin.png") no-repeat;
  background-size: 100%;
  width: 0.5rem;
  height: 0.5rem;
  position: absolute;
  top: 1.43rem;
  left: 0.3rem;
}
.qiandao {
  width: 1rem;
  border: 0.02rem solid #fff;
  margin-top: 0.7rem;
  padding: 0.2rem 0 0.2rem 0.9rem;
  font-size: 0.1rem;
  border-radius: 0.21rem;
}
.touxian {
  width: 2.2rem;
  height: 2.2rem;
  background: url("http://127.0.0.1:5050/images/Me/avar.jpg");
  background-size: 100%;
  border-radius: 50%;
}
.bottom {
  border-top-left-radius: 0.5rem;
  border-top-right-radius: 0.5rem;
  color: blanchedalmond;
  background: linear-gradient(
    to right,
    rgb(32, 31, 31) 0%,
    rgb(83, 73, 37) 78%,
    rgb(36, 31, 2) 100%
  );
  margin: 0 0.5rem;
  margin-top: 4.8rem;
  display: flex;
  align-items: center;
  justify-content: space-around;
}
.txt {
  line-height: 1.2rem;
}
.bottom div.open {
  height: 60%;
  color: #000;
  font-size: 0.1rem;
  padding: 0.19rem;
  border-radius: 1rem;
  background: linear-gradient(
    to left,
    rgb(236, 218, 159) 0%,
    rgb(226, 224, 96) 100%
  );
}
/* 我的订单 */
.bg_box {
  padding: 0 0.5rem;
  background: #e8e8e8;
  padding-bottom: 0.6rem;
}
.order {
  font-size: 0.4rem;
  height: 4rem;
  padding: 0.3rem;
  background: #fff;
  border-bottom-left-radius: 0.3rem;
  border-bottom-right-radius: 0.3rem;
  margin-bottom: 0.4rem;
}
.order ul {
  padding: 0;
  list-style-type: none;
  display: flex;
  justify-content: space-around;
  margin-top: 0.7rem;
}
.order ul li {
  width: 30%;
  display: flex;
  flex-direction: column;
  align-items: center;
}
.order ul li img {
  width: 1rem;
  height: 1rem;
}
.order ul li p {
  margin-top: 0.1rem;
}
.order ul li p.bg_list {
  color: #999;
  font-size: 0.15rem;
}
/* 轮播图 */
.swipe {
  height: 5rem;
  margin-bottom: 0.4rem;
}
.change {
  height: 1.3rem;
  background: #fff;
  margin-bottom: 1.3rem;
  color: #666;
  font-size: 0.5rem;
  text-align: center;
  line-height: 1.3rem;
}
</style>