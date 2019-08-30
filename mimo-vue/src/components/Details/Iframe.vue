<template>
  <div id="app">
    <router-link to="/" slot="left">
      <mt-button icon="back"></mt-button>
    </router-link>
    <h1>AR看房</h1>
    <iframe :src="src" frameborder="0" ref="iframe"></iframe>
  </div>
</template>

<script>
export default {
  data() {
    return {
      src:
        "http://www.thingjs.com/guide/sampleindex.html?m=oLX7p01Wd9WbZdUM77I8sJU-IXCA/mimo1.js"
    };
  }
};
</script>
<style scoped>
#app {
  background-color: #ddd;
}
iframe {
  width: 100%;
  height: 667px;
}
h1 {
  display: inline-block;
  margin: 10px 0;
  margin-left: 25%;
}
.mint-button--default {
  background-color: transparent;
}
</style>