<template>
  <div class="hello">
    <br>
    <img alt="Vue logo" src="../assets/grass.png" id="src_logo_1">
    <img alt="Vue logo" src="../assets/creeper.png" id="src_logo">
    <img alt="Vue logo" src="../assets/wood.png" id="src_logo">
    <h1>Easy MC Server</h1>
    <hr />
    <h4 id="minecraft_simple">Configure, download, and install your very own Minecraft server in a matter of seconds</h4>
    <button @click="$router.push('download')" type="button" class="btn btn-success btn-lg">Get Started</button>
    <a href="https://github.com/jlungu/minecraft-server-tool" id="sources">Image Sources Located Here</a>
  </div>
</template>

<script>
export default {
  name: 'home',
  props: {
    msg: String
  },
}
</script>

<!-- Add "scoped" attribute to limit CSS to this component only -->
<style scoped>
@-webkit-keyframes fadeIn {
    from { opacity: 0; }
      to { opacity: 1; }
}
@keyframes fadeIn {
    from { opacity: 0; }
      to { opacity: 1; }
}
.hello{
    -webkit-animation: fadeIn 1.5s;
    animation: fadeIn 1.5s;
}
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
#sources{
  display: block;
  margin-top: 10%;
  font-size: 12px;
}
</style>
