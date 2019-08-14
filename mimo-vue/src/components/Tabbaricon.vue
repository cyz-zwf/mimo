<template>
  <div>
    <img :src="focused? selected : normal "  class="imgstyle" />
  </div>
</template>
<script>
export default {
  props: {
    focused: false,
    selected: { default: "" },
    normal: { default: "" }
  }
};
</script>
<style>
.imgstyle {
  width: 25px;
  height: 25px;
}
.mint-tabbar.is-fixed {
  width: 100%;
  /* border-top: 1px solid #e5e5e5; */
}
</style>