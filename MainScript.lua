repeat task.wait() until game:IsLoaded()
local queueteleport = queue_on_teleport

if not isfolder("MaxUiX") then
	makefolder("MaxUiX")
end
if not isfolder("MaxUiX/CustomModules") then
	makefolder("MaxUiX/CustomModules")
    end
if not isfolder("MaxUiX/Assets") then
	makefolder("MaxUiX/Assets")
    end
if not isfolder("MaxUiX/Profiles") then
	makefolder("MaxUiX/Profiles")
    end

local TeleportString = [[
  loadstring(game:HttpGet("https://raw.githubusercontent.com/MaxlaserTechAlt/MaxlaserTechAlt.github.io/main/MainScript.lua", true))
]]

queueteleport(TeleportString)

local AnyGame = [[
loadstring(game:HttpGet("https://raw.githubusercontent.com/MaxlaserTechAlt/MaxlaserTechAlt.github.io/main/CustomModules/AnyGame.lua",
true))()
]]
local BedwarsLobby = [[
loadstring(game:HttpGet("https://raw.githubusercontent.com/MaxlaserTechAlt/MaxlaserTechAlt.github.io/main/CustomModules/AnyGame.lua",
true))()
]]

function MainLoaded()
local customModuleURL = "https://raw.githubusercontent.com/MaxlaserTechAlt/MaxlaserTechAlt.github.io/main/CustomModules/" .. game.PlaceId .. ".lua"
local customModuleScript = game:HttpGet(customModuleURL, true)
if game.PlaceId == 6872274481 or game.PlaceId == 8560631822 or game.PlaceId == 8444591321 then
	local customModuleURL = "https://raw.githubusercontent.com/MaxlaserTechAlt/MaxlaserTechAlt.github.io/main/CustomModules/6872274481.lua"
	local bedwarsgame = game:HttpGet(customModuleURL, true)
	writefile("MaxUiX/CustomModules/6872274481.lua", bedwarsgame)
	loadstring(bedwarsgame)()
	else
		if game.PlaceId == 6872265039 then
			local customModuleURL = "https://raw.githubusercontent.com/MaxlaserTechAlt/MaxlaserTechAlt.github.io/main/CustomModules/6872265039.lua"
			 local bedwarslobby = game:HttpGet(customModuleURL, true)
			writefile("MaxUiX/CustomModules/6872265039.lua", bedwarslobby)
			loadstring(bedwarslobby)()
		else
		if game.PlaceId == 3956818381 or game.PlaceId == 155615604 then
			 loadstring(customModuleScript)()
        else
            loadstring(AnyGame)()
        end
		end
	end
end

task.spawn(function()
  MainLoaded()
end)
