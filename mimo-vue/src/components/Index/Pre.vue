<template>
  <div id="pre">
    <div id="hot">
      <swiper :options="swiperOption">
        <swiper-slide v-for="(item,i) of pname" :key="i">
          <mt-button @click="hot(i)" :class="{active:Background==i}">
            <div class="_1il9yl1" v-text="item.pname"></div>
            <div class="_s80x8l" v-text="item.pnum"></div>
          </mt-button>
        </swiper-slide>
      </swiper>
    </div>
    <swiper :options="swiperOption">
      <swiper-slide v-for="(item,i) of arr" :key="i">
        <router-link to="/detail">
           <div  v-bind:style="{ 'background-image': 'url(http://127.0.0.1:5050/'+item.pic+ ')' }" ></div>
          <div class="_q1e9ikp" style="color:#714e33">{{item.title}}</div>
          <div class="_8ij7mvh">{{item.subtitle}}</div>
          <div class="_1c084z5a">
            <span>￥{{item.price}}</span>
            每晚
          </div>
          <div class="comment">
            <span class="_1b3pg289"></span>
            <span class="_j6pj0i">{{item.evaluate}}</span>
          </div>
        </router-link>
      </swiper-slide>
    </swiper>
    <mt-button size="large" plain type="danger">显示更多广州的房源</mt-button>
    <globalHouse style="margin-top:2.5rem"></globalHouse>
    <recommend style="margin-bottom:1.5rem"></recommend>
  </div>
</template>

<script>
import Vue from "vue";
import GlobalHouse from "./GlobalHouse.vue";
import Recommend from "../common/Recommend";
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
      },
      Background: 0,
      arr:[],
      pid:1,
      i:1,
    }
  },
  components: {
    globalHouse: GlobalHouse,
    recommend: Recommend
  },
  props:["pname"],
    created() {
      var pid=this.i
      // console.log(pid)
        this.axios("/house", { params: { pid: pid} }).then(res => {
        this.arr = res.data.data;
        // console.log(this.arr)
      });
  },
  methods: {
         hot(i) {
            if(this.Background != i) {
                 this.Background = i;
                this.i = i+1;
                var pid=this.i;
                // console.log(pid)
                  this.axios("/house", { params: { pid: pid} }).then(res => {
                        this.arr = res.data.data;
                        // console.log(this.arr)
                     });
             }
      }
  }
}
</script>
<style scoped>
@import url(../../assets/css/swiper.min.css);
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
  width: 100% !important;
  background-size: 200px 200px !important;
  background-position: 50% 50% !important;
  background-repeat: no-repeat;
  padding-top: 66.7% !important;
}
._q1e9ikp {
  padding-top: 5px;
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
  font-size: 14px;
  color: #008489;
  font-weight: 600;
  background: #fff;
  border: 1px solid #008489;
}

#pre #hot .swiper-slide {
  width: 15% !important;
  margin: 0 30px;
} 
#pre #hot .swiper-slide .active {
  border: 1px solid #f16b80;
  background-image: linear-gradient(90deg, #f16b80 100%, #e64966 0%);
  color:#fff !important;
}
#pre #hot .mint-button--default {
  color: #000 !important;
}
#pre #hot .swiper-slide:first-child {
  margin-left: -1% !important;
}
#pre #hot .swiper-slide button {
  background-color: #ffffff;
  border-radius: 3px;
  border: 1px solid;
  border-color: #d8d8d8;
  box-shadow: 0px 1px 2px rgba(0, 0, 0, 0.15);
  height: 48px;
  width: 105px;
  font-size: 16px !important;
  text-align: center !important;
  color: #000;
}
#pre #hot .swiper-container {
  padding: 5px !important;
}
</style>