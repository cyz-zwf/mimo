<template>
  <div class="index-main">
    <div class="index-main-body">
      <div class="userdd-icon">
        <van-button type="primary" @click="showPopup">
          <img src="http://127.0.0.1:5050/images/inhome/seimg/userdd.jpg" alt />
        </van-button>
        <van-popup v-model="show" position="right" :style="{width:'20%',height: '100%' }" />
      </div>
      <div class="finsh-icon">
        <img src="http://127.0.0.1:5050/images/inhome/seimg/finshss.png" alt />
      </div>
      <mt-swipe :auto="4000" class="kk-swipe">
        <mt-swipe-item class="kk-swipe-img kk-one">
          <div class="kk-text">
            <span>国外热门房源</span>
            <span>打卡照片里的奇妙家</span>
          </div>
        </mt-swipe-item>
        <mt-swipe-item class="kk-swipe-img kk-two">
          <div class="kk-text">
            <span>抢手热门房源</span>
            <span>领取精属房源专属券</span>
          </div>
        </mt-swipe-item>
        <mt-swipe-item class="kk-swipe-img kk-three">
          <div class="kk-text">
            <span>国外热门房源</span>
            <span>美国一号公路自驾游</span>
          </div>
        </mt-swipe-item>
      </mt-swipe>
    </div>
    <div class="search-bar">
      <div class="choose-wrapper">
        <div class="location-container">
          <div class="selected-area">
            <i>上海</i>
          </div>
          <div class="located-area">
            <img src="http://127.0.0.1:5050/images/inhome/seimg/addr1.png" alt />
            <span>我的足迹</span>
          </div>
        </div>
        <div class="date-container">
          <div class="data-today">
            <span class="today-value">08月17日</span>
            <span class="today-tip">今天</span>
          </div>
          <div class="data-night">
            <span class="night-count">1晚</span>
          </div>
          <div class="data-tomorrow">
            <span class="today-value">08月17日</span>
            <span class="today-tip">明天</span>
          </div>
        </div>
        <div class="search-panel">
          <i class="place-icon"></i>
          <span class="place-holder">输入位置、地标、房源标题</span>
        </div>
      </div>
      <div class="search-button">搜&nbsp;&nbsp;索</div>
    </div>
    <div style="width:100%;height:200px"></div>
  </div>
</template>

<script>
export default {
  data() {
    return {
      show: false
    };
  },
  methods: {
    showPopup() {
      this.show = true;
    }
  }
};
</script>

<style scoped>
.index-main {
  position: relative;
}
.userdd-icon {
  position: absolute;
  top: 20px;
  right: 17px;
  z-index: 777;
}
.finsh-icon {
  position: absolute;
  top: 20px;
  left: 22px;
  z-index: 777;
}
.userdd-icon img,
.finsh-icon img {
  width: 32px;
  height: 32px;
}
.userdd-icon .van-button--primary {
  background-color: transparent;
  border-style: none;
}
.userdd-icon .van-button {
  margin: -10px;
}
.kk-swipe {
  position: relative;
  width: 100%;
  height: 183px;
}
.kk-swipe-img {
  width: 100%;
}
.kk-one {
  background: url("http://127.0.0.1:5050/images/inhome/seimg/2f8.jpg") no-repeat;
  background-size: 100%;
}
.kk-two {
  background: url("http://127.0.0.1:5050/images/inhome/seimg/4c.jpg") no-repeat;
  background-size: 100%;
}
.kk-three {
  background: url("http://127.0.0.1:5050/images/inhome/seimg/ca38.jpg")
    no-repeat;
  background-size: 100%;
}
.kk-swipe-img .kk-text {
  color: #fff;
  margin-top: 75px;
  margin-left: 25px;
}
.kk-swipe-img .kk-text span {
  display: block;
}
.kk-swipe-img .kk-text span:first-child {
  font-size: 12px;
  padding-bottom: 3px;
}
.kk-swipe-img .kk-text span:last-child {
  font-size: 22px;
}
/* 搜索框 */
.index-main .search-bar {
  width: 82%;
  padding: 15px;
  background: #fff;
  border-radius: 5px;
  position: absolute;
  bottom: 30px;
  left: 50%;
  transform: translateX(-50%);
  box-shadow: 0px 5px 15px 0px #ddd;
}
.search-bar .choose-wrapper {
  width: 100%;
  /* height: 163px; */
  /* background: #eee; */
  margin: 0 auto;
}
.location-container {
  display: flex;
  justify-content: space-between;
  align-items: center;
  font-size: 16px;
  color: #333;
  padding-bottom: 14px;
  border-bottom: 1px solid #ebebeb;
}
.location-container .located-area {
  line-height: 20px;
  position: relative;
}
.selected-area i {
  font-style: normal;
}

.located-area span {
  font-size: 12px;
  margin-left: 16px;
}
.located-area img {
  position: absolute;
  top: 2px;
}

/* 日期选择 */
.date-container {
  display: flex;
  justify-content: space-between;
  align-items: center;
  font-size: 16px;
  border-bottom: 1px solid #ebebeb;
}
.data-today,
.data-tomorrow,
.data-night {
  width: 40%;
  height: 45px;
  line-height: 45px;
}
.data-tomorrow {
  text-align: right;
}
.data-night {
  width: 13%;
  height: 17px;
}
.today-value,
.today-tip {
  font-size: 16px;
  color: #333;
}
.today-tip {
  font-size: 12px;
  margin-left: 5px;
}
.night-count {
  display: block;
  width: 100%;
  height: 17px;
  border: 1px solid #e4e6e9;
  border-radius: 16px;
  text-align: center;
  font-size: 12px;
  line-height: 17px;
}
/* 输入位置，房屋... */
.search-panel {
  width: 100%;
  position: relative;
}
.place-icon {
  display: block;
  position: absolute;
  top: 50%;
  transform: translateY(-50%);
  right: 0px;
  width: 17px;
  height: 17px;
  background: url("http://127.0.0.1:5050/images/inhome/seimg/seerror.png")
    no-repeat;
  background-size: 100%;
}
.place-holder {
  display: block;
  width: 100%;
  height: 44px;
  font-size: 16px;
  color: #ccc;
  line-height: 44px;
}
/* 搜索按钮 */
.search-button {
  width: 100%;
  font-size: 16px;
  color: #fff;

  text-align: center;
  line-height: 40px;
  background-image: linear-gradient(90deg, #f16b80 100%, #e64966 0%);
  border-radius: 5px;
}
</style>>
