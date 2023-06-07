shared.MaxUiXAnyGameLoaded = true
local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/MaxlaserTechAlt/MaxlaserTechAlt.github.io/main/KavoCustom.lua"))()

local Window = Library.CreateLib("MaxUi X | AnyGame", "Luna")
local lplr = game.Players.LocalPlayer
local player = game:GetService("Players")
local cam = workspace.CurrentCamera
local networkownertick = tick()
local isnetworkowner = isnetworkowner or function(part)
  if gethiddenproperty(part, "NetworkOwnershipRule") == Enum.NetworkOwnership.Manual then 
      sethiddenproperty(part, "NetworkOwnershipRule", Enum.NetworkOwnership.Automatic)
      networkownertick = tick() + 8
  end
  return networkownertick <= tick()
end


local Tab1 = Window:NewTab("Main")
local Tab2 = Window:NewTab("Credits")


    local Tab1Section = Tab1:NewSection("Main")
    local Tab6 = Window:NewTab("Credits")
    function cred(txt)
        local Tab2Section = Tab2:NewSection(txt)
    end

    cred("Monia - Theme Luna")
    cred("Vamp/Monia - PlaceId Check")
    cred("more feature coming soons cuz lazy lmao")


local Enabled = false
Tab1Section:NewButton("Adonis AntiCheat Bypasser", "Namecallinstance detector bypass", function()
    loadstring(game:HttpGet('https://raw.githubusercontent.com/Tamim468/releases/main/bypass.lua'))()
end)
Tab1Section:NewToggle("InfJump", "ong so cool!", function(callback)
    local InfiniteJumpEnabled = true
    game:GetService("UserInputService").JumpRequest:connect(function()
        if InfiniteJumpEnabled then
            game:GetService"Players".LocalPlayer.Character:FindFirstChildOfClass'Humanoid':ChangeState("Jumping")
        end
    end)
end)
local EnabledTpwalk = false
local Multiplier = {["Value"] = 0.057}
Tab1Section:NewToggle("Tpwalk", "ong so cool!", function(callback)
    if callback then
        EnabledTpwalk = true
    spawn(function()
        repeat
            task.wait()
                local hrp = lplr.Character:FindFirstChild("HumanoidRootPart")
                local hum = lplr.Character:FindFirstChild("Humanoid")
                if isnetworkowner(hrp) and hum.MoveDirection.Magnitude > 0 then
                    lplr.Character:TranslateBy(hum.MoveDirection * Multiplier["Value"])
                end
        until not EnabledTpwalk
    end)
        else
        EnabledTpwalk = false
    end
end)

Tab1Section:NewTextBox("Tpwalk Speed", "Working or no?", function(txt)
    if EnabledTpwalk == true then
	    Multiplier["Value"] = txt
    end
end)
Tab1Section:NewButton("Dex V5", "gui is now cooler", function(txt)
    loadstring(game:HttpGet("https://raw.githubusercontent.com/infyiff/backup/main/dex.lua"))()
end)

