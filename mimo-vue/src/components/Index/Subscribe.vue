<template>
  <div class="subscribe">
    <div clss="scribe-order">
      <span>
        <img :src="this.hostUrl+'images/inhome/scribeimg/leftjump.png'" alt />
      </span>
      <span>立即下单</span>
    </div>
  </div>
</template>

<script>
export default {
  data() {
    return {
      // scribeHost: "http://127.0.0.1:5050/"
    };
  }
};
</script>

<style scoped>
.scribe-order {
  display: flex;
  justify-content: initial;
  align-items: center;
}
</style>