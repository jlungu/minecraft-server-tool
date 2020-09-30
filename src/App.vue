<template>
  <div id="app">
    <nav class="navbar navbar-expand-lg navbar-dark bg-dark" id="navbar">
      <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
      </button>
      <div class="collapse navbar-collapse" id="navbarNav">
        <ul class="navbar-nav">
          <li class="nav-item active">
            <router-link class="nav-link" to='/'>Home</router-link>
          </li>
          <li class="nav-item active">
            <router-link class="nav-link" to='/download'>Download</router-link>
          </li>
          <li class="nav-item active">
            <router-link class="nav-link" to='/instructions'>Instructions</router-link>
          </li>
        </ul>
      </div>
    </nav>
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
  margin-top: 0px;
  font-family: 'Open Sans', sans-serif;
}
#src_logo{
  height: 10%;
  width: 10%;
  margin-bottom: 2%;
  margin-right: 2%;
  display: inline-block;
}
#src_logo_1{
  height: 10%;
  width: 10%;
  margin-bottom: 2%;
  margin-left: 2%;
  margin-right: 2%;
  display: inline-block;
}
#navbar{
  text-align: center;
}
hr {
  margin-top: 2%;
  background-color: #dddddd;
  width: 20%;
}
</style>
