<template>
<div class="download_div">
    <br>
     <img alt="Vue logo" src="../assets/pickaxe.png" id="download_icon_pick">
    <h1 style="display: inline-block">Download</h1>
     <img alt="Vue logo" src="../assets/axe.png" id="download_icon_axe">
    <hr />
    <h4>Select Server Properties</h4>

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
                    <h4>Hardcore</h4>
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
                    <h4>PvP</h4>
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
                        <input type="text" @input="updateMessage" class="form-control" id="inputZip" value="A Minecraft Server" placeholder="How about a nice greeting?">
                    </div>
                </div>
            </div>
        </div>
        <div class="advanced_options col-md-12">
            <button type="button" @click="toggleAdvanced" class="btn" id="advanced_btn">Advanced Options</button>
            <div class="col-sm-12" style="margin-top: 2%; margin-bottom: 2%;" id="advanced_div" hidden>
                <div class="row">
                    <div class="col-sm-2"></div>
                    <div class="col-sm-4">
                        <div class="col-sm-12" style="text-align: center;">
                            <div class="level_seed option">
                                <h4>Level Seed</h4>
                                <div class="form-group col-sm-10" id="level_seed_input" style="display: inline-block;">
                                    <label for="inputZip"></label>
                                    <input type="text" @input="updateLevelSeed" class="form-control" id="level_seed">
                                </div>
                            </div>
                            <div class="option">
                                <h4>Max Build Height</h4>
                                <div class="form-group col-md-4" id="max_build_height_input" style="display: inline-block;">
                                    <label for="inputZip"></label>
                                    <input type="text" @input="updateMaxBuildHeight" class="form-control" id="max_build_height" value="255">
                                </div>
                            </div>
                            <div class="option">
                                <h4>Player Idle</h4>
                                <div class="form-group col-md-3" id="player_idle_input" style="display: inline-block;">
                                    <label for="inputZip"></label>
                                    <input type="text" @input="updatePlayerIdle" class="form-control" id="player_idle" value="0">
                                </div>
                            </div>
                            <div class="option">
                                <h4>View Distance</h4>
                                <div class="form-group col-md-3" id="view_distance_input" style="display: inline-block;">
                                    <label for="inputZip"></label>
                                    <input type="text" @input="updateViewDistance" class="form-control" id="view_distance" value="10">
                                </div>
                            </div>
                        </div>
                        <div class="row" style="text-align: left;">
                            <div class="col-sm-3"></div>
                            <div class="col-sm-8">
                                <div class="form-check advanced_checkbox">
                                <input class="form-check-input" type="checkbox" name="gridRadios" id="allow_flight" value="option1" @change="updateAllowFlight">
                                <label class="form-check-label check_label" for="gridRadios1">
                                    Allow Flight
                                </label>
                                </div>
                                <div class="form-check advanced_checkbox">
                                <input class="form-check-input" type="checkbox" name="gridRadios" id="allow_nether" value="option2" checked @change="updateAllowNether">
                                <label class="form-check-label check_label" for="gridRadios2">
                                    Allow Nether
                                </label>
                                </div>
                                <div class="form-check advanced_checkbox">
                                    <input class="form-check-input" type="checkbox" name="gridRadios" id="enable_cmd_block" value="option3" @change="updateEnableCmdBlock">
                                    <label class="form-check-label check_label" for="gridRadios3">
                                        Enable Command Block
                                    </label>
                                </div>
                                <div class="form-check advanced_checkbox">
                                    <input class="form-check-input" type="checkbox" name="gridRadios" id="force_gamemode" value="option3" @change="updateForceGamemode">
                                    <label class="form-check-label check_label" for="gridRadios3">
                                        Force Gamemode
                                    </label>
                                </div>
                                 <div class="form-check advanced_checkbox">
                                    <input class="form-check-input" type="checkbox" name="gridRadios" id="broadcast_console_op" value="option3" checked @change="updateBroadcastConsoleOp">
                                    <label class="form-check-label check_label" for="gridRadios3">
                                        Broadcast Console to OP
                                    </label>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-sm-4">
                        <div class="col-sm-12" style="text-align: center;">
                            <div class="option">
                                <h4>Level Name</h4>
                                <div class="form-group col-sm-10" id="level_name_input" style="display: inline-block;">
                                    <label for="inputZip"></label>
                                    <input type="text" @input="updateLevelName" class="form-control" id="level_name" value="world">
                                </div>
                            </div>
                            <div class="option">
                                <h4>Max World Size</h4>
                                <div class="form-group col-md-4" id="max_world_size_input" style="display: inline-block;">
                                    <label for="inputZip"></label>
                                    <input type="text" @input="updateMaxWorldSize" class="form-control" id="max_world_size" value="29999984">
                                </div>
                            </div>
                            <div class="option">
                                <h4>Resource Pack</h4>
                                <div class="form-group col-sm-10" id="resource_pack_input" style="display: inline-block;">
                                    <label for="inputZip"></label>
                                    <input type="text" @input="updateResourcePack" class="form-control" id="resource_pack">
                                </div>
                            </div>
                            <div class="option">
                                <h4>Spawn Protection</h4>
                                <div class="form-group col-md-3" id="spawn_protection_input" style="display: inline-block;">
                                    <label for="inputZip"></label>
                                    <input type="text" @input="updateSpawnProtection" class="form-control" id="spawn_protection" value="16">
                                </div>
                            </div>
                        </div>
                         <div class="row" style="text-align: left;">
                            <div class="col-sm-3"></div>
                            <div class="col-sm-8">
                        <div class="form-check advanced_checkbox">
                            <input class="form-check-input" type="checkbox" name="gridRadios" id="genereate_structures" value="option3" checked @change='updateGenerateStructures'>
                            <label class="form-check-label check_label" for="gridRadios3">
                                Generate Structures
                            </label>
                        </div>
                        <div class="form-check advanced_checkbox">
                            <input class="form-check-input" type="checkbox" name="gridRadios" id="spawn_monsters" value="option3" checked @change="updateSpawnMonsters">
                            <label class="form-check-label check_label" for="gridRadios3">
                                Spawn Monsters
                            </label>
                        </div>
                        <div class="form-check advanced_checkbox">
                            <input class="form-check-input" type="checkbox" name="gridRadios" id="spawn_animals" value="option3" checked @change="updateSpawnAnimals">
                            <label class="form-check-label check_label" for="gridRadios3">
                                Spawn Animals
                            </label>
                        </div>
                        <div class="form-check advanced_checkbox">
                            <input class="form-check-input" type="checkbox" name="gridRadios" id="spawn_npcs" value="option3" checked @change="updateSpawnNpcs">
                            <label class="form-check-label check_label" for="gridRadios3">
                                Spawn NPCs
                            </label>
                        </div>
                         <div class="form-check advanced_checkbox">
                            <input class="form-check-input" type="checkbox" name="gridRadios" id="enable_status" value="option3" checked @change="updateEnableStatus">
                            <label class="form-check-label check_label" for="gridRadios3">
                                Enable Status
                            </label>
                        </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-sm-2"></div>
                </div>
            </div>
        </div>
        
        <button type="button" @click="save" class="btn btn-success btn-lg" style="margin-bottom: 2%;">Download</button>
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
            advanced: false,
            serverMessage: "A Minecraft Server",
            maxPlayers: 20,
            gamemode: "survival",
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
            viewDistance: 10,
            broadcastConsoleOp: true
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
      toggleAdvanced: function(){
        document.getElementById("advanced_div").hidden = !document.getElementById("advanced_div").hidden
      },
      formatData: function(){
          // doing the parsing for each field in the form.
          let data = '# Declare Variables\n$folderName = "Minecraft Server" \n$maxRAM = "1"\n$spawnProtection = "'
          data += this.spawnProtection + '"\n$maxTick = "60000"\n$queryPort = "25565"\n$generatorSettings = ""\n\n$syncChunk = "true"\n$forceGamemode = "'
          data += this.forceGamemode + '"\n$allowNether = "'
          data += this.allowNether + '"\n$enforceWhitelist = "false"\n$gamemode = '
          data += '"'+ this.gamemode + '"'
          data += '\n$broadcastConsoleOp = "'
          data += this.broadcastConsoleOp + '"\n$enableQuery = "false"\n$playerTimeout = "'
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
          data += '\n$enableRcon = "false"\n\n'
          let string = '# Create Server Folder \nWrite-Output "Creating server folder..." \nNew-Item -Path ".\\$folderName" -ItemType Directory \nWrite-Host "Done`n" -ForegroundColor Green \n# Download Server File From Mojang \nWrite-Output "Downloading server file..." \nImport-Module BitsTransfer \nStart-BitsTransfer -Source "https://launcher.mojang.com/v1/objects/f02f4473dbf152c23d7d484952121db0b36698cb/server.jar" -Destination ".\\$folderName\\server.jar" \nWrite-Host "Done`n" -ForegroundColor Green \n# Initial Run Of Server \nWrite-Output "First run of server..." \nStart-Process -FilePath ".\\$folderName\\server.jar" -WorkingDirectory ".\\$folderName" -Wait \nWrite-Host "Done`n" -ForegroundColor Green \n# Open Eula \nWrite-Output "ALERT: You must accept the EULA in the notepad window by changing false to true. When you have set it to true, save and close the window." \nStart-Process notepad ".\\$folderName\\eula.txt" -Wait \nWrite-Host "EULA Accepted`n" -ForegroundColor Green \n# Changing The Values In server.properties \nWrite-Output "Setting server properties..."' + "\n$Host.PrivateData.ProgressForegroundColor='Red'" + '\nWrite-Progress -Activity "Setting server properties..." -Status "$i% Complete:" -PercentComplete 4.54; \n(Get-Content .\\$folderName\\server.properties).Replace("spawn-protection=16","spawn-protection=$spawnProtection") | Out-File .\\$folderName\\server.properties \nWrite-Progress -Activity "Setting server properties..." -Status "$i% Complete:" -PercentComplete 9.09; \n(Get-Content .\\$folderName\\server.properties).Replace("force-gamemode=false","force-gamemode=$forceGamemode") | Out-File .\\$folderName\\server.properties \nWrite-Progress -Activity "Setting server properties..." -Status "$i% Complete:" -PercentComplete 13.63; \n(Get-Content .\\$folderName\\server.properties).Replace("allow-nether=true","allow-nether=$allowNether") | Out-File .\\$folderName\\server.properties \nWrite-Progress -Activity "Setting server properties..." -Status "$i% Complete:" -PercentComplete 18.18; \n(Get-Content .\\$folderName\\server.properties).Replace("gamemode=survival","gamemode=$gamemode") | Out-File .\\$folderName\\server.properties \nWrite-Progress -Activity "Setting server properties..." -Status "$i% Complete:" -PercentComplete 22.72; \n(Get-Content .\\$folderName\\server.properties).Replace("broadcast-console-to-ops=true","broadcast-console-to-ops=$broadcastConsoleOp") | Out-File .\\$folderName\\server.properties \nWrite-Progress -Activity "Setting server properties..." -Status "$i% Complete:" -PercentComplete 24.50; \n(Get-Content .\\$folderName\\server.properties).Replace("player-idle-timeout=0","player-idle-timeout=$playerTimeout") | Out-File .\\$folderName\\server.properties \nWrite-Progress -Activity "Setting server properties..." -Status "$i% Complete:" -PercentComplete 27.27; \n(Get-Content .\\$folderName\\server.properties).Replace("difficulty=easy","difficulty=$difficulty") | Out-File .\\$folderName\\server.properties \nWrite-Progress -Activity "Setting server properties..." -Status "$i% Complete:" -PercentComplete 31.81; \n(Get-Content .\\$folderName\\server.properties).Replace("spawn-monsters=true","spawn-monsters=$spawnMonsters") | Out-File .\\$folderName\\server.properties \n$Host.PrivateData.ProgressForegroundColor=' + "'Yellow'" +'\nWrite-Progress -Activity "Setting server properties..." -Status "$i% Complete:" -PercentComplete 36.36; \n(Get-Content .\\$folderName\\server.properties).Replace("pvp=true","pvp=$pvp") | Out-File .\\$folderName\\server.properties \nWrite-Progress -Activity "Setting server properties..." -Status "$i% Complete:" -PercentComplete 40.90; \n(Get-Content .\\$folderName\\server.properties).Replace("level-type=default","level-type=$levelType") | Out-File .\\$folderName\\server.properties \nWrite-Progress -Activity "Setting server properties..." -Status "$i% Complete:" -PercentComplete 45.45; \n(Get-Content .\\$folderName\\server.properties).Replace("enable-status=true","enable-status=$enableStatus") | Out-File .\\$folderName\\server.properties \nWrite-Progress -Activity "Setting server properties..." -Status "$i% Complete:" -PercentComplete 50.00; \n(Get-Content .\\$folderName\\server.properties).Replace("hardcore=false","hardcore=$hardcore") | Out-File .\\$folderName\\server.properties \nWrite-Progress -Activity "Setting server properties..." -Status "$i% Complete:" -PercentComplete 54.54; \n(Get-Content .\\$folderName\\server.properties).Replace("enable-command-block=false","enable-command-block=$enableCommandBlock") | Out-File .\\$folderName\\server.properties \nWrite-Progress -Activity "Setting server properties..." -Status "$i% Complete:" -PercentComplete 59.09; \n(Get-Content .\\$folderName\\server.properties).Replace("max-players=20","max-players=$maxPlayers") | Out-File .\\$folderName\\server.properties \nWrite-Progress -Activity "Setting server properties..." -Status "$i% Complete:" -PercentComplete 63.63; \n(Get-Content .\\$folderName\\server.properties).Replace("max-world-size=29999984","max-world-size=$maxWorldSize") | Out-File .\\$folderName\\server.properties \n$Host.PrivateData.ProgressForegroundColor=' + "'Green'" + '\nWrite-Progress -Activity "Setting server properties..." -Status "$i% Complete:" -PercentComplete 68.18; \n(Get-Content .\\$folderName\\server.properties).Replace("spawn-npcs=true","spawn-npcs=$spawnNpcs") | Out-File .\\$folderName\\server.properties \nWrite-Progress -Activity "Setting server properties..." -Status "$i% Complete:" -PercentComplete 72.72; \n(Get-Content .\\$folderName\\server.properties).Replace("allow-flight=false","allow-flight=$allowFlight") | Out-File .\\$folderName\\server.properties \nWrite-Progress -Activity "Setting server properties..." -Status "$i% Complete:" -PercentComplete 77.27; \n(Get-Content .\\$folderName\\server.properties).Replace("view-distance=10","view-distance=$viewDistance") | Out-File .\\$folderName\\server.properties \nWrite-Progress -Activity "Setting server properties..." -Status "$i% Complete:" -PercentComplete 81.81; \n(Get-Content .\\$folderName\\server.properties).Replace("resource-pack=","resource-pack=$resourcePack") | Out-File .\\$folderName\\server.properties \nWrite-Progress -Activity "Setting server properties..." -Status "$i% Complete:" -PercentComplete 86.36; \n(Get-Content .\\$folderName\\server.properties).Replace("spawn-animals=true","spawn-animals=$spawnAnimals") | Out-File .\\$folderName\\server.properties \nWrite-Progress -Activity "Setting server properties..." -Status "$i% Complete:" -PercentComplete 90.90; \n(Get-Content .\\$folderName\\server.properties).Replace("generate-structures=true","generate-structures=$generateStructures") | Out-File .\\$folderName\\server.properties \nWrite-Progress -Activity "Setting server properties..." -Status "$i% Complete:" -PercentComplete 95.45; \n(Get-Content .\\$folderName\\server.properties).Replace("max-build-height=256","max-build-height=$maxBuildHeight") | Out-File .\\$folderName\\server.properties \nWrite-Progress -Activity "Setting server properties..." -Status "$i% Complete:" -PercentComplete 99.98; \n(Get-Content .\\$folderName\\server.properties).Replace("level-seed=","level-seed=$seed") | Out-File .\\$folderName\\server.properties \nWrite-Progress -Activity "Setting server properties..." -Status "$i% Complete:" -PercentComplete 99.99; \n(Get-Content .\\$folderName\\server.properties).Replace("motd=A Minecraft Server","motd=$motd") | Out-File .\\$folderName\\server.properties \nWrite-Progress -Activity "Setting server properties..." -Status "$i% Complete:" -PercentComplete 100.00; \nWrite-Host "Done`n" -ForegroundColor Green \n# Create .bat File \nWrite-Output "Creating .bat file..." \nNew-Item -Path ".\\$folderName\\server.bat" -ItemType File \nSet-Content ".\\$folderName\\server.bat" "java -Xms$($maxRAM)G -jar server.jar nogui" \nWrite-Host "Done`n" -ForegroundColor Green \n# Create shortcut for the .bat file \n$shortcut = (New-Object -ComObject Wscript.shell).CreateShortcut("$($env:USERPROFILE)\\AppData\\Roaming\\Microsoft\\Windows\\start Menu\\Programs\\Minecraft Server.lnk") \n$shortcut.TargetPath = "$PSScriptRoot\\$folderName\\server.bat" \n$shortcut.WorkingDirectory = "$PSScriptRoot\\$folderName" \n$shortcut.Save() \n# Prompt the user to close the window \nRead-Host -Prompt "Press Enter to exit"'
          data += string
          return data
      },
      updateMessage: function (event){
          this.serverMessage = event.target.value
      },
      updateMaxPlayers: function(event){
          if (event.target.value == "")
            document.getElementById("max_players").className = "form-control is-invalid"
          else
            document.getElementById("max_players").className = "form-control"
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
            document.getElementById("player_idle").value = this.playerIdle
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
      updateBroadcastConsoleOp: function(){
          if (this.broadcastConsoleOp)
            this.broadcastConsoleOp = false
          else
            this.broadcastConsoleOp = true
      },
  }
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
.download_div{
    -webkit-animation: fadeIn 1.7s;
    animation: fadeIn 1.7s;
}
#advanced_btn{
    margin-bottom: 1%;
    transition: 0.3s ease all;
    color: #dddddd;
    background-color: #2b3035;
}
#advanced_btn:hover{
    transition: 0.3s ease all;
    background-color: #464b50;
}
#advanced_div{
    -webkit-animation: fadeIn 0.6s;
    animation: fadeIn 0.6s;
}
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
.form-check-input{
    scale: 130%;
}
#download_icon_pick{
    height: 5.5%;
    width: 5.5%;
    margin-bottom: 2%;
    margin-right: 2%;
    display: inline-block;
}
#download_icon_axe{
    height: 10%;
    width: 10%;
    margin-right: -2%;
    margin-bottom: 2%;
    display: inline-block;
}
hr {
  margin-top: -0.5%;
  margin-bottom: 2%;
  background-color: #dddddd;
  width: 20%;
}
input{
    text-align: center;
}

.tooltip {
  position: relative;
  display: inline-block;
  border-bottom: 1px dotted black;
}

.tooltip .tooltiptext {
  visibility: hidden;
  width: 120px;
  background-color: black;
  color: #fff;
  text-align: center;
  border-radius: 6px;
  padding: 5px 0;
  
  /* Position the tooltip */
  position: absolute;
  z-index: 1;
  bottom: 100%;
  left: 50%;
  margin-left: -60px;
}

.tooltip:hover .tooltiptext {
  visibility: visible;
}
</style>
