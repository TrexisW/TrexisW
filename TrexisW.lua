repeat task.wait() until game:IsLoaded() and game.Players and game.Players.LocalPlayer
local HWID = game:GetService("RbxAnalyticsService"):GetClientId()
local Premium = getgenv().Premium
getgenv().Hwid = nil
local HwidL = game:GetService("RbxAnalyticsService"):GetClientId()
repeat 
    loadstring(game:HttpGet("https://raw.githubusercontent.com/Yumiara/Main/main/Hw.lua"))()
    task.wait(5)
until getgenv().Hwid ~= nil
task.wait()
local function checkHWID()
    for _, hwid in ipairs(getgenv().Hwid) do
        if HwidL == hwid then
            return true 
        end
    end
    return false
end
if Premium then
    if checkHWID() then
        warn("Whitelist!")
    else
        game.Players.LocalPlayer:Kick("YOU ARE BLACKLIST FROM TTJY HUB | nah jk")
    end
else
    --game.Players.LocalPlayer:Kick("Premium User Only")
end
local Players = game:GetService("Players")
local RunService = game:GetService("RunService")
function isPlayerNear(part, distance)
    local player = game.Players.LocalPlayer
    local character = player.Character
    local humanoid = character and character:FindFirstChildOfClass("Humanoid")

    if not humanoid or not part:IsA("Model") then
        return false
    end

    local partPosition = part.PrimaryPart and part.PrimaryPart.Position or part:GetModelCFrame().Position
    local playerPosition = humanoid.Parent.PrimaryPart.Position
    local calculatedDistance = (partPosition - playerPosition).magnitude

    return calculatedDistance <= distance
end
local breakablesFolder = workspace:WaitForChild("__THINGS"):WaitForChild("Breakables")
local remoteEvent = game:GetService("ReplicatedStorage"):WaitForChild("Network"):WaitForChild("Breakables_PlayerDealDamage")
Range = 50
RunService.Heartbeat:Connect(function()
    if autofarmnearest then
        for _, v in pairs(breakablesFolder:GetDescendants()) do
            if v:IsA("ClickDetector") and isPlayerNear(v.Parent.Parent.Parent, Range) then
                local args = {
                    [1] = tostring(v.Parent.Parent.Parent.Name)
                }

                repeat
                remoteEvent:FireServer(unpack(args))
                wait()
                until not v
            end
        end
        task.wait()
    else

    end
end)
local Fluent = loadstring(game:HttpGet("https://github.com/dawid-scripts/Fluent/releases/latest/download/main.lua"))()
local SaveManager = loadstring(game:HttpGet("https://raw.githubusercontent.com/dawid-scripts/Fluent/master/Addons/SaveManager.lua"))()
local InterfaceManager = loadstring(game:HttpGet("https://raw.githubusercontent.com/dawid-scripts/Fluent/master/Addons/InterfaceManager.lua"))()

local Window = Fluent:CreateWindow({
    Title = "Pet Simulator 99 v.UP1FV",
    SubTitle = "by TTJY",
    TabWidth = 110,
    Size = UDim2.fromOffset(580, 400),
    Acrylic = false,
    Theme = "Dark",
    MinimizeKey = Enum.KeyCode.RightControl
})

local Tabs = {
    Main = Window:AddTab({ Title = "Main", Icon = "" }),
    PlayerTab = Window:AddTab({ Title = "Player", Icon = "" }),
    TeleportTab = Window:AddTab({ Title = "Teleport", Icon = "" }),
    Credits = Window:AddTab({ Title = "Credits", Icon = "" }),
    Settings = Window:AddTab({ Title = "Settings", Icon = "settings" })
}

local Options = Fluent.Options

do
    Tabs.Main:AddSection("Auto Farm")
    local AutoFarmNearLest = Tabs.Main:AddToggle("AutoFarmNearLest", {Title = "Auto Farm Nearest", Default = false })

    AutoFarmNearLest:OnChanged(function()
        autofarmnearest = Options.AutoFarmNearLest.Value
    end)
    local RangeATF = Tabs.Main:AddSlider("RangeATF", {
        Title = "Range",
        Description = "",
        Default = 50,
        Min = 0,
        Max = 100,
        Rounding = 1,
        Callback = function(Value)
            Range = Value
        end
    })

    RangeATF:OnChanged(function(Value)
        Range = Value
    end)
end

if getgenv().Addons then
    SaveManager:SetLibrary(Fluent)
    InterfaceManager:SetLibrary(Fluent)
    SaveManager:IgnoreThemeSettings()
    SaveManager:SetIgnoreIndexes({})
    InterfaceManager:SetFolder("TTJY HUB")
    SaveManager:SetFolder("The Mimic")
    InterfaceManager:BuildInterfaceSection(Tabs.Settings)
    SaveManager:BuildConfigSection(Tabs.Settings)
    Window:SelectTab(1)
    SaveManager:LoadAutoloadConfig()
end
