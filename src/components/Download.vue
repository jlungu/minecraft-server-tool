<template>
<div>
    <br>
    <h1>Configure</h1>
    <h5>Select Server Properties</h5>

    <h4><br>NOTE: You must have 64bit Java installed on your computer.<br>You can download it <a href="https://javadl.oracle.com/webapps/download/AutoDL?BundleId=242990_a4634525489241b9a9e1aa73d9e118e6">here</a></h4> 

    <form>
        <div class="row form">
            <div class="col-sm-2"></div>
            <div class="col-sm-4">
                <div class="gamemode option">
                    <h4>Gamemode</h4>
                    <div class="form-check-inline">
                        <input class="form-check-input" @change="updateGamemode" type="radio" name="gamemodeRatios" id="creative" value="option1">
                        <label class="form-check-label" for="exampleRadios2">
                            Creative
                        </label>
                    </div>
                    <div class="form-check-inline">
                        <input class="form-check-input" @change="updateGamemode" type="radio" name="gamemodeRatios" id="survival" value="option2" checked>
                        <label class="form-check-label" for="exampleRadios2">
                            Survival
                        </label>
                    </div>
                    <div class="form-check-inline">
                        <input class="form-check-input" @change="updateGamemode" type="radio" name="gamemodeRatios" id="spectator" value="option3">
                        <label class="form-check-label" for="exampleRadios2">
                            Spectator
                        </label>
                    </div>
                    <div class="form-check-inline">
                        <input class="form-check-input" @change="updateGamemode" type="radio" name="gamemodeRatios" id="adventure" value="option4">
                        <label class="form-check-label" for="exampleRadios2">
                            Adventure
                        </label>
                    </div>
                </div>
                <div class="hardcore option">
                    <h4>Hardcore?</h4>
                    <div class="form-check-inline">
                        <input class="form-check-input" type="radio" name="hardcoreRatios" id="Yes" value="option1">
                        <label class="form-check-label" for="exampleRadios2">
                            Yes
                        </label>
                    </div>
                    <div class="form-check-inline">
                        <input class="form-check-input" type="radio" name="hardcoreRatios" id="No" value="option2" checked>
                        <label class="form-check-label" for="exampleRadios2">
                            No
                        </label>
                    </div>
                </div>
                <div class="max_players option">
                    <h4>Max Players</h4>
                    <div class="form-group col-md-3" id="max_players_input">
                        <label for="inputZip"></label>
                        <input type="text" @input="updateMaxPlayers" class="form-control" id="max_players" value="20">
                    </div>
                </div>
            </div>
            <div class="col-sm-4">
                <div class="difficulty option">
                    <h4>Difficulty</h4>
                    <div class="form-check-inline" >
                        <input class="form-check-input" type="radio" name="difficultyRatios" id="peaceful" value="option2">
                        <label class="form-check-label" for="exampleRadios2">
                            Peaceful
                        </label>
                    </div>
                    <div class="form-check-inline">
                        <input class="form-check-input" type="radio" name="difficultyRatios" id="easy" value="option2" checked>
                        <label class="form-check-label" for="exampleRadios2">
                            Easy
                        </label>
                    </div>
                    <div class="form-check-inline">
                        <input class="form-check-input" type="radio" name="difficultyRatios" id="normal" value="option2">
                        <label class="form-check-label" for="exampleRadios2">
                            Normal
                        </label>
                    </div>
                    <div class="form-check-inline">
                        <input class="form-check-input" type="radio" name="difficultyRatios" id="hard" value="option2">
                        <label class="form-check-label" for="exampleRadios2">
                            Hard
                        </label>
                    </div>
                </div>
                <div class="pvp option">
                    <h4>PvP?</h4>
                    <div class="form-check-inline">
                        <input class="form-check-input" type="radio" name="pvpRadios" id="Yes" value="option2">
                        <label class="form-check-label" for="exampleRadios2">
                            On
                        </label>
                    </div>
                    <div class="form-check-inline">
                        <input class="form-check-input" type="radio" name="pvpRadios" id="No" value="option2" checked>
                        <label class="form-check-label" for="exampleRadios2">
                            Off
                        </label>
                    </div>
                </div>
                <div class="motd option">
                    <h4>Server Message</h4>
                    <div class="form-group col-md-8" id="server_mssg">
                        <label for="inputZip"></label>
                        <input type="text" @input="updateMessage" class="form-control" id="inputZip" value="Welcome to my server!" placeholder="How about a nice greeting?">
                    </div>
                </div>
            </div>
            <div class="col-sm-2"></div>
        </div>
        <div class="advanced_options col-md-12">
            Advanced Options
            <div class="col-sm-12">
                <div class="row">
                    <div class="col-sm-2"></div>
                    <div class="col-sm-4">
                        <div class="row" style="text-align: left;">
                            <div class="col-sm-3"></div>
                            <div class="col-sm-8">
                                <div class="form-check advanced_checkbox">
                                <input class="form-check-input" type="checkbox" name="gridRadios" id="allow_flight" value="option1" checked>
                                <label class="form-check-label check_label" for="gridRadios1">
                                    Allow Flight?
                                </label>
                                </div>
                                <div class="form-check advanced_checkbox">
                                <input class="form-check-input" type="checkbox" name="gridRadios" id="allow_nether" value="option2">
                                <label class="form-check-label check_label" for="gridRadios2">
                                    Allow Nether?
                                </label>
                                </div>
                                <div class="form-check advanced_checkbox">
                                <input class="form-check-input" type="checkbox" name="gridRadios" id="enable_cmd_block" value="option3">
                                <label class="form-check-label check_label" for="gridRadios3">
                                    Enable Command Block?
                                </label>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-sm-4">
                        
                    </div>
                    <div class="col-sm-2"></div>
                </div>
            </div>
        </div>
        
        <button  type="button" @click="save" class="btn btn-success btn-lg" style="margin-top: 1%;">Download!</button>
    </form>
