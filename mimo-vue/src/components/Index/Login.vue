<template>
  <div class="log-main-box">
    <div class="log-box">
      <div class="log-right-icons" @click="jumpIndexs">
        <img :src="this.hostUrl+'images/inhome/scribeimg/leftjump.png'" />
      </div>
      <div class="top-wrap">
        <span>&nbsp;</span>
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
        <!-- 短信验证登录 -->
        <div class="log-tab" v-show="!isDiv">
          <div class="res-info">未注册的手机号验证后将自动创建该账号</div>
          <div class="frame-box">
            <div class="log-tab-icon"></div>
            <input
              type="text"
              maxlength="11"
              class="log-tab-input"
              placeholder="手机号"
              v-model="phoneNum"
              @blur="handle"
            />
          </div>
          <div class="log-tab-info infos" v-show="!isClassCode">
            <span class="tab-info-icon"></span>
            手机号格式错误,请输入11位有效数字
          </div>
          <div class="frame-box">
            <div class="log-tab-icon log-tab-codeicon"></div>
            <input
              type="text"
              maxlength="6"
              class="log-tab-input"
              placeholder="请输入验证码"
              v-model="phoneCode"
            />
            <div :class="isClass?'log-tab-ic ices':'log-tab-ic'"></div>
            <div class="log-tab-code">
              <button
                :disabled="!isClassCode"
                :class="isClass?'get-sms ice':'get-sms'"
                @click="getCode"
              >{{dataTime>0?`已发送(${dataTime}s)`:"获取验证码"}}</button>
            </div>
          </div>
          <div class="login-btn" @click="loginCode">登录</div>
        </div>
        <!-- 密码登录 -->
        <div class="log-tab" v-show="isDiv">
          <div class="frame-box">
            <div class="log-tab-icon"></div>
            <input
              type="text"
              maxlength="11"
              class="log-tab-input"
              placeholder="手机号"
              v-model="phoneNum"
              @blur="handle"
            />
          </div>
          <div class="log-tab-info" v-show="!isClassCode">
            <span class="tab-info-icon"></span>
            手机号格式错误,请输入11位有效数字
          </div>
          <div class="frame-box">
            <div class="log-tab-icon log-tab-codeicon"></div>
            <input
              type="text"
              maxlength="6"
              class="log-tab-input"
              placeholder="请输入密码"
              v-model="mimaCode"
            />
          </div>
          <div class="login-btn" @click="logonMIma">登录</div>
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
      phoneNum: "", // 手机号码
      phoneCode: "", // 前台输入验证码
      codeNum: "", // 后台发送的验证码
      mimaCode: "", // 密码
      intervalId: "",
      isDiv: true, // 显示普通或者短信登录
      isClassCode: true
    };
  },
  methods: {
    isSelected() {
      this.isSelect = !this.isSelect;
      this.isDiv = !this.isDiv;
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
          .get("sedsms", { params: { phone: this.phoneNum } })
          .then(res => {
            console.log(res.data);
            this.codeNum = res.data.msg;
            let codes = res.data.code;
            let phoneN = res.data.phoneCode;
            if (codes == -1) {
              this.$store.commit("userName", phoneN);
              this.$router.push("/reg");
            }
          });
      }
    },
    handle() {
      // 鼠标离开输入框触发事件
      var code = /^1[3-9]\d{9}$/.test(this.phoneNum);
      if (code) {
        this.isClassCode = true;
      } else {
        this.isClassCode = false;
      }
    },
    loginCode() {
      if (this.phoneCode == this.codeNum) {
        this.$store.commit("increment", this.phoneNum);
        this.$router.push("/");
      } else {
        this.$toast({
          message: "没收到短信?请稍后试试再发送一次",
          duration: 1500
        });
      }
    },
    jumpIndexs() {
      this.$router.push("/");
    },
    logonMIma() {
      this.phoneNum;

      this.axios
        .get("mimaCode", {
          params: { phone: this.phoneNum, mima: this.mimaCode }
        })
        .then(res => {
          let userData = res.data.msg[0];
          this.$store.commit("info", userData);
          this.$router.push("/");
        });
    }
  },
  computed: {
    isClass() {
      return /^1[3-9]\d{9}$/.test(this.phoneNum);
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
.log-box .log-right-icons {
  position: absolute;
  top: 13px;
  left: 12px;
}
.log-right-icons img {
  width: 12px;
  height: 16px;
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
  width: 5rem;
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
.log-tab {
  position: relative;
}
.log-tab .frame-box {
  position: relative;
  margin-bottom: 0.8rem;
}
.log-tab .log-tab-info {
  display: block;
  position: absolute;
  top: 1.2rem;
  left: 0rem;
  font-size: 0.3rem;
  color: #f05b72;
}
.log-tab .infos {
  top: 2.1rem;
}
.log-tab .nowphone {
  display: block;
}
.res-info {
  color: #aaaaaa;
  font-size: 0.4rem;
  text-align: center;
  margin-bottom: 0.4rem;
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
.frame-box .log-tab-codeicon {
  background-image: url("http://127.0.0.1:5050/images/inhome/seimg/loginicon2.png");
  width: 0.45333rem;
  height: 0.45333rem;
}

.frame-box .log-tab-ic {
  width: 0.02rem;
  height: 0.36rem;
  position: absolute;
  top: 0.31rem;
  right: 2.4rem;
  background: #cacaca;
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
  color: #cacaca;
}
.frame-box .ice {
  color: #333333;
}
.frame-box .ices {
  background: #333333;
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