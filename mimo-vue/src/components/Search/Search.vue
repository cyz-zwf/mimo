<template>
  <div class="search">
    <div class="header">
      <div>
        <span class="ic_btn" @click="back"></span>
      </div>
      <div class="rep">
        <input type="text" class="search_input" />
        <span class="close"></span>
      </div>
      <div>
        <span class="ic_map"></span>
      </div>
    </div>
    <!-- 展示商品 -->
    <div class="brand">
      <div class="brand_top">
        <img src="http://127.0.0.1:5050/images/detail/yuanben1.jpg" alt />
        <span class="love" :class="{'is_collect':isCollect}" @click="collection"></span>
        <!-- class="love"  -->
      </div>
      <div class="text">
        <p>整套出租 · 2室一厅 · 2张床 · 宜住4人</p>
        <p>原本【空岛】奥帆，禅意智能海景民宿，地铁房</p>
        <p>※ 速订 ※ 长租优惠</p>
        <p>¥ 414</p>
      </div>
    </div>
  </div>
</template>
<script>
export default {
  data() {
    return {
      isCollect:false,  //此变量用于保存收藏状态
    };
  },
  methods: {
    //返回按钮
    back() {
      history.go(-1);
    },
    // 点击爱心变颜色,然后加载到收藏
    collection() {
      this.isCollect=!this.isCollect;  //取当前值的反值
    }
  }
};
</script>
<style scoped>
.header {
  height: 1.5rem;
  display: flex;
  justify-content: space-around;
  line-height: 1.5rem;
}
.header :nth-child(1) {
  flex-grow: 2;
}
.header :nth-child(2) {
  flex-grow: 8;
  position: relative;
}
.header :nth-child(3) {
  flex-grow: 2;
}
.ic_btn {
  display: block;
  width: 0.7rem;
  height: 0.7rem;
  background: url("http://127.0.0.1:5050/images/Search/ic_btn1.png") no-repeat;
  background-size: 100%;
  margin-left: 0.2rem;
  margin-top: 0.4rem;
}
.ic_map {
  display: block;
  width: 0.7rem;
  height: 0.7rem;
  background: url("http://127.0.0.1:5050/images/Search/ic_map.png") no-repeat;
  background-size: 100%;
  margin-left: 0.4rem;
  margin-top: 0.4rem;
}

.close {
  display: block;
  width: 0.7rem;
  height: 0.7rem;
  background: url("http://127.0.0.1:5050/images/Search/ic_clock.png") no-repeat;
  background-size: 100%;
  position: absolute;
  top: -1.1rem;
  left: 6rem;
}
.search_input {
  width: 100%;
  height: 0.8rem;
  border-radius: 0.5rem;
  border: 0.02rem solid #e8e8e8;
  background: #e8e8e8;
  padding-left: 0.5rem;
  box-sizing: border-box;
}
/* <!-- 展示商品 --> */
.brand {
  padding: 0.2rem;
}
.brand_top {
  display: flex;
}
.brand_top img {
  width: 100%;
  height: 6rem;
  border-radius: 0.5rem;
}
.love {
  display: block;
  width: 0.7rem;
  height: 0.7rem;
  background: url("http://127.0.0.1:5050/images/detail/det_heart.png") no-repeat;
  background-size: 100%;
  margin-left: -1.2rem;
  margin-top: 0.5rem;
}
.is_collect {
  background-image: url("http://127.0.0.1:5050/images/detail/det_heart_selected.png");
}
.text {
  margin: 0.2rem;
}
.text p {
  margin-bottom: 0.2rem;
}
.text :nth-child(2),
:nth-child(4) {
  font-weight: bold;
  font-size: 0.5rem;
}
.text :nth-child(3) {
  color: #750124;
}
</style>