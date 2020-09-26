<template>
  <div id="app">
    <!-- <nav>
        <router-link to='/'>Home</router-link>
        <router-link to='/download'>Download</router-link>
    </nav> -->
    <router-view />
  </div>
</template>

<script>
export default {
}
</script>

<style>
#app {
  font-family: Avenir, Helvetica, Arial, sans-serif;
  -webkit-font-smoothing: antialiased;
  -moz-osx-font-smoothing: grayscale;
  text-align: center;
  color: #dddddd;
  background-color: #2b3035;
  margin-top: 60px;
}
#src_logo{
  height: 10%;
  width: 10%;
  margin-bottom: 2%;
}

</style>
