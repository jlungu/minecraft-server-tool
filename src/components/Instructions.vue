<template>
  <div class="instructions">
    <br>
    <h1>Instructions</h1>
    <h3>Step 1:</h3>
    <h4>Make sure you have 64bit Java installed on your computer. You can download it <a href="https://javadl.oracle.com/webapps/download/AutoDL?BundleId=242990_a4634525489241b9a9e1aa73d9e118e6" target="_blank">here</a>.</h4>
    <h3>Step 2:</h3>
    <h4>Navigate to the<router-link class="nav-link" to='/download' style="display: inline">Download</router-link>page and select your preferred settings.</h4>
    <h3>Step 3:</h3>
    <h4>Click the "Download" button at the bottom of the page. Save the file into the folder where you want to install the server.</h4>
    <h3>Step 4:</h3>
    <h4>Right click on the downloaded file and click "Run with PowerShell." <br>You will be propmpted to accept the EULA. You must change "eula=false" to "eula=true", save the file, then close notepad.</h4>
    <h3>Step 5:</h3>
    <h4>Set up port forwarding on your router. <a href="https://www.wikihow.com/Set-Up-Port-Forwarding-on-a-Router" target="_blank">Here</a> is a helpful guide to setting that up.</h4>
    <h3>Step 6:</h3>
    <h4>Run the server! <br>You can do this by either manually running "server.bat" where you installed the server, or by typing "Minercaft Server" into Windows Search.<br>Give your friends your <a href="http://www.google.com/search?q=whats+my+ip" target="_blank">public IP</a> and enjoy!</h4>
    <br>
  </div>
</template>

<script>
export default {
  name: 'instructions',
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
h3 {
  margin: 40px 0 0;
  margin-bottom: 10px;
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
.instructions{
    width: 70%;
    display: inline-block;
    -webkit-animation: fadeIn 1.7s;
    animation: fadeIn 1.7s;
}
</style>
