repeat task.wait() until game:IsLoaded()
local queueteleport = queue_on_teleport

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
    local success, error = pcall(function()
      loadstring(customModuleScript)()
    end)
    if not success then
      print("Failed To Loaded Modules: " .. tostring(error))
      loadstring(AnyGame)()
    end
  else
    loadstring(AnyGame)()
  end
end

task.spawn(function()
  MainLoaded()
end)
