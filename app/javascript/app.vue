<template>
  
  <div id="app">
    <nav-bar/>
    <router-view/>
  </div>
</template>

<script>


export default {
  data: function () {

    return {
      message: "Hello Vue!"
    }
  }
}
</script>

<style scoped>
p {
  font-size: 2em;
  text-align: center;
}
</style>
