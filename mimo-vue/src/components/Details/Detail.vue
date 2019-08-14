<template>
  <div class="detail">
    <mt-header fixed>
      <router-link to="/" slot="left">
        <mt-button icon="back"></mt-button>
      </router-link>
      <mt-button slot="right" class="share"></mt-button>
      <mt-button slot="right" class="heart" @click="collection"></mt-button>
    </mt-header>
    <div class="detail_main">
      <div class="detail_top">
        <mt-swipe :auto="4000">
          <mt-swipe-item><img src="http://127.0.0.1:5050/detail/yuanben1.jpg" class="swipe_img"></mt-swipe-item>
          <mt-swipe-item><img src="http://127.0.0.1:5050/detail/yuanben2.jpg" class="swipe_img"></mt-swipe-item>
          <mt-swipe-item><img src="http://127.0.0.1:5050/detail/yuanben3.jpg" class="swipe_img"></mt-swipe-item>
          <mt-swipe-item><img src="http://127.0.0.1:5050/detail/yuanben4.jpg" class="swipe_img"></mt-swipe-item>
          <mt-swipe-item><img src="http://127.0.0.1:5050/detail/yuanben5.jpg" class="swipe_img"></mt-swipe-item>
        </mt-swipe>
      </div>
      <div class="detail_con">
        <div class="center_div">

        </div>
      </div>
    </div>
  </div>
</template>
<script>
export default {
  data(){
    return{

    }
  },
  methods:{
    collection(){

    }
  }
}
</script>
<style scoped>
.detail{
  background: #fff;
}
.mint-header{
  background-color: transparent;
  z-index: 2;
}
.share{
  background: url("http://127.0.0.1:5050/detail/det_share.png") no-repeat;
  background-size: 100%;
  width: .6rem;
  margin-top: 0.45rem;
  margin-right: 0.25rem;
}
.heart{
  background: url("http://127.0.0.1:5050/detail/det_heart.png") no-repeat;
  background-size: 100%;
  width: .6rem;
}
.detail_main{
  width: 100%;
}
.detail_top{
  position: relative;
  line-height: 0;
  height: 6.66667rem;
  overflow: hidden;
}
.swipe_img{
  width: 100%;
}
.detail_con{
  margin:.266667rem .4rem 0;
  border-radius: .213333rem;
}
.center_div{

}
</style>