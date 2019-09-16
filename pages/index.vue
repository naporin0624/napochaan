<template>
  <div class="wrapper">
    <div class="section">
      <p class="title line-1 anim-typewriter">Naporitan.online</p>
    </div>
    <!-- <div class="section">
      <img :style="{ height: '300px', width: '300px'}" :src="require('@/assets/icon.png')" />
      <img :style="icon" :src="require('@/assets/twitter.logo.png')" />
      <img :style="icon" :src="require('@/assets/github.logo.png')" />
      <img :style="icon" :src="require('@/assets/blog.logo.png')" />
      <img :style="icon" :src="require('@/assets/gmail.logo.png')" />
    </div>-->
  </div>
</template>

<style lang="scss" scoped>
.wrapper {
  text-align: center;
}

.anim-typewriter {
  /*アニメーションセッティング*/
  animation: typewriter 4s steps(44) 1s 1 normal both,
    blinkTextCursor 500ms steps(44) infinite normal;
}
@keyframes typewriter {
  /*タイプライターライクなアニメーション*/
  from {
    width: 0;
  }
  to {
    width: 24em;
  }
}
@keyframes blinkTextCursor {
  /*点滅するカーソルのアニメーション*/
  from {
    border-right-color: rgba(255, 255, 255, 0.75);
  }
  to {
    border-right-color: transparent;
  }
}
.section {
  position: relative;
  height: calc(100vh - 60px);
  background-color: #ffbf1f;
  p {
    position: relative;
    top: 50%;
    width: 24em;
    margin: 0 auto;
    /* border-right: 2px solid rgba(255, 255, 255, 0.75); */
    font-size: 180%;
    text-align: center;
    white-space: nowrap;
    overflow: hidden;
    transform: translateY(-50%);
  }
  .title {
    font-family: Noto Sans Javanese;
    font-style: normal;
    font-weight: normal;
    font-size: 5vh;
    line-height: 130px;
  }
  img {
    position: absolute;
    &:first-child {
      top: 50%;
      left: 50%;
      transform: translate(-50%, -50%);
    }
    &:nth-child(2) {
      top: 10%;
      left: 10%;
    }
    &:nth-child(3) {
      top: 10%;
      right: 10%;
    }
    &:nth-child(4) {
      bottom: 10%;
      left: 10%;
    }
    &:last-child {
      bottom: 10%;
      right: 10%;
    }
  }
}
</style>

<script lang="ts">
import Vue from "vue";

export default Vue.extend({
  data() {
    return {
      icon: {
        height: "200px",
        width: "200px"
      }
    };
  },
  created() {
    console.log(Vue.directive("scroll").inserted);
  }
});
</script>
