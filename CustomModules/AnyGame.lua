shared.MaxUiXAnyGameLoaded = true
local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/MaxlaserTechAlt/MaxlaserTechAlt.github.io/main/KavoCustom.lua"))()

local Window = Library.CreateLib("MaxUi X | AnyGame", "Luna")

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
else
    InfiniteJumpEnabled = false
    end
end)

