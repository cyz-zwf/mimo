<template>
  <div class="collection">
    <div class="top">
        <div></div>
        <div></div>
      <div>收藏</div>
      <div>新建分组</div>
    </div>
    <div class="like">
        <img src="http://127.0.0.1:5050/images/detail/yuanben1.jpg" class="image">
        <div class="mytext">
            <p>我喜欢的房源 <span>2个房源</span></p>
        </div>
    </div>
  </div>
</template>
<script>
export default {};
</script>
<style scoped>
.collection div.top {
  height: 1.6rem;
  display: flex;
  border-bottom:.01rem solid rgba(158, 154, 154 ,.8);
  justify-content: space-around;
  line-height: 1.8rem;
  font-size:0.4rem;
}
.like{
    height:7.7rem;
    padding:0.2rem;
      border-bottom:.01rem solid rgba(158, 154, 154 ,.8);
}
.image{
    width:100%;
    height:6rem;
}
.mytext{
    padding: 0.5rem;
}
span{
    color:#999;
}
</style>