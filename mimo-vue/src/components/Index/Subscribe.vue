<template>
  <div class="subscribe">
    <div class="scribe-order">
      <span @click="jumpdetail">
        <img :src="this.hostUrl+'images/inhome/scribeimg/leftjump.png'" class="leftjump" />
      </span>
      <span>立即下单</span>
    </div>
    <div class="scribe-main">
      <div class="srcibe-main-img">
        <img :src="this.hostUrl+'images/inhome/scribeimg/yuanben1.jpg'" alt />
      </div>
      <div class="srcibe-main-info">
        <span>原本【空岛】奥帆，禅意智能海景民宿，地铁房</span>
      </div>
    </div>
    <div class="scribe-time">
      <div class="scribe-time-date">
        <div class="intoTime">
          <p>入住</p>
          <p>2018.08.31</p>
        </div>
        <div class="throwL">2晚</div>
        <div class="intoTime">
          <p class="intoTime-p2">离开</p>
          <p>2018.09.02</p>
        </div>
      </div>
      <div class="scribe-time-name">
        <p>预定人：龙猫666</p>
        <p>+86 18788886666</p>
      </div>
    </div>
    <div class="scribe-vip">
      <div class="vip-left">
        <span class="vip-logo">mimo会员</span>
        <span class="vip-title">开通会员，本单立减￥159元</span>
      </div>
      <mt-switch class="switch" v-model="value" @change="turn"></mt-switch>
    </div>
    <div class="scribe-box">
      <div class="clearfix">
        <span>代金券</span>
        <span>无代金券</span>
      </div>
      <div class="fapiao clearfix">
        <span>开具发票</span>
        <span>
          <img src="http://127.0.0.1:5050/images/inhome/scribeimg/rightlogo.png" alt />
        </span>
      </div>
      <div class="clearfix">
        <span>押金</span>
        <span>￥500.00</span>
      </div>
      <div class="paymoney clearfix">
        <span>需在线支付</span>
        <span>￥3188.00</span>
      </div>
    </div>
    <div class="scribe-rule">
      <div class="rules">
        <p class="ruleName">退订规则</p>
        <p class="ruleDetail">8月19日14:00前取消，所有金额全部退还，8月19日14:00后取消，扣除未入住首日房费，以及剩余房费的50%</p>
      </div>
      <div class="rules">
        <p class="ruleName">入住规定</p>
        <p class="ruleDetail">允许做饭,允许带宠物,允许聚会,不允许吸烟,不接待境外人士,宜居10人，允许加客1人，加客费用线下收取</p>
      </div>
    </div>
    <div class="scribe-conctet">
      <span>我同意《会员服务协议》《mimo服务协议》《房客规则》《意外健康险保险告知书》及房东规定的退订规则和入住要求</span>
    </div>
    <div class="scribe-pay">
      <div class="sure-btn" @click="submit">{{value?"提交订单￥3188.00":"提交订单￥3029.00"}}</div>
    </div>
  </div>
</template>

<script>
export default {
  data() {
    return {
      value: false
    };
  },
  methods: {
    jumpdetail() {
      this.$messagebox
        .confirm("", {
          title: "mimo提示",
          message: "别离开太久，我怕被人订走",
          confirmButtonText: "留下来",
          cancelButtonText: "先离开"
        })
        .then(action => {})
        .catch(action => {
          this.$router.push("/detail");
        });
    },
    turn() {
      var btn = document.getElementsByClassName("sure-btn")[0];
      if (this.value) {
        btn.style.backgroundColor = "#f16b80";
        btn.style.color = "#fff";
      } else {
        btn.style.backgroundColor = "#fff";
        btn.style.color = "#f16b80";
      }
    },
    submit() {
      this.$toast({
          message: "预定成功",
          duration: 1500
          // iconClass: "icon icon-success"
        });
      setTimeout(() => {
        this.$router.push("/OrderList")
      }, 1500);      
    }
  }
};
</script>

