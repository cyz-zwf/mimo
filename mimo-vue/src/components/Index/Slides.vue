<template>
  <div id="slide">
    <div>
      <p class="_gxyluf">秋季特惠房源</p>
      <p class="_jd04iq">低至 8 折，可叠加使用礼券</p>
    </div>
    <div>
      <swiper :options="swiperOption">
        <swiper-slide v-for="(item,i) of pname" :key="i" >
          <mt-button v-text="item.pname" @click="btn(i)" :class="{active:Background==i}"></mt-button>
        </swiper-slide>
      </swiper>
    </div>
    <cube :arr="arr" :i="i"></cube>
         <div>
      <p class="_gxyluf">国内热门目的地</p>
    </div>
    <ppre :pname="pname"></ppre>
  </div>
</template>

<script>
import Vue from "vue";
import Cube from "./Cube";
import Pre from "./Pre";
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
      },
      pname: [],
      Background: 0,
      arr:[],
      pid:1,
      i:1,
    };
  },
  created() {
    this.axios
      .get("/preferential", { params: { pname: this.pname } })
      .then(res => {
        // console.log(res.data.data);
        this.pname = res.data.data;
        // console.log(this.pname);
      });
      var pid=this.i
      console.log(pid)
        this.axios("/house", { params: { pid: pid} }).then(res => {
        this.arr = res.data.data;
        console.log(this.arr)
      });
  },
  components: {
    swiper,
    swiperSlide,
    cube: Cube,
    ppre: Pre
  },
  methods: {
    btn(i) {
        if(this.Background != i) {
        this.Background = i;
        this.i = i+1;
        var pid=this.i
        console.log(pid)
        this.axios("/house", { params: { pid: pid} }).then(res => {
        this.arr = res.data.data;
        console.log(this.arr)
      });
      }
    },
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
  width: 15%;
  margin: 0 20px;
}
.swiper-slide .active {
  border: 1px solid #f16b80;
  background-image: linear-gradient(90deg, #f16b80 100%, #e64966 0%);
  color:#fff !important;
}
.mint-button--default {
  color: #000 !important;
}
.swiper-slide:first-child { 
  margin-left: -60% !important;
} 
.swiper-slide button {
  background-color: #ffffff;
  border-radius: 3px;
  border: 1px solid;
  border-color: #d8d8d8;
  box-shadow: 0px 1px 2px rgba(0, 0, 0, 0.15);
  height: 48px;
  width: 85px;
  font-size: 16px !important;
  text-align: center !important;
  color: #000;
}
.swiper-container {
  padding: 5px !important;
}
._1il9yl1 {
  font-size: 16px !important;
  text-align: center !important;
}
._s80x8l {
  font-size: 9px !important;
  padding-top: 2px !important;
  text-align: center !important;
}
</style>