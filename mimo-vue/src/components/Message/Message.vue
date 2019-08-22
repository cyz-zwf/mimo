<template>
    <div class="Message">
    <div class="top">
        <div></div>
        <div></div>
      <div>消息</div>
      <img src="http://127.0.0.1:5050/images/message/jingzi.png" class="jingzi">
    </div>
    <div class="like">
        <!-- <img src="http://127.0.0.1:5050/images/detail/yuanben1.jpg" class="image"> -->
        <div class="mytext">
            <p>我喜欢的房源 <span>2个房源</span></p>
        </div>
    </div>
  </div>
</template>
<script>
export default {
    
}
</script>
<style scoped>
.Message div.top {
  height: 1.6rem;
  display: flex;
  border-bottom:.01rem solid rgba(158, 154, 154 ,.8);
  justify-content: space-around;
  line-height: 1.8rem;
  font-size:0.4rem;
}
.jingzi{
    width:1rem;
    height:1rem;
    position:relative;
    top:0.4rem;
}
</style>