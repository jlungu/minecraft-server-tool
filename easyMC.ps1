# Declare Variables
$folderName = "Test Folder"

$maxRAM = "2"

$spawnProtection = "16"
$maxTick = "60000"
$queryPort = "25565"
$generatorSettings = ""
$syncChunk = "true"
$forceGamemode = "false"
$allowNether = "true"
$enforceWhitelist = "false"
$gamemode = "survival"
$broadcastConsoleOp = "true"
$enableQuery = "false"
$playerTimeout = "0"
$difficulty = "easy"
$broadcastRconOp = "true"
$spawnMonsters = "true"
$opPermissionLevel = "4"
$pvp = "true"
$entityBroadcastRange = "100"
$snooper = "true"
$levelType = "default"
$enableStatus = "true"
$hardcore = "false"
$enableCommandBlock = "false"
$networkCompression = "256"
$maxPlayers = "20"
$maxWorldSize = "29999984"
$resourcePackSHA = ""
$functionPermission = "2"
$rconPort = "25575"
$serverPort = "25565"
$serverIp = ""
$spawnNpcs = "true"
$allowFlight = "false"
$levelName = "world"
$viewDistance = "10"
$resourcePack = ""
$spawnAnimals = "true"
$whiteList = "false"
$rconPassword = ""
$generateStructures = "true"
$online = "true"
$maxBuildHeight = "256"
$seed = ""
$preventProxy = "false"
$useNativeTransport = "true"
$enableJmx = "false"
$motd = "A Minecraft Server"
$rateLimit = "0"
$enableRcon = "false"

# Create Server Folder
Write-Output "Creating server folder..."
New-Item -Path ".\$folderName" -ItemType Directory
Write-Host "Done`n" -ForegroundColor Green

# Download Server File From Mojang
Write-Output "Downloading server file..."
Import-Module BitsTransfer
Start-BitsTransfer -Source "https://launcher.mojang.com/v1/objects/f02f4473dbf152c23d7d484952121db0b36698cb/server.jar" -Destination ".\$folderName\server.jar"
Write-Host "Done`n" -ForegroundColor Green

# Initial Run Of Server
Write-Output "First run of server..."
Start-Process -FilePath ".\$folderName\server.jar" -WorkingDirectory ".\$folderName" -Wait
Write-Host "Done`n" -ForegroundColor Green

# Open Eula
Write-Output "ALERT: You must accept the EULA in the notepad window by changing false to true. When you have set it to true, save and close the window."
Start-Process notepad ".\$folderName\eula.txt" -Wait
Write-Host "EULA Accepted`n" -ForegroundColor Green

