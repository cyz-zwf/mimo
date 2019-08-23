<template>
  <div id="pre">
    <swiper :options="swiperOption">
      <swiper-slide v-for="item in 6" :key="item">
        <a href="javascript:;">
          <div></div>
          <div class="_q1e9ikp" style="color:#714e33">整套公寓 · 1室1卫1床</div>
          <div class="_8ij7mvh">邻长隆景区 .广州南站.大夫山.客村.地铁钟村站.落地窗舒适阳台大床房</div>
          <div class="_1c084z5a">
            <span>￥201</span>
            <s style="color:#aaa;">￥228</s>
            每晚
          </div>
          <div class="comment">
            <span class="_1b3pg289"></span>
            <span class="_j6pj0i">465</span>
          </div>
        </a>
      </swiper-slide>
    </swiper>
    <mt-button size="large" plain type="danger">显示更多广州的房源</mt-button>
    <globalHouse style="margin-top:2.5rem"></globalHouse>
    <recommend style="margin-bottom:1rem"></recommend>
  </div>
</template>

<script>
import Vue from "vue";
import VueAwesomeSwiper from "vue-awesome-swiper";
import GlobalHouse from './GlobalHouse.vue';
import Recommend from '../common/Recommend';
Vue.use(VueAwesomeSwiper);
import { swiper, swiperSlide } from "vue-awesome-swiper";
import { Button } from "mint-ui";
Vue.component(Button.name, Button);
export default {
  data() {
    return {
      swiperOption: {
        slidesPerView: 1.8,
        spaceBetween: 30,
        pagination: {
          el: ".swiper-pagination",
          clickable: true
        }
      }
    };
  },
  components:{
    "globalHouse":GlobalHouse,
    "recommend":Recommend
  }
};
</script>
<style scoped>
#pre {
  position: relative;
  top: 20px;
  height: 500px;
}
a {
  text-decoration: none;
}
#pre .swiper-slide {
  width: 157.6px !important;
}
.swiper-slide a div:first-child {
  background-image: url(http://127.1:5050/images/inhome/homeimg/home1.jpg);
  width: 100% !important;
  background-size: 200px 200px !important;
  background-position: 50% 50% !important;
  background-repeat: no-repeat;
  padding-top: 66.7% !important;
}
._q1e9ikp {
  font-weight: bold !important;
  font-size: 10px !important;
  line-height: 13px !important;
  display: -webkit-box !important;
  display: -moz-box !important;
  display: -ms-flexbox !important;
  display: -webkit-flex !important;
  display: flex !important;
  height: 13px !important;
}
._8ij7mvh {
  font-weight: bold !important;
  color: #484848 !important;
  margin-bottom: 2px !important;
  font-size: 14px !important;
  line-height: 18px !important;
  overflow: hidden;
  max-height: 34px;
  text-overflow: ellipsis;
  -webkit-line-clamp: 2;
  -webkit-box-orient: vertical;
  word-break: break-all;
}
._1c084z5a {
  display: -webkit-box !important;
  overflow: hidden !important;
  max-height: 22px !important;
  text-overflow: ellipsis !important;
  -webkit-line-clamp: 1 !important;
  -webkit-box-orient: vertical !important;
  word-break: break-all !important;
  color: #484848 !important;
  font-size: 12px !important;
  line-height: 16px !important;
  height: 16px !important;
  margin-bottom: 0px !important;
}
.comment {
  display: flex !important;
}
._1b3pg289 {
  height: 20px !important;
  width: 50px !important;
  background-size: auto 9px !important;
  background-repeat: no-repeat !important;
  background-image: url(http://127.1:5050/images/inhome/homeimg/star.png);
  background-position: left 5px !important;
}
._j6pj0i {
  font-weight: bold !important;
  color: #484848 !important;
  font-size: 12px !important;
  line-height: 20px !important;
  margin-left: 4px !important;
}
.mint-button--large {
  position: absolute;
  display: block;
  width: 100%;
  top: 220px;
  font-size: 14px;
  color: #008489;
  font-weight: 600;
  background: #fff;
  border: 1px solid #008489;
}
</style>