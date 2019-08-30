<template>
  <div>
    <mt-header title="订单列表">
      <router-link to="/" slot="left">
        <mt-button icon="back" style="font-size:0.4rem" @click="back"></mt-button>
      </router-link>
    </mt-header>
    <mt-navbar v-model="selected">
      <mt-tab-item id="1">进行中</mt-tab-item>
      <mt-tab-item id="2">已结束</mt-tab-item>
    </mt-navbar>

    <!-- tab-container -->
    <mt-tab-container v-model="selected">
      <mt-tab-container-item id="1">
        <div class="container">
          <div class="img_con"></div>
          <div class="t_and_p">
            <div class="title">原本【空岛】奥帆，禅意智能海景民宿，地铁房</div>
            <div class="price">¥ 3029.00</div>
          </div>
          <mt-button class="btn" plain type="danger">待消费</mt-button>
        </div>
      </mt-tab-container-item>
      <mt-tab-container-item id="2"></mt-tab-container-item>
    </mt-tab-container>
  </div>
</template>
<script>
export default {
  data() {
    return {
      selected: "1"
    };
  },
  methods: {
    back(){
      this.$store.commit("changeBack")
    }
  },
};
</script>
<style scoped>
.mint-header {
  background-color: #fff;
  color: #333;
  font-size: 0.45rem;
  height: 1.5rem;
}
.mint-navbar .mint-tab-item.is-selected {
  border-bottom: 2px solid #333;
  color: #333;
}
.container {
  width: 96%;
  height: 2.7rem;
  margin: 0.5rem auto;
  border-radius: 4px;
  display: flex;
  position: relative;
  background:#f9f9f9;
}
/* 解决外边距溢出 */
.container::before {
  content: "";
  display: table;
}
.img_con {
  width: 3rem;
  height: 2rem;
  background-image: url(http://127.0.1:5050/images/inhome/scribeimg/yuanben1.jpg);
  background-size: cover;
  border-radius: 4px;
  background-repeat: no-repeat;
  margin: 0.3rem;
  display: inline-block;
}
.t_and_p{
  display: flex;
  flex-direction: column;
  margin: 0.3rem;
}
.title {
  width: 4.5rem;
  margin-bottom: 0.6rem;
}
.btn {
  position: absolute;
  bottom:0.2rem;
  right:0.2rem;
}
.mint-button{
  font-size: 0.35rem;
  height:0.7rem;
}
</style>