# Changing The Values In server.properties
Write-Output "Setting server properties..."
$Host.PrivateData.ProgressForegroundColor='Red'
Write-Progress -Activity "Setting server properties..." -Status "$i% Complete:" -PercentComplete 4.54;
(Get-Content .\$folderName\server.properties).Replace("spawn-protection=16","spawn-protection=$spawnProtection") | Out-File .\$folderName\server.properties
Write-Progress -Activity "Setting server properties..." -Status "$i% Complete:" -PercentComplete 9.09;
(Get-Content .\$folderName\server.properties).Replace("force-gamemode=false","force-gamemode=$forceGamemode") | Out-File .\$folderName\server.properties
Write-Progress -Activity "Setting server properties..." -Status "$i% Complete:" -PercentComplete 13.63;
(Get-Content .\$folderName\server.properties).Replace("allow-nether=true","allow-nether=$allowNether") | Out-File .\$folderName\server.properties
Write-Progress -Activity "Setting server properties..." -Status "$i% Complete:" -PercentComplete 18.18;
(Get-Content .\$folderName\server.properties).Replace("gamemode=survival","gamemode=$gamemode") | Out-File .\$folderName\server.properties
Write-Progress -Activity "Setting server properties..." -Status "$i% Complete:" -PercentComplete 22.72;
(Get-Content .\$folderName\server.properties).Replace("player-idle-timeout=0","player-idle-timeout=$playerTimeout") | Out-File .\$folderName\server.properties
Write-Progress -Activity "Setting server properties..." -Status "$i% Complete:" -PercentComplete 27.27;
(Get-Content .\$folderName\server.properties).Replace("difficulty=easy","difficulty=$difficulty") | Out-File .\$folderName\server.properties
Write-Progress -Activity "Setting server properties..." -Status "$i% Complete:" -PercentComplete 31.81;
(Get-Content .\$folderName\server.properties).Replace("spawn-monsters=true","spawn-monsters=$spawnMonsters") | Out-File .\$folderName\server.properties
$Host.PrivateData.ProgressForegroundColor='Yellow'
Write-Progress -Activity "Setting server properties..." -Status "$i% Complete:" -PercentComplete 36.36;
(Get-Content .\$folderName\server.properties).Replace("pvp=true","pvp=$pvp") | Out-File .\$folderName\server.properties
Write-Progress -Activity "Setting server properties..." -Status "$i% Complete:" -PercentComplete 40.90;
(Get-Content .\$folderName\server.properties).Replace("level-type=default","level-type=$levelType") | Out-File .\$folderName\server.properties
Write-Progress -Activity "Setting server properties..." -Status "$i% Complete:" -PercentComplete 45.45;
(Get-Content .\$folderName\server.properties).Replace("enable-status=true","enable-status=$enableStatus") | Out-File .\$folderName\server.properties
Write-Progress -Activity "Setting server properties..." -Status "$i% Complete:" -PercentComplete 50.00;
(Get-Content .\$folderName\server.properties).Replace("hardcore=false","hardcore=$hardcore") | Out-File .\$folderName\server.properties
Write-Progress -Activity "Setting server properties..." -Status "$i% Complete:" -PercentComplete 54.54;
(Get-Content .\$folderName\server.properties).Replace("enable-command-block=false","enable-command-block=$enableCommandBlock") | Out-File .\$folderName\server.properties
Write-Progress -Activity "Setting server properties..." -Status "$i% Complete:" -PercentComplete 59.09;
(Get-Content .\$folderName\server.properties).Replace("max-players=20","max-players=$maxPlayers") | Out-File .\$folderName\server.properties
Write-Progress -Activity "Setting server properties..." -Status "$i% Complete:" -PercentComplete 63.63;
(Get-Content .\$folderName\server.properties).Replace("max-world-size=29999984","max-world-size=$maxWorldSize") | Out-File .\$folderName\server.properties
$Host.PrivateData.ProgressForegroundColor='Green'
Write-Progress -Activity "Setting server properties..." -Status "$i% Complete:" -PercentComplete 68.18;
(Get-Content .\$folderName\server.properties).Replace("spawn-npcs=true","spawn-npcs=$spawnNpcs") | Out-File .\$folderName\server.properties
Write-Progress -Activity "Setting server properties..." -Status "$i% Complete:" -PercentComplete 72.72;
(Get-Content .\$folderName\server.properties).Replace("allow-flight=false","allow-flight=$allowFlight") | Out-File .\$folderName\server.properties
Write-Progress -Activity "Setting server properties..." -Status "$i% Complete:" -PercentComplete 77.27;
(Get-Content .\$folderName\server.properties).Replace("view-distance=10","view-distance=$viewDistance") | Out-File .\$folderName\server.properties
Write-Progress -Activity "Setting server properties..." -Status "$i% Complete:" -PercentComplete 81.81;
(Get-Content .\$folderName\server.properties).Replace("resource-pack=","resource-pack=$resourcePack") | Out-File .\$folderName\server.properties
Write-Progress -Activity "Setting server properties..." -Status "$i% Complete:" -PercentComplete 86.36;
(Get-Content .\$folderName\server.properties).Replace("spawn-animals=true","spawn-animals=$spawnAnimals") | Out-File .\$folderName\server.properties
Write-Progress -Activity "Setting server properties..." -Status "$i% Complete:" -PercentComplete 90.90;
(Get-Content .\$folderName\server.properties).Replace("generate-structures=true","generate-structures=$generateStructures") | Out-File .\$folderName\server.properties
Write-Progress -Activity "Setting server properties..." -Status "$i% Complete:" -PercentComplete 95.45;
(Get-Content .\$folderName\server.properties).Replace("max-build-height=256","max-build-height=$maxBuildHeight") | Out-File .\$folderName\server.properties
Write-Progress -Activity "Setting server properties..." -Status "$i% Complete:" -PercentComplete 99.98;
(Get-Content .\$folderName\server.properties).Replace("level-seed=","level-seed=$seed") | Out-File .\$folderName\server.properties
Write-Progress -Activity "Setting server properties..." -Status "$i% Complete:" -PercentComplete 99.99;
(Get-Content .\$folderName\server.properties).Replace("motd=A Minecraft Server","motd=$motd") | Out-File .\$folderName\server.properties
Write-Progress -Activity "Setting server properties..." -Status "$i% Complete:" -PercentComplete 100.00;
Write-Host "Done`n" -ForegroundColor Green

# Create .bat File
Write-Output "Creating .bat file..."
New-Item -Path ".\$folderName\server.bat" -ItemType File
Set-Content ".\$folderName\server.bat" "java -Xms$($maxRAM)G -jar server.jar nogui"
Write-Host "Done`n" -ForegroundColor Green

# Create shortcut for the .bat file
$shortcut = (New-Object -ComObject Wscript.shell).CreateShortcut("$($env:USERPROFILE)\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\Minecraft Server.lnk")
$shortcut.TargetPath = "$PSScriptRoot\$folderName\server.bat"
$shortcut.WorkingDirectory = "$PSScriptRoot\$folderName"
$shortcut.Save()

# Prompt the user to close the window
Read-Host -Prompt "Press Enter to exit"