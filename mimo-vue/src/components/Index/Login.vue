<template>
  <div class="log-main-box">
    <div class="log-box">
      <div class="top-wrap">
        <span>注册</span>
      </div>
      <div class="top-logo">
        <img src="http://127.0.0.1:5050/images/inhome/seimg/toplogo.png" alt />
      </div>
      <div>
        <div class="mint-navbar">
          <div
            :class="isSelect?'mint-tab-item is-selected':'mint-tab-item'"
            @click="isSelected"
          >普通登录</div>
          <div
            :class="!isSelect?'mint-tab-item is-selected':'mint-tab-item'"
            @click="isSelected"
          >短信快捷登录</div>
        </div>
        <div class="log-tab">
          <div class="frame-box">
            <div class="log-tab-icon"></div>
            <input type="text" class="log-tab-input" placeholder="手机号" v-model="phoneNum" />
          </div>
          <div class="log-tab-info">手机号格式错误</div>
          <div class="frame-box">
            <div class="log-tab-icon"></div>
            <input type="text" class="log-tab-input" placeholder="请输入验证码" />
            <div class="log-tab-ic"></div>
            <div class="log-tab-code">
              <button class="get-sms" @click="getCode">{{dataTime>0?`已发送(${dataTime}s)`:"获取验证码"}}</button>
            </div>
          </div>
          <div class="login-btn">登录</div>
        </div>
      </div>
    </div>
  </div>
</template>
<script>
export default {
  data() {
    return {
      isSelect: true,
      dataTime: 0, // 计时的时间
      phoneNum: "",
      intervalId: ""
    };
  },
  methods: {
    isSelected() {
      this.isSelect = !this.isSelect;
    },
    getCode() {
      //  如果当前没有计时
      if (!this.dataTime) {
        // 启动倒计时
        this.dataTime = 60;
        this.intervalId = setInterval(() => {
          this.dataTime--;
          if (this.dataTime <= 0) {
            // 停止计时
            clearInterval(this.intervalId);
          }
        }, 1000);
        // 发送ajax请求(向指定手机号发送验证码)
        this.axios

          .get("sms_code", { params: { phone: this.phoneNum } })
          .then(res => {
            console.log(res);
          });
      }
    }
  },
  watch: {
    phoneNum() {
      console.log(this.phoneNum);
    }
  }
};
</script>
<style scoped>
.log-main-box {
  padding: 0 0.3333rem;
}
.log-box {
  width: 100%;
  height: 518px;
  margin: 0 auto;
  /* background: #eee; */
}
.log-box .top-wrap {
  display: flex;
  justify-content: space-between;
  align-items: center;
  font-size: 0.426667rem;
  color: #f05b72;
  line-height: 46px;
  flex-direction: row-reverse;
}
.log-box .top-logo {
  text-align: center;
  margin-bottom: 30px;
}
.log-box .top-logo img {
  width: 2.4rem;
}
.log-box .mint-navbar {
  color: #666;
  padding: 0.2rem 0 0.77777rem 0;
}
.log-box .mint-navbar .is-selected {
  color: #f05b72;
  border-bottom: 0.053333rem solid;
  font-weight: 700;
}
.log-tab .frame-box {
  position: relative;
  margin-bottom: 0.6rem;
}
.frame-box .log-tab-input {
  width: 100%;
  height: 1rem;
  border: 1px solid #eee;
  box-sizing: border-box;
  padding: 0 0.4rem;
  padding-left: 1.2rem;
}
.frame-box .log-tab-icon {
  width: 0.45333rem;
  height: 0.45333rem;
  background: url("http://127.0.0.1:5050/images/inhome/seimg/loginicon.png")
    no-repeat;
  position: absolute;
  background-size: 0.453333rem 0.453333rem;
  top: 0.2444rem;
  left: 0.4rem;
}
.frame-box .log-tab-ic {
  width: 0.02rem;
  height: 0.36rem;
  position: absolute;
  top: 0.31rem;
  right: 2.4rem;
  background: #959ea7;
}
.log-tab-code {
  position: absolute;
  width: 2.6rem;
  /* height: 1rem; */
  top: 0rem;
  right: 0rem;
  /* background: #f05b72; */
  text-align: center;
  line-height: 1rem;
}
.log-tab-code .get-sms {
  font-size: 0.32222rem;
  background: none;
  border: none;
}
input::-webkit-input-placeholder {
  color: #cacaca;
}
/* Mozilla Firefox 4-18 */
input:-moz-input-placeholder {
  color: #cacaca;
}
/* Mozilla Firefox 19+ */
input::-moz-input-placeholder {
  color: #cacaca;
}
/* IE 10-11 */
input::-ms-input-placeholder {
  color: #cacaca;
}
.log-tab .login-btn {
  display: block;
  width: 100%;
  background: #f05b72;
  line-height: 1.066667rem;
  color: #fff;
  text-align: center;
}
</style>