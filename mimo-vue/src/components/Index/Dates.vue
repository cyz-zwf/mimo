<template>
  <div class="layui-form">
    <div class="layui-form-item">
      <div class="layui-inline">
        <div class="layui-input-inline">
          <input type="text" class="layui-input" id="test6" placeholder="入住日期-退房日期" />
        </div>
      </div>
    </div>
  </div>
</template>

<script>
export default {
  data() {
    return {};
  },
  created() {
    layui.use(["element", "jquery", "laydate"], function() {
      var laydate = layui.laydate;
      // 绑定时间和渲染时间
      laydate.render({
        elem: "#test1"
      });
      laydate.render({
        elem: "#test6",
        range: true //或 range: '~' 来自定义分割字符
      });
    });
  }
};
</script>
<style>
</style>