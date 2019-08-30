<template>
  <div class="reg-main">
    <div class="reg-jump" @click="jumpLastLogin">
      <img :src="this.hostUrl+'images/inhome/scribeimg/leftjump.png'" alt />
    </div>
    <div class="reg-title">
      <span>注册新账号</span>
    </div>
    <div class="reg-word">
      <span>请提供你的姓名，以确保你的真实身份。我们会严格保密此信息</span>
    </div>
    <div class="reg-info">
      <div class="reg-box">
        <div class="reg-box-icon"></div>
        <input type="text" placeholder="请输入姓名" class="infofix" v-model="unames" />
      </div>
      <div class="reg-box">
        <div class="reg-box-icon regIcon"></div>
        <input type="password" placeholder="请输入密码" class="infofix" v-model="upwds" />
      </div>
      <div class="reg-box">
        <div class="reg-box-icon regIcon"></div>
        <input type="password" placeholder="请确认密码" class="infofix" v-model="upwdse" />
      </div>
    </div>
    <div class="reg-btn" @click="regInfo">注册</div>
  </div>
</template>

<script>
export default {
  data() {
    return {
      unames: "", // 用户名
      upwds: "", //密码
      upwdse: "" // 确认密码
    };
  },
  methods: {
    jumpLastLogin() {
      this.$router.push("/login");
    },
    regInfo() {
      if (this.upwds == this.upwdse) {
        let unames = this.unames;
        let upwdse = this.upwdse;
        let unamePhone = this.$store.getters.getPhone;
        this.axios

          .get("reginfo", { params: { unames, upwdse, unamePhone } })
          .then(res => {
            console.log(res.data);
            this.$toast("注册成功，请登录")
            this.$router.push("/login");
          });
      } else {
        this.$toast({ message: "两次密码输入不一致!", duration: 1000 });
      }
    }
  },
  mounted() {
    //  console.log(this.$store.getters.getPhone);
  }
};
</script>

<style scoped>
.reg-main {
  padding: 15px;
}
.reg-main .reg-jump {
  width: 100%;
  line-height: 30px;
  /* background: #eee; */
  margin-bottom: 10px;
}
.reg-main .reg-title {
  display: block;
  width: 100%;
  color: #484848;
  font-size: 25px;
  padding: 2px 0;
}
.reg-main .reg-word {
  color: rgb(72, 72, 72);
  font-size: 15px;
  font-weight: 300;
  margin: 10px 0;
}
.reg-jump img {
  width: 12px;
  height: 16px;
}
.reg-info .reg-box {
  position: relative;
}
.reg-info .infofix {
  width: 100%;
  height: 38px;
  border: 1px solid #eee;
  box-sizing: border-box;
  padding: 0 0.4rem;
  padding-left: 1.2rem;
  margin-bottom: 0.6rem;
}
.reg-box .reg-box-icon {
  width: 0.45333rem;
  height: 0.45333rem;
  background: url("http://127.0.0.1:5050/images/inhome/scribeimg/uname.png")
    no-repeat;
  position: absolute;
  background-size: 0.453333rem 0.453333rem;
  top: 0.2544rem;
  left: 0.4rem;
}
.reg-box .regIcon {
  background-image: url("http://127.0.0.1:5050/images/inhome/scribeimg/upwd.png");
}
.reg-main .reg-btn {
  display: block;
  width: 100%;
  background: #f05b72;
  line-height: 1.066667rem;
  color: #fff;
  text-align: center;
}
input::-webkit-input-placeholder {
  color: #aaa;
}
/* Mozilla Firefox 4-18 */
input:-moz-input-placeholder {
  color: #aaa;
}
/* Mozilla Firefox 19+ */
input::-moz-input-placeholder {
  color: #aaa;
}
/* IE 10-11 */
input::-ms-input-placeholder {
  color: #aaa;
}
</style>