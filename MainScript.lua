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


function MainLoaded()
 local customModuleURL = "https://raw.githubusercontent.com/MaxlaserTechAlt/MaxlaserTechAlt.github.io/main/CustomModules/"..game.PlaceId..".lua"
 local customModuleScript = game:HttpGet(customModuleURL, true)
 if customModuleScript then
 writefile("MaxUiX/CustomModules/" .. game.PlaceId .. ".lua", customModuleScript)
 local success, error = pcall(function()
 loadstring(customModuleScript)()
 end)
 if not success then
 print("Failed To Loaded Modules: " .. tostring(error))
 loadstring(AnyGame)()
 end
 else
 print("No custom module found for this PlaceId")
 loadstring(AnyGame)()
 end
end



task.spawn(function()
  MainLoaded()
end)
