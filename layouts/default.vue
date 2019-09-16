<template>
  <el-container>
    <el-header></el-header>
    <nuxt />
  </el-container>
</template>

<style>
html {
  height: 100%;
}
body {
  margin: 0;
  height: 100%;
}
.el-header {
  height: 80px;
  width: 100vw;
  background-color: #c4c4c4;
}
</style>

<script lang="ts">
import Vue from "vue";
export default Vue.extend({});
</script>
