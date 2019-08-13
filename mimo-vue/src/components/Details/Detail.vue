<template>
  <div class="detail">
    <mt-header fixed>
      <router-link to="/" slot="left">
        <mt-button icon="back"></mt-button>
      </router-link>
      <mt-button slot="right" class="share"></mt-button>
      <mt-button slot="right" class="heart"></mt-button>
    </mt-header>
    <div class="detail_main">
      <div class="detail_top"></div>
    </div>
  </div>
</template>
<script>
export default {
  
}
</script>
<style scoped>
.mint-header{
  /* background-color: transparent; */
  z-index: 2;
}
.share{
  background: url("http://127.0.0.1:5050/detail/det_share.png") no-repeat;
  background-size: 100%;
  width: .6rem;
  margin-top: 0.45rem;
  margin-right: 0.25rem;
}
.heart{
  background: url("http://127.0.0.1:5050/detail/det_heart.png") no-repeat;
  background-size: 100%;
  width: .6rem;
}
</style>