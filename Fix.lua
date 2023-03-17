
local Window = Library.CreateLib("NIVEAMEN", "RJTheme3")

local Tab = Window:NewTab("Character")

local Section = Tab:NewSection("SpeedHack")
local Section = Tab:NewSection("JumpHack")

Section:NewDropdown("JumpPower", "JumpHack", {"Level 1", "Level 2", "Level 3", "Level 4"}, function(NIVEAMEN)
    if NIVEAMEN == "Level 1" then
        game.Players.LocalPlayer.Character.Humanoid.JumpPower = 100
    elseif NIVEAMEN == "Level 2" then
        game.Players.LocalPlayer.Character.Humanoid.JumpPower = 200
    elseif NIVEAMEN == "Level 3" then
        game.Players.LocalPlayer.Character.Humanoid.JumpPower = 300
    elseif NIVEAMEN == "Level 4" then
        game.Players.LocalPlayer.Character.Humanoid.JumpPower = 500
    end
end)

Section:NewDropdown("SpeedHack", "Chose", {"Level 1", "Level 2", "Level 3", "Level 4"}, function(NIVEAMEN)
    if NIVEAMEN == "Level 1" then
        game.Players.LocalPlayer.Character.Humanoid.JumpPower = 100
    elseif NIVEAMEN == "Level 2" then
        game.Players.LocalPlayer.Character.Humanoid.JumpPower = 200
    elseif NIVEAMEN == "Level 3" then
        game.Players.LocalPlayer.Character.Humanoid.JumpPower = 300
    elseif NIVEAMEN == "Level 4" then
        game.Players.LocalPlayer.Character.Humanoid.JumpPower = 500
    end
end)

local Tab = Window:NewTab("ESP")

local Section = Tab:NewSection("ESP")

Section:NewDropdown("ESP"), "Chose", {"Level 1"}, function(NIVEAMEN)
    if NIVEAMEN == "Level 1" then
        while wait(0.5) do
            for i,childrik in ipairs(workspace:GetDecendants()) do
                if childrik:FindFirstChild("Humanoid") then
                    if not childrik:FindFirstChild("EspBox") then
                        if childrik ~= game.Players.LocalPlayer.Character then
            local esp = Instance.new("BoxHandleAdornment",childrik)
            esp.Adornee = childrik
            esp.ZIndex = 0
            esp.Size = Vector3.new(4, 5, 1)
            esp.Transparency = 0.65
            esp.Color3 = Color3.fromRGB(64,224,208)
            esp.AlwaysOnTop = true
            esp.Name = "EspBox"
                        end
                    end
                end
            end
        end
    end
