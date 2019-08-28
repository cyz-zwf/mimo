<template>
  <div id="slide">
    <swiper :options="swiperOption">
      <swiper-slide v-for="(item,n) of arr" :key="n">
        <a href="javascript:;">
          <div  v-bind:style="{ 'background-image': 'url(http://127.0.0.1:5050/'+item.pic+ ')' }" ></div>
          <div class="_q1e9ikp" style="color:#714e33">{{item.title}}</div>
          <div class="_8ij7mvh">{{item.subtitle}}</div>
          <div class="_1c084z5a">
            <span>￥{{item.price}}</span>
            <s style="color:#aaa;">￥{{item.oldPrices}}</s>
            每晚
            <span class="comment"></span>
            <span class="_j6pj0i">{{item.evaluate}}</span>
          </div>
        </a>
      </swiper-slide>
    </swiper>
    <router-link to="/iframe">
      <mt-button size="large" plain type="danger">AR看房</mt-button>
    </router-link>
  </div>
</template>
<script>
import Vue from "vue";
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
        },
      }
    };
  },
    props:["arr","i"],
    
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
  margin-left: -150px;
}
.swiper-slide {
  background-position: center;
  background-size: cover;
}
.swiper-slide a div:first-child {
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
  background-image: url(http://127.1:5050/images/inhome/homeimg/star.png);
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