<style scoped>
div {
  box-sizing: border-box;
}
.scribe-order {
  width: 100%;
  display: block;
  position: fixed;
  top: 0rem;
  background: #fff;
  height: 1.2rem;
  line-height: 1.2rem;
  text-align: center;
  padding: 0 0.4rem;
  box-sizing: border-box;
  border-bottom: 0.0333rem solid #e0e0e0;
}
.scribe-order span:first-child {
  display: block;
  float: left;
}
.scribe-order span:last-child {
  font-size: 0.42222rem;
  color: #323232;
}
.scribe-order .leftjump {
  width: 0.313333rem;
  height: 0.4rem;
}
.scribe-order ::after {
  content: ".";
  clear: both;
  display: block;
  overflow: hidden;
  font-size: 0;
  height: 0;
}
.scribe-main {
  width: 100%;
  /* background: #e0e0e0; */
  margin-top: 1.1rem;
  display: flex;
  justify-content: space-between;
  box-sizing: border-box;
  padding: 0 0.4rem;
  border-bottom: 0.0233rem solid #e0e0e0;
}
.srcibe-main-img,
.srcibe-main-info {
  margin: 0.4rem 0;
}
.srcibe-main-img img {
  width: 3.8222rem;
}
.srcibe-main-info span {
  margin-left: 0.3rem;
  color: #212121;
  font-size: 0.426667rem;
  font-weight: 700;
  display: block;
}
.scribe-time {
  padding: 0 0.4rem;
  background: #fafafa;
}
.scribe-time-date {
  width: 100%;
  display: flex;
  justify-content: space-between;
  padding: 0.4rem 0;
  align-items: center;
  border-bottom: 0.0133rem solid #e0e0e0;
}
.intoTime p:first-child {
  color: #757575;
  font-size: 0.32rem;
  margin-bottom: 0.266667rem;
}
.intoTime p:last-child {
  color: #212121;
  font-size: 0.533333rem;
  font-weight: 700;
}
.intoTime .intoTime-p2 {
  text-align: right;
}
.throwL {
  display: block;
  width: 13%;
  border: 0.0233rem solid #e4e6e9;
  border-radius: 0.3rem;
  text-align: center;
  font-size: 0.3888rem;
  line-height: 0.6rem;
}
.scribe-time-name {
  padding: 0.4rem 0;
}
.scribe-time-name p:first-child {
  margin-bottom: 0.266667rem;
  font-size: 0.373333rem;
  color: #212121;
  font-weight: 700;
}
.scribe-vip {
  width: 100%;
  background: rgb(250, 248, 233);
  margin-top: 10px;
  padding: 0.466667rem 0.4rem;
}
.vip-left {
  display: inline-block;
  width: 5.8rem;
  font-size: 0.373333rem;
  color: #212121;
}
.vip-logo {
  display: block;
  width: 2.266667rem;
  height: 0.533333rem;
  line-height: 0.533333rem;
  font-size: 0.32rem;
  text-align: center;
  font-weight: 700;
  color: #212121;
  border-radius: 0.2666rem;
  background-image: linear-gradient(180deg, #fad0d7 5%, #faa7b3 52%, #ff8a9c);
}
.switch {
  float: right;
}
.scribe-box {
  padding: 0.666667rem 0;
  background: #fafafa;
  margin-top: 0.4rem;
}
.scribe-box .clearfix {
  display: flex;
  background: #fff;
  padding: 0.4rem;
  width: 91%;
  margin: 0 auto;
  border: 0.022rem solid #ddd;
  border-radius: 0.106667rem;
  justify-content: space-between;
  margin-bottom: 0.213333rem;
}
.scribe-box .fapiao img {
  width: 0.5rem;
  height: 0.5rem;
}
.scribe-box .paymoney {
  display: block;
  border: none;
  font-size: 0.373333rem;
  font-weight: 700;
  color: #eb5381;
  background: rgba(0, 0, 0, 0);
  margin-bottom: 0;
}
.scribe-box .paymoney span {
  display: block;
}
.scribe-box .paymoney span:last-child {
  margin-top: 0.1rem;
  font-size: 0.533333rem;
}
.scribe-rule {
  width: 100%;
  padding: 0 0.4rem;
  background: rgba(0, 0, 0, 0);
  box-sizing: border-box;
  display: flex;
  justify-content: space-between;
  margin-top: 0.3rem;
}
.scribe-rule .rules {
  display: inline-block;
  width: 48%;
  overflow: hidden;
  background: #faf4f6;
  padding: 0.233333rem 0.266667rem;
}
.rules .ruleName {
  font-size: 0.426667rem;
  color: #212121;
}
.rules .ruleDetail {
  font-size: 0.32rem;
  color: #757575;
  height: 1.333333rem;
  overflow: hidden;
  -webkit-line-clamp: 3;
  -webkit-box-orient: vertical;
  display: -webkit-box;
  text-overflow: ellipsis;
  margin-top: 0.3rem;
}
.scribe-conctet {
  width: 100%;
  padding: 0.3rem 0.4rem;
  background: rgba(0, 0, 0, 0);
  color: #757575;
  padding-bottom: 1.666667rem;
}
.scribe-pay {
  display: block;
  width: 100%;
  position: fixed;
  bottom: 0rem;
  background: #fff;
  z-index: 666;
  padding: 0.3rem;
}
.scribe-pay .sure-btn {
  display: block;
  background: #fff;
  width: 97%;
  margin: 0 auto;
  text-align: center;
  line-height: 1rem;
  border-radius: 0.08rem;
  border: 0.0266rem solid #f16b80;
  color: #f16b80;
  font-weight: 700;
}
</style>
<style>
.mint-switch-input:checked + .mint-switch-core {
  border-color: #f16b80 !important;
  background-color: #f16b80 !important;
}
</style>