<template>
  <div>
    <div class="top">
      <div class="imgSZ"></div>
      <div class="middle">
        <div class="lt">
          <div>ia 不知不觉</div>
          <div class="jiaoyin"></div>
          <div class="qiandao">签到</div>
        </div>
        <div class="rt">
            <div class="touxian"></div>
        </div>
      </div>
      <div class="bottom">
        <div>开通超级会员立省1598元</div>
        <div>立即开通</div>
      </div>
    </div>
  </div>
</template>
<script>
export default {};
</script>
<style scoped>
.top {
  height: 8rem;
  font-family: Avenirregular, sans-serif !important;
  font-size: 16px;
  padding: 0px 20px;
  position: relative;
  color:#fff;
  background:linear-gradient(to top,rgb(38, 34, 39) 0%,rgb(148, 136, 137) 100%)
  /* rgb(109, 80, 82) */
}
.imgSZ {
  width: 0.8rem;
  height: 0.8rem;
  background: url("http://127.0.0.1:5050/Me/ic_se.png") no-repeat;
  background-size: 100%;
  position: absolute;
  right: 0.3rem;
  top: 0.2rem;
}
.middle {
  height: 3rem;
  /* border: 1px solid #000; */
  position: absolute;
  top: 25%;
  width: 90%;
}
.lt{
    float:left;
}
.rt{
    float:right;
    
}
.jiaoyin {
  background: url("http://127.0.0.1:5050/Me/ic_jiaoyin.png") no-repeat;
  background-size: 100%;
  width: 0.5rem;
  height: 0.5rem;
  position: absolute;
  top: 1.3rem;
  left: 0.3rem;
}
.qiandao {
  border: 1px solid #fff;
  margin-top: 0.7rem;
  padding: 0.2rem 0 0.2rem 0.5rem;
  font-size: 12px;
  border-radius:0.21rem;
}
.touxian{
    width:2.2rem;
    height:2.2rem;
    background:url("http://127.0.0.1:5050/Me/touxian.jpg");
    background-size:100%;
    border-radius: 50%;
}
.bottom {
  width: 90%;
  height: 1.2rem;
  /* background-color: rgb(32, 31, 31); */
  position: absolute;
  bottom: 0;
  border-top-left-radius: 12px;
  border-top-right-radius: 12px;
  color: blanchedalmond;
  background:linear-gradient(to top,rgb(32, 31, 31) 0%,rgb(36, 31, 2) 100%)
}
</style>