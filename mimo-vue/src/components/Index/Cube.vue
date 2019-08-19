<template>
  <div id="slide">
    <swiper :options="swiperOption">
      <swiper-slide v-for="item in 10" :key="item">
        <a href="javascript:;">
          <div></div>
          <div class="_q1e9ikp" style="color:#714e33">整套公寓 · 1室1卫1床</div>
          <div class="_8ij7mvh">邻长隆景区 .广州南站.大夫山.客村.地铁钟村站.落地窗舒适阳台大床房</div>
          <div class="_1c084z5a">
            <span>￥201</span>
            <s style="color:#aaa;">￥228</s>
            每晚
            <span class="comment"></span>
            <span class="_j6pj0i">465</span>
          </div>
          <!-- <div class="comment"> -->
          <!-- </div> -->
        </a>
      </swiper-slide>
    </swiper>
    <mt-button size="large">显示更多广州的房源</mt-button>
  </div>
</template>

<script>
import Vue from "vue";
import VueAwesomeSwiper from "vue-awesome-swiper";
Vue.use(VueAwesomeSwiper);
import { swiper, swiperSlide } from "vue-awesome-swiper";
import { Button } from "mint-ui";
Vue.component(Button.name, Button);
export default {
  data() {
    return {
      swiperOption: {
        effect: "cube",
        grabCursor: true,
        cubeEffect: {
          shadow: true,
          slideShadows: true,
          shadowOffset: 20,
          shadowScale: 0.94
        },
        pagination: {
          el: ".swiper-pagination"
        }
      }
    };
  }
};
</script>

<style scoped>
.swiper-inner {
  position: relative;
  overflow: hidden;
  height: 330px;
  padding: 15px;
}
a {
  text-decoration: none;
}
.swiper-container {
  width: 300px !important;
  height: 400px;
  position: absolute;
  left: 50%;
  /* top: -200px; */
  margin-left: -150px;
  /* margin-top: -205px; */
}
.swiper-slide {
  background-position: center;
  background-size: cover;
}
.swiper-slide a div:first-child {
  background-image: url(http://127.1:5050/inhome/homeimg/home1.jpg);
  background-repeat: no-repeat;
  background-size: 300px 300px;
  width: 300px;
  height: 300px;
}
.swiper-slide a div:last-child {
  display: flex !important;
}
/* .swiper-slide a div:last-child div:first-child  */
.comment {
  background-image: url(http://127.1:5050/inhome/homeimg/star.png);
  height: 32px !important;
  width: 90px !important;
  background-size: auto 16px !important;
  background-repeat: no-repeat !important;
  background-position: left 9px !important;
  margin-left: 50px;
}
._q1e9ikp {
  font-weight: bold !important;
  font-size: 16px !important;
  line-height: 32px !important;
  display: -webkit-box !important;
  display: -moz-box !important;
  display: -ms-flexbox !important;
  display: -webkit-flex !important;
  display: flex !important;
  height: 32px !important;
}
._8ij7mvh {
  overflow: hidden;
  max-height: 80px;
  text-overflow: ellipsis;
  word-break: break-all;
  font-weight: bold !important;
  color: #484848 !important;
  margin-bottom: 2px !important;
  font-size: 20px !important;
  line-height: 40px !important;
}
._1c084z5a {
  display: -webkit-box !important;
  overflow: hidden !important;
  text-overflow: ellipsis !important;
  -webkit-line-clamp: 1 !important;
  -webkit-box-orient: vertical !important;
  word-break: break-all !important;
  color: #484848 !important;
  font-size: 16px !important;
  line-height: 37px !important;
  height: 37px !important;
  margin-bottom: 0px !important;
}
._j6pj0i {
  font-weight: bold !important;
  color: #484848 !important;
  font-size: 16px !important;
  line-height: 37px !important;
  margin-left: 6px !important;
}
.mint-button--large {
  position: absolute;
  display: block;
  width: 100%;
  top: 450px;
  font-size: 14px;
  color: #008489;
  font-weight: 600;
  background: #fff;
  border: 1px solid #008489;
}
</style>