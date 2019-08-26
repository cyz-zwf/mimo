<template>
  <div class="subscribe">
    <div class="scribe-order">
      <span>
        <img :src="this.hostUrl+'images/inhome/scribeimg/leftjump.png'" class="leftjump" />
      </span>
      <span>立即下单</span>
    </div>
    <div class="scribe-main">123</div>
  </div>
</template>

<script>
export default {
  data() {
    return {};
  }
};
</script>

<style scoped>
.scribe-order {
  width: 100%;
  display: fixed;
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
  height: 100px;
  background: #e0e0e0;
}
</style>