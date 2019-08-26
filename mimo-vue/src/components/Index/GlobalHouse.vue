<template>
  <div>
    <div>
      <div class="f_title">全球热门房源精选</div>
      <div class="f_subTitle">精选舒适房源供你挑选</div>
      <div class="container">
        <div class="Listing" v-for="(item,i) of global_list" :key="i">
          <img :src="`http://127.0.0.1:5050/images/inhome/global/${item.img_url}`" />
          <div class="s_title">{{item.title}}</div>
          <div class="s_title_e">{{item.subtitle}}</div>
          <div class="price">¥{{item.price}}</div>
          <div class="flex">
            <div class="icon"></div>
            <div class="count">{{item.comment}}</div>
          </div>
        </div>
      </div>
      <mt-button class="font_14" size="large" plain type="danger" @click="g_loadMore">查看更多房源</mt-button>
    </div>
    <div class="highScore">
      <div class="f_title">高分体验</div>
      <div class="f_subTitle">在下趟旅程中,不妨预定由本地达人组织的体验活动</div>
      <div class="container">
        <div class="Listing" v-for="(item,i) of highScore_list" :key="i">
          <img :src="`http://127.0.0.1:5050/images/inhome/global/${item.img_url}`" />
          <div class="s_title">{{item.title}}</div>
          <div class="s_title_e">{{item.subtitle}}</div>
          <div class="price">¥{{item.price}}</div>
          <div class="flex">
            <div class="icon"></div>
            <div class="count">{{item.comment}}</div>
          </div>
        </div>
      </div>
      <mt-button class="font_14" size="large" plain type="danger" @click="h_loadMore">查看更多体验</mt-button>
    </div>
  </div>
</template>
<script>
export default {
  data() {
    return {
      global_list: [],
      highScore_list: [],
      pno: 0,
      hno: 0
    };
  },
  methods: {
    h_loadMore() {
      this.hno++;
      var obj = { pno: this.hno };
      this.axios.get("highScore", { params: obj }).then(res => {
        this.highScore_list = this.highScore_list.concat(res.data.data);
      });
    },
    g_loadMore() {
      this.pno++;
      var obj = { pno: this.pno };
      this.axios.get("global", { params: obj }).then(res => {
        this.global_list = this.global_list.concat(res.data.data);
      });
    }
  },
  mounted() {
    this.h_loadMore();
    this.g_loadMore();
  }
};
</script>
<style scoped>
* {
  padding: 0;
  margin: 0;
  box-sizing: border-box;
}
.flex {
  display: flex;
}
.font_14 {
  font-size: 0.373333rem;
  font-weight: bold;
}
.f_title {
  font-size: 0.5rem;
  font-weight: bold;
  color: #333;
  margin-bottom: 0.15rem;
}
.f_subTitle {
  font-size: 0.35rem;
  color: #333;
  margin-bottom: 0.4rem;
}
.container {
  display: flex;
  flex-wrap: wrap;
  justify-content: space-between;
}
.container > div {
  width: 48%;
}
.Listing {
  margin-bottom: 0.5rem;
}
.Listing > img {
  width: 100%;
  height: 3.2rem;
}
.s_title {
  font-size: 0.36rem;
  margin-bottom: 0.1rem;
}
.s_title_e {
  font-size: 0.373333rem; /*14px*/
  font-weight: bold;
  margin-bottom: 0.1rem;
}
.price {
  font-size: 0.32rem;
  margin-bottom: 0.2rem;
  color: #f16b80;
}
.icon {
  background: url(http://127.1:5050/images/inhome/global/5stars.png);
  background-repeat: no-repeat;
  background-size: 3.2rem 0.26666rem;
  height: 0.26666rem;
  width: 1.6rem;
}
.count {
  font-size: 0.32rem;
  margin-left: 0.1rem;
}
.highScore {
  margin-top: 1rem;
}
</style>