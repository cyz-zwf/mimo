<template>
  <div id="slide">
    <div>
      <p class="_gxyluf">秋季特惠房源</p>
      <p class="_jd04iq">低至 8 折，可叠加使用礼券</p>
    </div>
    <swiper :options="swiperOption">
      <swiper-slide>
        <button @click="test">广州</button>
      </swiper-slide>
      <swiper-slide>
        <button>上海</button>
      </swiper-slide>
      <swiper-slide>
        <button>重庆</button>
      </swiper-slide>
      <swiper-slide>
        <button>深圳</button>
      </swiper-slide>
      <swiper-slide>
        <button>成都</button>
      </swiper-slide>
      <swiper-slide>
        <button>长沙</button>
      </swiper-slide>
      <swiper-slide>
        <button>北京</button>
      </swiper-slide>
      <swiper-slide>
        <button>厦门</button>
      </swiper-slide>
    </swiper>
    <cube></cube>
    <div>
      <p class="_gxyluf">国内热门目的地</p>
    </div>
    <swiper :options="swiperOption">
      <swiper-slide>
        <button @click="test">
          <div class="_1il9yl1">成都</div>
          <div class="_s80x8l">26000+房源</div>
        </button>
      </swiper-slide>
      <swiper-slide>
        <button>
          <div class="_1il9yl1">上海</div>
          <div class="_s80x8l">33000+房源</div>
        </button>
      </swiper-slide>
      <swiper-slide>
        <button>
          <div class="_1il9yl1">重庆</div>
          <div class="_s80x8l">20000+房源</div>
        </button>
      </swiper-slide>
      <swiper-slide>
        <button>
          <div class="_1il9yl1">北京</div>
          <div class="_s80x8l">28000+房源</div>
        </button>
      </swiper-slide>
      <swiper-slide>
        <button>
          <div class="_1il9yl1">杭州</div>
          <div class="_s80x8l">19000+房源</div>
        </button>
      </swiper-slide>
      <swiper-slide>
        <button>
          <div class="_1il9yl1">大理</div>
          <div class="_s80x8l">8000+房源</div>
        </button>
      </swiper-slide>
    </swiper>
    <ppre></ppre>
  </div>
</template>

<script>
import Vue from "vue";
import VueAwesomeSwiper from "vue-awesome-swiper";
import Cube from "./Cube";
import Pre from "./Pre";
Vue.use(VueAwesomeSwiper);
import { swiper, swiperSlide } from "vue-awesome-swiper";
export default {
  data() {
    return {
      swiperOption: {
        slidesPerView: "auto",
        centeredSlides: true,
        spaceBetween: 30,
        pagination: {
          el: ".swiper-pagination",
          clickable: true
        }
      }
    };
  },
  components: {
    swiper,
    swiperSlide,
    cube: Cube,
    ppre: Pre
  },
  methods: {
    test() {
      this.backgroundColor = "#008489";
      // alert(this.background);
    }
  }
};
</script>

<style scoped>
@import url(../../assets/css/swiper.min.css);
#slide {
  position: relative;
  /* top: 200px; */
  /* left: 0; */
  height: 540px;
  margin-left: 24px !important;
  margin-right: 24px !important;
}
._gxyluf {
  font-size: 18px !important;
  font-weight: 700 !important;
  line-height: 26px !important;
}
._jd04iq {
  font-size: 13px !important;
  line-height: 19px !important;
}
.swiper-slide {
  width: 10%;
  margin: 0 20px;
}
.swiper-slide:first-child {
  margin-left: -80% !important;
}
.swiper-slide button {
  background-color: #ffffff;
  border-radius: 3px;
  border: 1px solid;
  border-color: #d8d8d8;
  box-shadow: 0px 1px 2px rgba(0, 0, 0, 0.15);
  height: 48px;
  width: 72px;
  font-size: 14px !important;
  text-align: center !important;
  font-weight: 900 !important;
}
._1il9yl1 {
  font-size: 14px !important;
  text-align: center !important;
  font-weight: 900 !important;
}
._s80x8l {
  font-size: 9px !important;
  padding-top: 2px !important;
  text-align: center !important;
}
</style>