</div>
</template>

<script>
export default {
  name: 'download',
  props: {
    msg: String
  },
  data: function() {
      return{
            serverMessage: "Welcome to my server!",
            maxPlayers: 20,
            gamemode: "easy",
            hardcore: "false",
            difficulty: "peaceful",
            pvp: "false",
            allowFlight: 'false',
            allowNether: 'true',
            enableCmdBlock: 'false',
            enableStatus: 'true',
            forceGamemode: 'false',
            generateStructures: 'true',
            levelSeed: '',
            levelName: 'world',
            maxBuildHeight: 256,
            maxWorldSize: 29999984,
            playerIdle: 0,
            resourcePack: '',
            spawnAnimals: 'true',
            spawnMonsters: 'true',
            spawnNpcs: 'true',
            spawnProtection: 16,
            viewDistance: 10
      }
  },
  methods: {
      save: function() {
        let filename="server.ps1"
        let data = this.formatData()
        let blob = new Blob([data], {type: 'text/plain'});
        if(window.navigator.msSaveOrOpenBlob) {
            window.navigator.msSaveBlob(blob, filename);
        }
        else{
            let elem = window.document.createElement('a');
            elem.href = window.webkitURL.createObjectURL(blob);
            elem.download = filename;        
            document.body.appendChild(elem);
            elem.click();        
            document.body.removeChild(elem);
        }
    },
      formatData: function(){
          // doing the parsing for each field in the form.
          let data = '# Declare Variables\n$folderName = "Test Folder" \n$maxRAM = "2"\n$spawnProtection = "'
          data += this.spawnProtection + '"\n$maxTick = "60000"\n$queryPort = "25565"\n$generatorSettings = ""\n\n$syncChunk = "true"\n$forceGamemode = "'
          data += this.forceGamemode + '"\n$allowNether = "'
          data += this.allowNether + '"\n$enforceWhitelist = "false"\n$gamemode = '
          data += '"'+ this.gamemode + '"'
          data += '\n$broadcastConsoleOp = "true"\n$enableQuery = "false"\n$playerTimeout = "'
          data += this.playerIdle + '"\n$difficulty = "' + this.difficulty + '"'
          data += '\n$broadcastRconOp = "true"\n$spawnMonsters = "'
          data += this.spawnMonsters + '"\n$opPermissionLevel = "4"\n$pvp = "' + this.pvp + '"'
          data += '\n$entityBroadcastRange = "100"\n$snooper = "true"\n$levelType = "default"\n$enableStatus = "'
          data += this.enableStatus + '"\n$hardcore = "' + this.hardcore + '"'
          data += '\n$enableCommandBlock = "'
          data += this.enableCmdBlock + '"\n$networkCompression = "256"\n$maxPlayers = "' + this.maxPlayers + '"'
          data += '\n$maxWorldSize = "'
          data += this.maxWorldSize + '"\n$resourcePackSHA = ""\n$functionPermission = "2"\n$rconPort = "25575"\n$serverPort = "25565"\n$serverIp = ""\n$spawnNpcs = "'
          data += this.spawnNpcs + '"\n$allowFlight = "'
          data += this.allowFlight  + '"\n$levelName = "'
          data += this.levelName + '"\n$viewDistance = "'
          data += this.viewDistance + '"\n$resourcePack = "'
          data += this.resourcePack + '"\n$spawnAnimals = "'
          data += this.spawnAnimals + '"\n$whiteList = "false"\n$rconPassword = ""\n$generateStructures = "'
          data += this.generateStructures + '"\n$online = "true"\n$maxBuildHeight = "'
          data += this.maxBuildHeight + '"\n$seed = "'
          data += this.levelSeed + '"\n$preventProxy = "false"\n$useNativeTransport = "true"\n$enableJmx = "false"\n$motd = "'
          data += this.serverMessage + '"'
          data += '\n$enableRcon = "false"'
          return data
      },
      updateMessage: function (event){
          this.serverMessage = event.target.value
      },
      updateMaxPlayers: function(event){
          let isnum = /^\d+$/.test(event.target.value);
          if (isnum || event.target.value == "")
            this.maxPlayers = event.target.value;
          else
            document.getElementById("max_players").value = this.maxPlayers
      },
      updateGamemode: function(event){
           this.gamemode = event.target.id
      },
      updateHardcore: function(event){
          if (event.target.value == "Yes")
           this.hardcore = true
           else
            this.hardcore = false
      },
      updateDifficulty: function(event){
           this.difficulty = event.target.id
      },
      updatePvp: function(event){
          if (event.target.value == "Yes")
           this.pvp = true
           else
            this.pvp = false
      },
      updateAllowFlight: function(){
          if (this.allowFlight == false)
           this.allowFlight = true
           else
            this.allowFlight = false
      },
      updateAllowNether: function(){
          if (this.allowNether == false)
           this.allowNether = true
           else
            this.allowNether = false
      },
      updateEnableCmdBlock: function(){
          if (this.enableCmdBlock == false)
           this.enableCmdBlock = true
           else
            this.enableCmdBlock = false
      },
      updateEnableStatus: function(){
          if (this.enableStatus == false)
           this.enableStatus = true
           else
            this.enableStatus = false
      },
      updateForceGamemode: function(){
          if (this.forceGamemode)
            this.forceGamemode = false
          else
            this.forceGamemode = true
      },
      updateGenerateStructures: function(){
          if (this.generateStructures)
            this.generateStructures = false
          else
            this.generateStructures = true
      },
      updateLevelSeed: function (event){
          this.levelSeed = event.target.value
      },
      updateLevelName: function (event){
          this.levelName = event.target.value
      },
      updateMaxBuildHeight: function(event){
          let isnum = /^\d+$/.test(event.target.value);
          if (isnum || event.target.value == "")
            this.maxBuildHeight = event.target.value;
          else
            document.getElementById("max_build_height").value = this.maxBuildHeight
      },
      updateMaxWorldSize: function(event){
          let isnum = /^\d+$/.test(event.target.value);
          if (isnum || event.target.value == "")
            this.maxWorldSize = event.target.value;
          else
            document.getElementById("max_world_size").value = this.maxWorldSize
      },
      updatePlayerIdle: function(event){
          let isnum = /^\d+$/.test(event.target.value);
          if (isnum || event.target.value == "")
            this.playerIdle = event.target.value;
          else
            document.getElementById("max_player_idle").value = this.playerIdle
      },
      updateResourcePack: function (event){
          this.resourcePack = event.target.value
      },
      updateSpawnAnimals: function(){
          if (this.spawnAnimals)
            this.spawnAnimals = false
          else
            this.spawnAnimals = true
      },
      updateSpawnMonsters: function(){
          if (this.spawnMonsters)
            this.spawnMonsters = false
          else
            this.spawnMonsters = true
      },
      updateSpawnNpcs: function(){
          if (this.spawnNpcs)
            this.spawnNpcs = false
          else
            this.spawnNpcs = true
      },
      updateSpawnProtection: function(event){
          let isnum = /^\d+$/.test(event.target.value);
          if (isnum || event.target.value == "")
            this.spawnProtection = event.target.value;
          else
            document.getElementById("spawn_protection").value = this.spawnProtection
      },
      updateViewDistance: function(event){
          let isnum = /^\d+$/.test(event.target.value);
          if (isnum || event.target.value == "")
            this.viewDistance = event.target.value;
          else
            document.getElementById("view_distance").value = this.viewDistance
      },
  }
}
</script>

<!-- Add "scoped" attribute to limit CSS to this component only -->
<style scoped>
input{
    display: inline-block;
}
.advanced_options{
    text-align: center;
}
.form{
    margin-top: 3%;
}
.motd{
    text-align: center;
}
.max_players{
    text-align: center;
}
#max_players_input{
    display: inline-block;
}
.option{
    margin-bottom: 5%;
}
#server_mssg{
    display: inline-block;
}
.advanced{
    text-align: center;
}
.check_label{
    font-size: 18px;
}
.advanced_checkbox{
    margin-bottom: 2%;
}
</style>
