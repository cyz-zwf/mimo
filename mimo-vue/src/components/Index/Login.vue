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
          <div class="mint-tab-item">普通登录</div>
          <div class="mint-tab-item">短信快捷登录</div>
        </div>
      </div>
    </div>
  </div>
</template>
<script>
export default {};
</script>
<style scoped>
.log-main-box {
  padding: 0 0.3333rem;
}
.log-box {
  width: 100%;
  height: 518px;
  margin: 0 auto;
  background: #eee;
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
</style>