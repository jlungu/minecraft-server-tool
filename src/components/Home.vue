<template>
  <div class="hello">
    <img alt="Vue logo" src="../assets/creeper.png" id="src_logo">
    <h1>WHAT THE FUCK</h1>
    <hr />
    <h4 id="minecraft_simple">Download your own Minecraft server,<br> ready to roll</h4>
    <button @click="$router.push('download')" type="button" class="btn btn-success btn-lg">Get Started</button>
  </div>
</template>

<script>
export default {
  name: 'home',
  props: {
    msg: String
  }
}
</script>

<!-- Add "scoped" attribute to limit CSS to this component only -->
<style scoped>
h3 {
  margin: 40px 0 0;
}
ul {
  list-style-type: none;
  padding: 0;
}
li {
  display: inline-block;
  margin: 0 10px;
}
a {
  color: #42b983;
}
hr {
  margin-top: 2%;
  background-color: #dddddd;
  width: 15%;
}
#minecraft_simple{
  margin-top: 2%;
  line-height: 1.4;
  margin-bottom: 1.5%;
}
</style>
