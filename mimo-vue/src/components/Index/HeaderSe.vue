<template>
  <div class="index-main">
    <div>
      <mt-swipe :auto="4000" class="kk-swipe">
        <mt-swipe-item class="kk-swipe-img">
          <img src="http://127.0.0.1:5050/inhome/seimg/2f8.jpg" alt />
        </mt-swipe-item>
        <mt-swipe-item class="kk-swipe-img">
          <img src="http://127.0.0.1:5050/inhome/seimg/4c.jpg" alt />
        </mt-swipe-item>
        <mt-swipe-item class="kk-swipe-img">
          <img src="http://127.0.0.1:5050/inhome/seimg/ca38.jpg" alt />
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
            <img src="http://127.0.0.1:5050/inhome/seimg/addr1.png" alt />
            <span>我的足迹</span>
          </div>
        </div>
      </div>
    </div>
    <div></div>
  </div>
</template>

<script>
export default {};
</script>

<style scoped>
.index-main {
  position: relative;
}
.kk-swipe {
  width: 100%;
  height: 183px;
}
.kk-swipe-img img {
  width: 100%;
}
/* 搜索框 */
.index-main .search-bar {
  width: 82%;
  padding: 15px;
  background: #fff;
  border-radius: 5px;
  position: absolute;
  bottom: -160px;
  left: 50%;
  transform: translateX(-50%);
  box-shadow: 0px 5px 15px 0px #ddd;
}
.search-bar .choose-wrapper {
  width: 100%;
  height: 163px;
  background: #eee;
  margin: 0 auto;
}
.location-container {
  display: flex;
  justify-content: space-between;
  align-items: center;
  font-size: 16px;
  color: #333;
}
.location-container .located-area {
  line-height: 20px;
  width: 21%;
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
</style>>
