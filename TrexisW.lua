repeat task.wait() until game:IsLoaded()
local HWID = game:GetService("RbxAnalyticsService"):GetClientId()
local Premium = getgenv().Premium
coroutine.wrap(function()
    game:GetService("ReplicatedStorage"):WaitForChild("Sampling"):Destroy()
end)()
repeat task.wait() until game:IsLoaded() and game.Players and game.Players.LocalPlayer
local HWID = game:GetService("RbxAnalyticsService"):GetClientId()
local Premium = getgenv().Premium
coroutine.wrap(function()
    game:GetService("ReplicatedStorage"):WaitForChild("Sampling"):Destroy()
end)()
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
task.wait()
local ConsoleOutputCount = 0
-- Create a ScreenGui
local gui = Instance.new("ScreenGui")
gui.Name = "MimicConsole"
gui.Parent = game.CoreGui

-- Create a Frame for the background with an offset on the Y axis
local background = Instance.new("Frame")
background.Size = UDim2.new(1, 0, 1, 0) -- Increased Y size for offset
background.Position = UDim2.new(0, 0, 0, 0) -- Offset on the Y axis
background.BackgroundColor3 = Color3.new(0, 0, 0)
background.BorderSizePixel = 0
background.Parent = gui

-- Create a TextLabel for the title
local title = Instance.new("TextLabel")
title.Text = "The Mimic Console"
title.TextColor3 = Color3.new(1, 0, 0)
title.Size = UDim2.new(0, 200, 0, 50)
title.Position = UDim2.new(0.5, -100, 0, 10)
title.Font = Enum.Font.SourceSansBold
title.BackgroundTransparency = 1
title.TextSize = 20
title.Parent = gui

-- Create a Frame to hold text elements
local textHolder = Instance.new("Frame")
textHolder.Size = UDim2.new(0.8, 0, 0.6, 0)
textHolder.Position = UDim2.new(0.1, 0, 0.15, 0)
textHolder.BackgroundColor3 = Color3.new(0, 0, 0)
textHolder.BackgroundTransparency = 0
textHolder.BorderSizePixel = 3
textHolder.BorderMode = Enum.BorderMode.Inset
textHolder.BorderColor3 = Color3.new(0, 1, 0)
textHolder.Parent = gui

-- Create a TextLabel for the console output with a green background
local consoleOutput = Instance.new("TextLabel")
consoleOutput.Size = UDim2.new(1, 0, 0, 20)
consoleOutput.BackgroundColor3 = Color3.new(0, 0, 0) -- Green background
consoleOutput.TextColor3 = Color3.new(0, 1, 0)
consoleOutput.BorderSizePixel = 0
consoleOutput.TextWrapped = true
consoleOutput.TextXAlignment = Enum.TextXAlignment.Left -- Align text to the left
consoleOutput.Parent = textHolder

-- Create another TextLabel with a green background (you can add more dynamically)
local additionalTextLabel = Instance.new("TextLabel")
additionalTextLabel.Size = UDim2.new(1, 0, 0, 20)
additionalTextLabel.Position = UDim2.new(0, 0, 0.1, 0) -- Adjusted position
additionalTextLabel.BackgroundColor3 = Color3.new(0, 0, 0) -- Green background
additionalTextLabel.TextColor3 = Color3.new(0, 1, 0)
additionalTextLabel.BorderSizePixel = 0
additionalTextLabel.TextWrapped = true
additionalTextLabel.Text = "im gay"
additionalTextLabel.TextXAlignment = Enum.TextXAlignment.Left
additionalTextLabel.Parent = textHolder

consoleOutput.Text = "Waiting for game to load."
task.wait()
consoleOutput.Text = "Waiting for game to load. ."
task.wait()
consoleOutput.Text = "Waiting for game to load. . ."
additionalTextLabel.Visible = false
additionalTextLabel.Visible = true
additionalTextLabel.Text = "Auto load 0%"
task.wait()

local additionalTextLabel2 = Instance.new("TextLabel")
additionalTextLabel2.Size = UDim2.new(1, 0, 0, 20)
additionalTextLabel2.Position = UDim2.new(0, 0, 0.1, 0) -- Adjusted position
additionalTextLabel2.BackgroundColor3 = Color3.new(0, 0, 0) -- Green background
additionalTextLabel2.TextColor3 = Color3.new(0, 1, 0)
additionalTextLabel2.BorderSizePixel = 0
additionalTextLabel2.TextWrapped = true
additionalTextLabel2.Text = "Bypassing Anti Cheat"
additionalTextLabel2.TextXAlignment = Enum.TextXAlignment.Left
additionalTextLabel2.Parent = textHolder

local SuccessBypsss = false
coroutine.wrap(function()
    game:GetService("ReplicatedStorage"):WaitForChild("Sampling"):Destroy()
end)()
coroutine.wrap(function()
    while not SuccessBypsss do
        additionalTextLabel2.Text = "Bypassing Anti Cheat"
        task.wait(0.3)
        additionalTextLabel2.Text = "Bypassing Anti Cheat. ."
        task.wait(0.3)
        additionalTextLabel2.Text = "Bypassing Anti Cheat. . ."
        task.wait(0.3)
        if SuccessBypsss then
            additionalTextLabel2.Text = "Successfully Bypass Anti Cheat"
        end
        task.wait()
    end
end)()
task.wait()
function Byfrosent(call)
    if typeof(call) ~= "table" then 
        return
    end 
    if call[1] == "Clear" then 
        if not hookmetamethod then 
            return "your executor not support to using anti-cheat-bypass [PH 2.1 Byfrosent - N Verison]"
        end
        local Players = game:GetService('Players')
        local LocalPlayer = Players.LocalPlayer
        local oldIndex1
        local oldIndex2
        oldIndex1 = hookmetamethod(game, "__index", function(self, method)
            if self == LocalPlayer and method:lower() == "kick" then
                return error("Expected ':' not '.' calling member function Kick", 2) -- bypass line
            end
            return oldIndex1(self, method)
        end)
        oldIndex2 = hookmetamethod(game, "__namecall", function(self, ...)
            if self == LocalPlayer and getnamecallmethod():lower() == "kick" then -- bypass line | lower for lower a code inside that script on client side.
                return -- return before kick
            end
            return oldIndex2(self, ...)
        end)        
        print('PH Byfrosent: Successfully hook a kick function currently in game for now!')
    end 
end

-- # How To Uses 

Byfrosent({"Clear"})
task.wait(1)
function Byfrosent(call)
    if typeof(call) ~= "table" then 
        return
    end 
    if call[1] == "Clear" then 
        if not hookmetamethod then 
            return "your executor not support to using anti-cheat-bypass [PH 2.1 Byfrosent - N Verison]"
        end
        local Players = game:GetService('Players')
        local LocalPlayer = Players.LocalPlayer
        local oldIndex1
        local oldIndex2
        oldIndex1 = hookmetamethod(game, "__index", function(self, method)
            if self == LocalPlayer and method:lower() == "kick" then
                return error("Expected ':' not '.' calling member function Kick", 2) -- bypass line
            end
            return oldIndex1(self, method)
        end)
        oldIndex2 = hookmetamethod(game, "__namecall", function(self, ...)
            if self == LocalPlayer and getnamecallmethod():lower() == "kick" then -- bypass line | lower for lower a code inside that script on client side.
                return -- return before kick
            end
            return oldIndex2(self, ...)
        end)        
        print('PH Byfrosent: Successfully hook a kick function currently in game for now!')
    end 
end

-- # How To Uses 

Byfrosent({"Clear"})
task.wait(1)
function Byfrosent(call)
    if typeof(call) ~= "table" then 
        return
    end 
    if call[1] == "Clear" then 
        if not hookmetamethod then 
            return "your executor not support to using anti-cheat-bypass [PH 2.1 Byfrosent - N Verison]"
        end
        local Players = game:GetService('Players')
        local LocalPlayer = Players.LocalPlayer
        local oldIndex1
        local oldIndex2
        oldIndex1 = hookmetamethod(game, "__index", function(self, method)
            if self == LocalPlayer and method:lower() == "kick" then
                return error("Expected ':' not '.' calling member function Kick", 2) -- bypass line
            end
            return oldIndex1(self, method)
        end)
        oldIndex2 = hookmetamethod(game, "__namecall", function(self, ...)
            if self == LocalPlayer and getnamecallmethod():lower() == "kick" then -- bypass line | lower for lower a code inside that script on client side.
                return -- return before kick
            end
            return oldIndex2(self, ...)
        end)        
        print('PH Byfrosent: Successfully hook a kick function currently in game for now!')
    end 
end

-- # How To Uses 

Byfrosent({"Clear"})

task.wait(1)
SuccessBypsss = true
task.wait(3)
local additionalTextLabel3 = Instance.new("TextLabel")
additionalTextLabel3.Size = UDim2.new(1, 0, 0, 20)
additionalTextLabel3.Position = UDim2.new(0, 0, 0.2, 0) -- Adjusted position
additionalTextLabel3.BackgroundColor3 = Color3.new(0, 0, 0) -- Green background
additionalTextLabel3.TextColor3 = Color3.new(0, 1, 0)
additionalTextLabel3.BorderSizePixel = 0
additionalTextLabel3.TextWrapped = true
additionalTextLabel3.Text = "Loading script and closing console"
additionalTextLabel3.TextXAlignment = Enum.TextXAlignment.Left
additionalTextLabel3.Parent = textHolder

local finishload = false
coroutine.wrap(function()
    additionalTextLabel3.Text = "Loading script and closing console. "
    task.wait()
    additionalTextLabel3.Text = "Loading script and closing console. ."
    task.wait()
    repeat task.wait() until finishload
    gui.Enabled = false
    task.wait()
end)()
task.wait()
local FullPath = nil
local BALLGIVER
local tailHitbox
local LASEROFNAGISA
local selectedObject
local CustomFirePropmt = false
local selectedIndex
local FLYING = true
local matches = {}
NightMareMode = false
FirstPressCook = true
FirstPressJigoku = true
local Order270 = nil
local originalPositionofHum = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.Position
local originalWalkSpeed = game.Players.LocalPlayer.Character.Humanoid.WalkSpeed
local originalJumpPower = game.Players.LocalPlayer.Character.Humanoid.JumpPower
local RegenerationAmount = nil
local RegenerationDelay = nil
local DeductionDelay = nil
local DeductionAmount = nil
local Speed = nil
local BrightnessofL = 0
local rangeofL = 0
local CONTROL = {F = 0, B = 0, L = 0, R = 0, Q = 0, E = 0}
uis = game:GetService("UserInputService")
local cmdp = game:GetService("Players")
local cmdlp = cmdp.LocalPlayer
local player = cmdlp
local cmdl = game:GetService("Lighting")
local cmdrs = game:GetService("ReplicatedStorage")
local cmdrs2 = game:GetService("RunService")
local cmdts = game:GetService("TweenService")
local cmdvu = game:GetService("VirtualUser")
local cmduis = game:GetService("UserInputService")
local Mouses = cmdlp:GetMouse()
cmdm = Mouses
speedofthevfly = 1
speedofthefly = 1
local VirtualInputManager = game:GetService('VirtualInputManager')

function keyPress(Key, Press)
   VirtualInputManager:SendKeyEvent(Press, Key, false, game)
end
local RunService = game:GetService("RunService")
local ReplicatedStorage = game:GetService("ReplicatedStorage")
local CoreGui = game:GetService("CoreGui")
local HttpService = game:GetService("HttpService")
local VirtualUser = game:GetService("VirtualUser")
local Players = game:GetService("Players")
local Workspace = game:GetService("Workspace")
local VirtualInputManager = game:GetService("VirtualInputManager")
local StarterGui = game:GetService("StarterGui")
local tweenService = game:GetService("TweenService")
local tweenInfo = TweenInfo.new(1, Enum.EasingStyle.Linear)
local tween = nil
local player = Players.LocalPlayer
local char = player.Character
local Backpack = player.Backpack
local AutoDebounce = false
local TalkDebounce = false 
local MeatDebounce = false 
local pic4 = {}
local listofcandle = {}
local nearestPrompt = nil
local FirstPress = false
local success = nil
getgenv().Clip = nil

local GetConnections = function(A, B)
    for i,v in pairs(getconnections(A[tostring(B)])) do
        v:Fire()
    end 
end
local function findNearestBase()
    local maxDistance = math.huge
    local nearestTarget

    for _, v in ipairs(Workspace:GetDescendants()) do
        if v.Name == "Base" then
            local distance = (v.Position - playerCharacter.HumanoidRootPart.Position).Magnitude
            if distance < maxDistance then
                nearestTarget = v
                maxDistance = distance
            end
        end
    end

    return nearestTarget
end

local function createBillBoardGui(targetToAddUI, text)
    if not targetToAddUI then
        return
    end

    local billboardGui = Instance.new("BillboardGui", targetToAddUI)
    billboardGui.Size = UDim2.new(1, 0, 1, 0)
    billboardGui.Name = "PUZZLEREVEAL"
    billboardGui.AlwaysOnTop = true

    local frame = Instance.new("Frame", billboardGui)
    frame.Size = UDim2.new(1, 0, 1, 0)
    frame.BackgroundTransparency = 1
    frame.BorderSizePixel = 0

    local textLabel = Instance.new("TextLabel", frame)
    textLabel.Text = tostring(text)
    textLabel.Size = UDim2.new(1, 0, 1, 0)
    textLabel.BackgroundTransparency = 1
    textLabel.BorderSizePixel = 0
    textLabel.TextColor3 = Color3.new(255, 255, 255)
    textLabel.TextSize = 30
    textLabel.Font = Enum.Font.Arial
end

local function resetThings()
    for _, v in ipairs(Workspace:GetDescendants()) do
        if v.Name == "PUZZLEREVEAL" then
            v:Destroy()
        end
    end
end

local function interfaceCount(val)
    if val == "Add" then
        interfaceTables.SendCount = interfaceTables.SendCount + 1
    elseif val == "Remove" then
        interfaceTables.SendCount = interfaceTables.SendCount - 1
    elseif val == "DeleteAll" then
        interfaceTables.SendCount = 1
    end
end

local function onLeftPuzzle(data)
    if data.Call == "TowerPuzzle.LeftPuzzle" then
        resetThings()
    end
end

local interfaceTables = {
    SendCount = 1
}

local baseName = "Base"
local listButtons = {}
local UserInputService = game:GetService("UserInputService")
local function isPlayerNear(part,distance)
    local distanceThreshold = distance
    local distance = (part.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude
    return distance <= distanceThreshold
end
local function isPlayerNearPosition(player, position, radius)
    local character = player.Character
    if character and character:FindFirstChild("HumanoidRootPart") then
        local playerPosition = character.HumanoidRootPart.Position
        local distance = (playerPosition - position).Magnitude
        return distance <= radius
    end
    return false
end
remoteCalled = false

function checkRemoteCall()
    if remoteCalled then
        remoteCalled = false
        return true
    else
        return false
    end
end

remoteCalled2 = false

function checkRemoteCall2()
    if remoteCalled2 then
        remoteCalled2 = false
        return true
    else
        return false
    end
end

bindableCalled = false

function checkBindableCall()
    if bindableCalled then
        bindableCalled = false
        return true
    else
        return false
    end
end
local Clip = nil

function noclip()
    if Clip == false and game.Players.LocalPlayer.Character ~= nil then
        for _,v in pairs(game.Players.LocalPlayer.Character:GetDescendants()) do
            if v:IsA('BasePart') and v.CanCollide and v.Name ~= floatName then
                v.CanCollide = false
            end
        end
    end
    wait(0.21)
end
local function checkPlatform()
    if UserInputService.TouchEnabled then
        print("User is on a mobile device.")
        getgenv().DeviceType = "Mobile"
    else
        print("User is on a PC.")
        getgenv().DeviceType = "Pc"
    end
end

checkPlatform()
local GetConnections = function(A, B)
    for i,v in pairs(getconnections(A[tostring(B)])) do
        v:Fire()
    end 
end
local function fireproximitypromptv2(Obj, Amount, Skip)
    if Obj.ClassName == "ProximityPrompt" then 
        Amount = Amount or 1
        local PromptTime = Obj.HoldDuration
        if Skip then 
            Obj.HoldDuration = 0
        end
        for i = 1, Amount do 
            Obj:InputHoldBegin()
            if not Skip then 
                wait(Obj.HoldDuration)
            end
            Obj:InputHoldEnd()
        end
        Obj.HoldDuration = PromptTime
    else 
        error("userdata<ProximityPrompt> expected")
    end
end
getgenv().Float = false
local Part = Instance.new("Part")
Part.Size = Vector3.new(2, 0.2, 1.5)
Part.Material = Enum.Material.Grass
Part.Anchored = true
Part.Transparency = 1
Part.Parent = workspace
local function updatePartPosition()
    local character = game.Players.LocalPlayer.Character
    local humanoidRootPart = character and character:FindFirstChild("HumanoidRootPart")
    
    if humanoidRootPart and getgenv().Float then
        Part.CFrame = humanoidRootPart.CFrame * CFrame.new(0, -3.1, 0)
    else
        Part.CFrame = CFrame.new(0, -10000, 0)
    end
end
    
game:GetService("RunService").RenderStepped:Connect(updatePartPosition)
local function isPlayerNearModel(part,distance)
    local distanceThreshold = distance -- Define the distance threshold for "near" (you can adjust this value)
    local distance = (part.WorldPivot.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude
    return distance <= distanceThreshold
end
local function TweenBIGO(speed, posX, posY, posZ)
    tweenInfo = TweenInfo.new(speed, Enum.EasingStyle.Linear)
    tween = tweenService:Create(game:GetService("Players").LocalPlayer.Character.HumanoidRootPart, tweenInfo, {CFrame = CFrame.new(posX, posY, posZ)})
    tween:Play()
end
local function Tp(posX, posY, posZ, next)
    player.Character:FindFirstChild("HumanoidRootPart").CFrame = CFrame.new(posX, posY, posZ)
    task.wait(next)
end
local listToRemove21 = {
    "Meshes/house1",
    "Meshes/house2",
    "Meshes/house6 (1)",
    "Meshes/house4 (2)",
    "Window",
    "Bicycle w/ Basket",
    "Truck",
    "Electric Cable(2)",
    "MapleLeafTreeVar01",
    "MapleLeafTreeVar02",
    "Cardboard Box 2",
    "Divider_1800_800",
    "AC",
    "Lights",
    "Box004",
    "Papers",
    "Table_02_100.002",
    "Meshes/officechair",
    "Box007",
    "Box008",
    "Mouse",
    "Folding Chair",
    "flower",
    "Phone",
    "Whiteboard Frame",
    "WhiteBinder",
    "BlueBinder",
    "corpse",
    "AutopsyTable",
    "LargePictureFrame",
    "InstrumentTable",
    "Stool",
    "Bucket",
    "scene1:wall_scroll_1",
    "scene1:cloth2_low",
    "scene1:table2_low",
    "scene1:doll_8",
    "bed",
    "DecoVase03",
    "DecoFan_02",
    "DecoFan_01",
    "CoffeeTable",
    "Foliage_Grass01",
    "Foliage_GrassClump02",
    "Foliage_Weeds01",
    "LRoomCushion_02",
    "LRoomCushion_03",
    "LRoomCushion_04",
    "LRoomCup_01",
    "LRoomCup_02",
    "LRoomBowl_02",
    "LRoomCushion_01",
    "LRoomSkillet_01",
    "LRoomFan",
    "LRoomKettle_01",
    "Medium Moss Boulder 01",
    "scene1:shelf_storage_6",
    "scene1:rice_barrel_57",
    "scene1:furnace_4",
    "scene1:kettle_low_4",
    "scene1:hang_kettle_4",
    "FakeHead",
    "RealHead",
    "gashadead",
    "SM_Alien_Tree_B2_LOD1",
    "mushrooms",
    "statue",
    "Fireflies",
    "Shelf02",
    "LRoomHibachi_01",
    "LRoomTeaKettle_01",
    "LRoomKettle_02",
    "Fern_OuterLeaves",
    "Shelf01",
    "Tree",
    "Tree_Collision",
    "RailingsSection_02",
    "Betobetosan",
    "tofuboynpc",
    "Meshes/gate",
    "FallenTreeVar1",
    "Eyemove",
    "YokaiTownfolks",
    "lantern.001",
    "Foliage_Maple_Tree.001",
    "Meshes/clothj",
    "_Torii",
    "eye",
    "seaweed",
    "decimatedboulder"
}
local listToRemove22 = {
    "Rock_Gate",
    "LargeBoulder_Var02",
    "Seaweed",
    "ray",
    "Japanese Toro Stone Lantern",
    "decimatedboulder",
    "BUBBLES",
    "Meshes/uploads_files_2558496_Temizuya.fbx",
    "gates",
    "lanternceiling",
    "PROP_High_Back_Prison_Chair",
    "Meshes/archlow",
    "Cabinet With PBR",
    "HumanCage",
    "Vase_01",
    "Realistic old sofa",
    "GLASS",
    "cow",
    "LockedDoor",
    "LRoomCushion_03",
    "P2",
    "PipeElbow3",
    "Dust",
    "Wooden Crate",
    "Bubbles",
    "Vine_Large01_1",
    "Small Crate",
    "Railing",
    "scene1:shelf_storage_6",
    "RetopoGroup002",
    "SM_skull_01",
    "SM_skull_02",
    "SM_skull_03",
    "SM_skull_04",
    "SM_skull_05",
    "SM_skull_06",
    "salve",
    "chair",
    "Jar2",
    "scene1:rice_barrel_57",
    "Whales",
    "Spinning Fishies",
    "Fog",
    "Vertical_Vine02",
    "ubrpbjcfa_LOD4",
    "bubble",
    "YokaiTownfolks",
    "UshiOni",
    "Meshes/structure",
    "CoffeeTable",
    "DecoVase03",
    "FallingPillars",
    "Plane",
    "PillarFall",
    "rockalreadyplace",
    "BigRockFall",
    "Umibozu2",
    "Coral10_G2",
    "Coral_3_G3",
    "Coral7_G3",
    "Aset_stone_carved_L_ucmmahofa_LOD5",
    "LargeBoulder_Var02",
    "DustFalling",
    "UshiOniChase",
    "Playground_Globe",
    "Meshes/tlnvecpfa_LOD1",
    "Playground_Swing",
    "Playground_Teeter",
    "Playground_Merry_Go_Around",
    "Playground_Slide",
    "Tree",
    "wooden_fenceC_3",
    "wooden_fenceC_1",
    "Boulder",
    "Section4Barrier",
    "Fern_OuterLeaves",
    "Slug",
    "wooden_fenceC_2",
    "Playground_Climber_A",
    "Playground_Climber_B",
    "A6M Zero",
    "DemonBuilding",
    "Playground_Climber_C",
    "Playground_Climber_D",
    "Tree_1",
    "Creeper Ivy",
    "FallenTreeMossyVar01",
    "LargeBoulder01",
    "Redwoodtree-LowLOD-Var01",
    "RedwoodTree-Var01",
    "MapleLeafTreeVar01",
    "DogwoodTree_Var01",
    "RedwoodTreeLarge-Var01"
}
local function isPlayerNearPos(targetPosition, distanceThreshold)
    local character = game.Players.LocalPlayer.Character
    if not character or not character:IsA("Model") then
        return false
    end

    local humanoidRootPart = character:FindFirstChild("HumanoidRootPart")
    if not humanoidRootPart or not humanoidRootPart:IsA("BasePart") then
        return false
    end

    local playerPosition = humanoidRootPart.Position
    local distance = (playerPosition - targetPosition).Magnitude

    return distance <= distanceThreshold
end
local screenGui2 = Instance.new("ScreenGui")
screenGui2.Name = "InputPcToMobile"
screenGui2.Parent = game.CoreGui
local buttonSize = UDim2.new(0.05, 0, 0.05, 0)
local function createButton(key, position)
    local button = Instance.new("TextButton")
    button.Name = key
    button.Text = key
    button.Size = buttonSize
    button.Position = position
    button.BackgroundColor3 = Color3.new(0.5, 0.5, 0.5)
    button.Parent = screenGui2

    local isPressed = false
    button.MouseButton1Down:Connect(function()
        isPressed = true
        if key == "W" then
            CONTROL.F = speedofthefly
            print("W")
        elseif key == "S" then
            CONTROL.B = -speedofthefly
            print("S")
        elseif key == "A" then
            CONTROL.L = -speedofthefly
            print("A")
        elseif key == "D" then
            CONTROL.R = speedofthefly
            print("D")
        end
    end)

    button.MouseButton1Up:Connect(function()
        isPressed = false
        if key == "W" then
            CONTROL.F = 0
        elseif key == "S" then
            CONTROL.B = 0
        elseif key == "A" then
            CONTROL.L = 0
        elseif key == "D" then
            CONTROL.R = 0
        end
    end)
end

-- Create buttons for W, A, S, D
createButton("W", UDim2.new(0.05, 0, 0.1, 0))
task.wait()
createButton("A", UDim2.new(0, 0, 0.2, 0))
task.wait()
createButton("S", UDim2.new(0.05, 0, 0.3, 0))
task.wait()
createButton("D", UDim2.new(0.1, 0, 0.2, 0))
task.wait()


--ConsoleCountStart
ConsoleOutputCount = ConsoleOutputCount + 0.2
local function MainConsoleLogOutF(Text)
    if ConsoleOutputCount >= 0.8 then
        ConsoleOutputCount = 0.1
        for _, v in pairs(textHolder:GetChildren()) do
            if v then
                v:Destroy()
            end
        end
    else
        ConsoleOutputCount = ConsoleOutputCount + 0.1
    end
    warn(ConsoleOutputCount)
    local MainConsoleLog = Instance.new("TextLabel")
    MainConsoleLog.Size = UDim2.new(1, 0, 0, 20)
    MainConsoleLog.Position = UDim2.new(0, 0, ConsoleOutputCount, 0)
    MainConsoleLog.BackgroundColor3 = Color3.new(0, 0, 0)
    MainConsoleLog.TextColor3 = Color3.new(0, 1, 0)
    MainConsoleLog.BorderSizePixel = 0
    MainConsoleLog.TextWrapped = true
    MainConsoleLog.Text = tostring(Text)
    MainConsoleLog.TextXAlignment = Enum.TextXAlignment.Left
    MainConsoleLog.Parent = textHolder
end
local function Notify(title, context)
    game.StarterGui:SetCore("SendNotification",{
        Title = tostring(title);
        Text = tostring(context);
    })
end

local DrRayLibrary = loadstring(game:HttpGet("https://raw.githubusercontent.com/Yumiara/Main/main/UNANIMUX"))()
local window = DrRayLibrary:Load("The Mimic Script v.UP2FV", "Default")


--Main Tab
local MAIN = DrRayLibrary.newTab("Main", "ImageIdHere")
MAIN.newLabel("Tutorial")
MAIN.newButton("Read", "Important For Beginners", function()
    
end)
MAIN.newLabel("Main")
MAIN.newButton("Infinite Stamina", "Run faster with infinite stamina", function()
    for i,v in next, getgc(true) do
        if type(v) == 'table' and rawget(v, 'RegenerationAmount') and rawget(v, 'RegenerationDelay') and rawget(v, 'DeductionDelay') and rawget(v, 'DeductionAmount') and rawget(v, 'Speed') then
            RegenerationAmount = v.RegenerationAmount
            RegenerationDelay = v.RegenerationDelay
            DeductionDelay = v.DeductionDelay
            DeductionAmount = v.DeductionAmount
            Speed = v.Speed
            task.wait(1)
            v.RegenerationAmount = math.huge
            v.RegenerationDelay = 0.1
            v.DeductionDelay = 0.1
            v.DeductionAmount = .00001
            v.Speed = 100
        end
    end
end)
MAIN.newButton("Reset Stamina", "Press this first then unsprint and sprint again to reset", function()
    for i,v in next, getgc(true) do
        if type(v) == 'table' and rawget(v, 'RegenerationAmount') and rawget(v, 'RegenerationDelay') and rawget(v, 'DeductionDelay') and rawget(v, 'DeductionAmount') and rawget(v, 'Speed') then
            v.RegenerationAmount = RegenerationAmount
            v.RegenerationDelay = RegenerationDelay
            v.DeductionDelay = DeductionDelay
            v.DeductionAmount = DeductionAmount
            v.Speed = Speed
        end
    end
end)
MAIN.newButton("Instance E", "Make you instance press any button without have to hold it | Only the one that near you", function()
    for _, v in pairs(workspace:GetDescendants()) do
        if v:IsA("ProximityPrompt") then
            v.HoldDuration = 0
        end
    end
end)
MAIN.newButton("FullBright", "", function()
    if not getgenv().FullBrightExecuted then
    
        getgenv().FullBrightEnabled = false
    
        getgenv().NormalLightingSettings = {
            Brightness = game:GetService("Lighting").Brightness,
            ClockTime = game:GetService("Lighting").ClockTime,
            FogEnd = game:GetService("Lighting").FogEnd,
            GlobalShadows = game:GetService("Lighting").GlobalShadows,
            Ambient = game:GetService("Lighting").Ambient
        }
    
        game:GetService("Lighting"):GetPropertyChangedSignal("Brightness"):Connect(function()
            if game:GetService("Lighting").Brightness ~= 1 and game:GetService("Lighting").Brightness ~= getgenv().NormalLightingSettings.Brightness then
                getgenv().NormalLightingSettings.Brightness = game:GetService("Lighting").Brightness
                if not getgenv().FullBrightEnabled then
                    repeat
                        wait()
                    until getgenv().FullBrightEnabled
                end
                game:GetService("Lighting").Brightness = 1
            end
        end)
    
        game:GetService("Lighting"):GetPropertyChangedSignal("ClockTime"):Connect(function()
            if game:GetService("Lighting").ClockTime ~= 12 and game:GetService("Lighting").ClockTime ~= getgenv().NormalLightingSettings.ClockTime then
                getgenv().NormalLightingSettings.ClockTime = game:GetService("Lighting").ClockTime
                if not getgenv().FullBrightEnabled then
                    repeat
                        wait()
                    until getgenv().FullBrightEnabled
                end
                game:GetService("Lighting").ClockTime = 12
            end
        end)
    
        game:GetService("Lighting"):GetPropertyChangedSignal("FogEnd"):Connect(function()
            if game:GetService("Lighting").FogEnd ~= 786543 and game:GetService("Lighting").FogEnd ~= getgenv().NormalLightingSettings.FogEnd then
                getgenv().NormalLightingSettings.FogEnd = game:GetService("Lighting").FogEnd
                if not getgenv().FullBrightEnabled then
                    repeat
                        wait()
                    until getgenv().FullBrightEnabled
                end
                game:GetService("Lighting").FogEnd = 786543
            end
        end)
    
        game:GetService("Lighting"):GetPropertyChangedSignal("GlobalShadows"):Connect(function()
            if game:GetService("Lighting").GlobalShadows ~= false and game:GetService("Lighting").GlobalShadows ~= getgenv().NormalLightingSettings.GlobalShadows then
                getgenv().NormalLightingSettings.GlobalShadows = game:GetService("Lighting").GlobalShadows
                if not getgenv().FullBrightEnabled then
                    repeat
                        wait()
                    until getgenv().FullBrightEnabled
                end
                game:GetService("Lighting").GlobalShadows = false
            end
        end)
    
        game:GetService("Lighting"):GetPropertyChangedSignal("Ambient"):Connect(function()
            if game:GetService("Lighting").Ambient ~= Color3.fromRGB(178, 178, 178) and game:GetService("Lighting").Ambient ~= getgenv().NormalLightingSettings.Ambient then
                getgenv().NormalLightingSettings.Ambient = game:GetService("Lighting").Ambient
                if not getgenv().FullBrightEnabled then
                    repeat
                        wait()
                    until getgenv().FullBrightEnabled
                end
                game:GetService("Lighting").Ambient = Color3.fromRGB(178, 178, 178)
            end
        end)
    
        game:GetService("Lighting").Brightness = 1
        game:GetService("Lighting").ClockTime = 12
        game:GetService("Lighting").FogEnd = 786543
        game:GetService("Lighting").GlobalShadows = false
        game:GetService("Lighting").Ambient = Color3.fromRGB(178, 178, 178)
    
        local LatestValue = true
        spawn(function()
            repeat
                wait()
            until getgenv().FullBrightEnabled
            while wait() do
                if getgenv().FullBrightEnabled ~= LatestValue then
                    if not getgenv().FullBrightEnabled then
                        game:GetService("Lighting").Brightness = getgenv().NormalLightingSettings.Brightness
                        game:GetService("Lighting").ClockTime = getgenv().NormalLightingSettings.ClockTime
                        game:GetService("Lighting").FogEnd = getgenv().NormalLightingSettings.FogEnd
                        game:GetService("Lighting").GlobalShadows = getgenv().NormalLightingSettings.GlobalShadows
                        game:GetService("Lighting").Ambient = getgenv().NormalLightingSettings.Ambient
                    else
                        game:GetService("Lighting").Brightness = 1
                        game:GetService("Lighting").ClockTime = 12
                        game:GetService("Lighting").FogEnd = 786543
                        game:GetService("Lighting").GlobalShadows = false
                        game:GetService("Lighting").Ambient = Color3.fromRGB(178, 178, 178)
                    end
                    LatestValue = not LatestValue
                end
            end
        end)
    end
    
    getgenv().FullBrightExecuted = true
    getgenv().FullBrightEnabled = not getgenv().FullBrightEnabled
end)
MAIN.newSlider("Lantern Brightness", "", 100, false, function(Value)
    BrightnessofL = Value
end)
MAIN.newSlider("Lantern Range", "", 100, false, function(Value)
    rangeofL = Value
end)
MAIN.newButton("Set Lantern Brightness", "Hold lantern first", function()
    for _,v in pairs(workspace:GetDescendants()) do
        if v:IsA("PointLight") and v.Parent.Parent.Parent.Parent.Name == game.Players.LocalPlayer.Name or v:IsA("PointLight") and v.Parent.Parent.Parent.Name == game.Players.LocalPlayer.Name or v:IsA("SpotLight") and v.Parent.Parent.Parent.Parent.Name == game.Players.LocalPlayer.Name then
            v.Brightness = BrightnessofL
            break
        end
    end
end)
MAIN.newButton("Set Lantern Range", "Hold lantern first", function()
    for _,v in pairs(workspace:GetDescendants()) do
        if v:IsA("PointLight") and v.Parent.Parent.Parent.Parent.Name == game.Players.LocalPlayer.Name or v:IsA("PointLight") and v.Parent.Parent.Parent.Name == game.Players.LocalPlayer.Name or v:IsA("SpotLight") and v.Parent.Parent.Parent.Parent.Name == game.Players.LocalPlayer.Name then
            v.Range = rangeofL
            break
        end
    end
end)
MAIN.newToggle("Fly", "", false, function(Value)
    if Value then
        FLYING = Value
        while not cmdlp or not cmdlp.Character or not cmdlp.Character:FindFirstChild('HumanoidRootPart') or not cmdlp.Character:FindFirstChild('Humanoid') or not cmdm do
            wait()
        end

        local T = cmdlp.Character.HumanoidRootPart
        local SPEED = 0

        function FLY()
            local BG = Instance.new('BodyGyro', T)
            local BV = Instance.new('BodyVelocity', T)
            BG.P = 9e4
            BG.maxTorque = Vector3.new(9e9, 9e9, 9e9)
            BG.cframe = T.CFrame
            BV.velocity = Vector3.new(0, 0, 0)
            BV.maxForce = Vector3.new(9e9, 9e9, 9e9)

            spawn(function()
                while FLYING do
                    if CONTROL.L + CONTROL.R ~= 0 or CONTROL.F + CONTROL.B ~= 0 or CONTROL.Q + CONTROL.E ~= 0 then
                        SPEED = 50
                    elseif not (CONTROL.L + CONTROL.R ~= 0 or CONTROL.F + CONTROL.B ~= 0 or CONTROL.Q + CONTROL.E ~= 0) and SPEED ~= 0 then
                        SPEED = 0
                    end

                    if (CONTROL.L + CONTROL.R) ~= 0 or (CONTROL.F + CONTROL.B) ~= 0 or (CONTROL.Q + CONTROL.E) ~= 0 then
                        BV.velocity = ((workspace.CurrentCamera.CoordinateFrame.lookVector * (CONTROL.F + CONTROL.B)) + ((workspace.CurrentCamera.CoordinateFrame * CFrame.new(CONTROL.L + CONTROL.R, (CONTROL.F + CONTROL.B + CONTROL.Q + CONTROL.E) * 0.2, 0).p) - workspace.CurrentCamera.CoordinateFrame.p)) * SPEED
                    else
                        BV.velocity = Vector3.new(0, 0, 0)
                    end

                    BG.cframe = workspace.CurrentCamera.CoordinateFrame
                    wait()
                end

                CONTROL = {F = 0, B = 0, L = 0, R = 0, Q = 0, E = 0}
                SPEED = 0

                BG:Destroy()
                BV:Destroy()
                cmdlp.Character.Humanoid.PlatformStand = false
            end)
        end

        cmdm.KeyDown:connect(function(KEY)
            if KEY:lower() == 'w' then
                if vfly then
                    CONTROL.F = speedofthevfly
                else
                    CONTROL.F = speedofthefly
                end
            elseif KEY:lower() == 's' then
                if vfly then
                    CONTROL.B = -speedofthevfly
                else
                    CONTROL.B = -speedofthefly
                end
            elseif KEY:lower() == 'a' then
                if vfly then
                    CONTROL.L = -speedofthevfly
                else
                    CONTROL.L = -speedofthefly
                end
            elseif KEY:lower() == 'd' then
                if vfly then
                    CONTROL.R = speedofthevfly
                else
                    CONTROL.R = speedofthefly
                end
            elseif KEY:lower() == 'y' then
                if vfly then
                    CONTROL.Q = speedofthevfly * 2
                else
                    CONTROL.Q = speedofthefly * 2
                end
            elseif KEY:lower() == 't' then
                if vfly then
                    CONTROL.E = -speedofthevfly * 2
                else
                    CONTROL.E = -speedofthefly * 2
                end
            end
        end)

        cmdm.KeyUp:connect(function(KEY)
            if KEY:lower() == 'w' then
                CONTROL.F = 0
            elseif KEY:lower() == 's' then
                CONTROL.B = 0
            elseif KEY:lower() == 'a' then
                CONTROL.L = 0
            elseif KEY:lower() == 'd' then
                CONTROL.R = 0
            elseif KEY:lower() == 'y' then
                CONTROL.Q = 0
            elseif KEY:lower() == 't' then
                CONTROL.E = 0
            end
        end)

        FLY()
    else
        FLYING = Value
    end
end)
MAIN.newButton("Virtual Lantern", "Can't hold | Virtual | Can be see in Inventory", function()
    for _,v in pairs(game:GetService("ReplicatedStorage"):GetDescendants()) do
        if v.Parent.Name == "SkinsInfo" then
            v.Parent = Backpack
        end
    end
end)


--B1C1 Tab
local B1C1 = DrRayLibrary.newTab("B1C1", "ImageIdHere")
B1C1.newLabel("Tutorial")
B1C1.newButton("Read", "Important For Beginners", function()
    
end)
B1C1.newLabel("All In One")
B1C1.newButton("Auto Win", "", function()
    if game.PlaceId == 6296321810 or game.PlaceId == 6479231833 then
        Tp(3507, 37.65, -1539.45, nil)
    elseif  game.PlaceId == 6301638949 or game.PlaceId == 6480994221 then
        Tp(1274.95, 199.54, -2537.93, nil)
    else
        Notify("Error 02", "This is for chapter 1")
    end
end)
B1C1.newLabel("ESP")
B1C1.newButton("ESP Item", "", function()
    if game.PlaceId == 6296321810 or game.PlaceId == 6479231833 then
        for _,v in pairs(game.Workspace:GetDescendants()) do
            if v.Name == "Key1" or v.Name == "Key2" or v.Name == "Key3" then
            local highlight = Instance.new("Highlight")
            highlight.DepthMode = Enum.HighlightDepthMode.AlwaysOnTop
            highlight.FillColor = Color3.fromRGB(0, 1, 0)
            highlight.FillTransparency = 0.25
            highlight.OutlineColor = Color3.fromRGB(255, 255, 255)
            highlight.Parent = v
        end
    end
    elseif  game.PlaceId == 6301638949 or game.PlaceId == 6480994221 then
        Notify("Error 00", "Key not found")
    else
        Notify("Error 02", "This is for chapter 1")
    end
end)
B1C1.newButton("ESP Monster", "", function()
    if game.PlaceId == 6296321810 or game.PlaceId == 6479231833 then
        for _,v in pairs(game.Workspace:GetDescendants()) do
            if v.Name == "AI" and v.Parent.Name == "GameAI" then
                local highlight = Instance.new("Highlight")
                highlight.DepthMode = Enum.HighlightDepthMode.AlwaysOnTop
                highlight.FillColor = Color3.fromRGB(0, 1, 0)
                highlight.FillTransparency = 0.25
                highlight.OutlineColor = Color3.fromRGB(255, 255, 255)
                highlight.Parent = v
            end
        end
    elseif  game.PlaceId == 6301638949 or game.PlaceId == 6480994221 then
        for _,v in pairs(game.Workspace:GetDescendants()) do
            if v.Name == "KurikoCeiling" and v.Parent.Name == "GameAI" or v.Name == "KurikoFloor" and v.Parent.Name == "GameAI" or v.Name == "Biwaki" and v.Parent.Name == "GameAI2" or v.Name == "realshizu" and v.Parent.Name == "GameAI2" then
                local highlight = Instance.new("Highlight")
                highlight.DepthMode = Enum.HighlightDepthMode.AlwaysOnTop
                highlight.FillColor = Color3.fromRGB(0, 1, 0)
                highlight.FillTransparency = 0.25
                highlight.OutlineColor = Color3.fromRGB(255, 255, 255)
                highlight.Parent = v
            end
        end
    else
        Notify("Error 02", "This is for chapter 1")
    end
end)
B1C1.newLabel("Jigoku")
B1C1.newButton("Find Red Guy", "Aka Manto", function()
    if workspace:FindFirstChild("IdleNPC") then
        Notify("Error 00", "Found")
        Tp(310.32, 3.23, 323.65, nil)
        for i, v in ipairs(workspace.IdleNPC.HumanoidRootPart:GetDescendants()) do
            if v:IsA("ProximityPrompt") then
                v.HoldDuration = 0
                task.wait()
                fireproximityprompt(v)
            end
        end
    else
        Notify("Error 00", "Not Found")
    end
end)


--B1C2 Tab
local B1C2 = DrRayLibrary.newTab("B1C2", "ImageIdHere")
B1C2.newLabel("Tutorial")
B1C2.newButton("Read", "Important For Beginners", function()
    
end)
B1C2.newLabel("All In One")
B1C2.newButton("Auto Win", "", function()
    if game.PlaceId == 6373539583 or game.PlaceId == 6485055338 then
        Tp(64.88, 55.28, -1590, nil)
    elseif  game.PlaceId == 6406571212 or game.PlaceId == 6485055836 then
        Tp(235.17, 101.94, -590, nil)
    elseif  game.PlaceId == 6425178683 or game.PlaceId == 6485056556 then
        Tp(829.97, 72.49, -353.46, nil)
    else
        Notify("Error 02", "This is for chapter 2")
    end
end)
B1C2.newLabel("ESP")
B1C2.newButton("ESP Item", "", function()
    if game.PlaceId == 6373539583 or game.PlaceId == 6485055338 then
        for _,v in pairs(game.Workspace:GetDescendants()) do
            if v.Name == "Key1" or v.Name == "Butterfly" and v:FindFirstChild("ProxPart") and v:FindFirstChild("butterfly") then
            local highlight = Instance.new("Highlight")
            highlight.DepthMode = Enum.HighlightDepthMode.AlwaysOnTop
            highlight.FillColor = Color3.fromRGB(0, 1, 0)
            highlight.FillTransparency = 0.25
            highlight.OutlineColor = Color3.fromRGB(255, 255, 255)
            highlight.Parent = v
        end
    end
    elseif  game.PlaceId == 6406571212 or game.PlaceId == 6485055836 then
        for _,v in pairs(game.Workspace:GetDescendants()) do
            if v.Name == "Key1" or v.Name == "Butterfly" and v:FindFirstChild("ProxPart") and v:FindFirstChild("butterfly") then
            local highlight = Instance.new("Highlight")
            highlight.DepthMode = Enum.HighlightDepthMode.AlwaysOnTop
            highlight.FillColor = Color3.fromRGB(0, 1, 0)
            highlight.FillTransparency = 0.25
            highlight.OutlineColor = Color3.fromRGB(255, 255, 255)
            highlight.Parent = v
        end
    end
    elseif  game.PlaceId == 6425178683 or game.PlaceId == 6485056556 then
        for _,v in pairs(game.Workspace:GetDescendants()) do
            if v.Name == "Butterfly" and v:FindFirstChild("ProxPart") and v:FindFirstChild("butterfly") then
            local highlight = Instance.new("Highlight")
            highlight.DepthMode = Enum.HighlightDepthMode.AlwaysOnTop
            highlight.FillColor = Color3.fromRGB(0, 1, 0)
            highlight.FillTransparency = 0.25
            highlight.OutlineColor = Color3.fromRGB(255, 255, 255)
            highlight.Parent = v
        end
    end
    else
        Notify("Error 02", "This is for chapter 2")
    end
end)
B1C2.newButton("ESP Monster", "", function()
    if game.PlaceId == 6373539583 or game.PlaceId == 6485055338 then
        for _,v in pairs(game.Workspace:GetDescendants()) do
            if v.Name == "AI" and v.Parent.Name == "GameAI" or v.Name == "Kusonoki" and v.Parent.Name == "GameAI" then
                local highlight = Instance.new("Highlight")
                highlight.DepthMode = Enum.HighlightDepthMode.AlwaysOnTop
                highlight.FillColor = Color3.fromRGB(0, 1, 0)
                highlight.FillTransparency = 0.25
                highlight.OutlineColor = Color3.fromRGB(255, 255, 255)
                highlight.Parent = v
            end
        end
    elseif  game.PlaceId == 6406571212 or game.PlaceId == 6485055836 then
        for _,v in pairs(game.Workspace:GetDescendants()) do
            if v.Name == "AI" and v.Parent.Name == "GameAI" or v.Name == "AI" and v.Parent.Name == "GameAI2" then
                local highlight = Instance.new("Highlight")
                highlight.DepthMode = Enum.HighlightDepthMode.AlwaysOnTop
                highlight.FillColor = Color3.fromRGB(0, 1, 0)
                highlight.FillTransparency = 0.25
                highlight.OutlineColor = Color3.fromRGB(255, 255, 255)
                highlight.Parent = v
            end
        end
    elseif  game.PlaceId == 6425178683 or game.PlaceId == 6485056556 then
        for _,v in pairs(game.Workspace:GetDescendants()) do
            if v.Name == "AI" and v.Parent.Name == "GameAI" then
                local highlight = Instance.new("Highlight")
                highlight.DepthMode = Enum.HighlightDepthMode.AlwaysOnTop
                highlight.FillColor = Color3.fromRGB(0, 1, 0)
                highlight.FillTransparency = 0.25
                highlight.OutlineColor = Color3.fromRGB(255, 255, 255)
                highlight.Parent = v
            end
        end
    else
        Notify("Error 02", "This is for chapter 3")
    end
end)


--B1C3 Tab
local B1C3 = DrRayLibrary.newTab("B1C3", "ImageIdHere")
B1C3.newLabel("Tutorial")
B1C3.newButton("Read", "Important For Beginners", function()
    
end)
B1C3.newLabel("All In One")
B1C3.newButton("Auto Win", "", function()
    if game.PlaceId == 6472459099 or game.PlaceId == 6688734180 then
        Tp(2411.93, -23.03, 2300, nil)
    elseif  game.PlaceId == 6682163754 or game.PlaceId == 6688734313 then
        Tp(245.69, 31.72, 450, nil)
    elseif  game.PlaceId == 6682164423 or game.PlaceId == 6688734395 then
        Tp(-651, 648.99, -1014.35, 5)
        Tp(-644.07, 947.82, -1490, nil)
    else
        Notify("Error 02", "This is for chapter 3")
    end
end)
B1C3.newLabel("ESP")
B1C3.newButton("ESP Item", "", function()
    if game.PlaceId == 6472459099 or game.PlaceId == 6688734180 then
        for _,v in pairs(game.Workspace:GetDescendants()) do
            if v.Name == "Blade" or v.Name == "Butterfly" and v:FindFirstChild("ProxPart") and v:FindFirstChild("butterfly") then
            local highlight = Instance.new("Highlight")
            highlight.DepthMode = Enum.HighlightDepthMode.AlwaysOnTop
            highlight.FillColor = Color3.fromRGB(0, 1, 0)
            highlight.FillTransparency = 0.25
            highlight.OutlineColor = Color3.fromRGB(255, 255, 255)
            highlight.Parent = v
        end
    end
    elseif  game.PlaceId == 6682163754 or game.PlaceId == 6688734313 then
        for _,v in pairs(game.Workspace:GetDescendants()) do
            if v.Parent.Name == "Givers" or v.Name == "Rose" or v.Parent.Name == "BellFolder" then
                local highlight = Instance.new("Highlight")
                highlight.DepthMode = Enum.HighlightDepthMode.AlwaysOnTop
                highlight.FillColor = Color3.fromRGB(0, 1, 0)
                highlight.FillTransparency = 0.25
                highlight.OutlineColor = Color3.fromRGB(255, 255, 255)
                highlight.Parent = v
            end
        end
    elseif  game.PlaceId == 6682164423 or game.PlaceId == 6688734395 then
        for _,v in pairs(game.Workspace:GetDescendants()) do
            if v.Name == "Key1" or v.Name == "CodeDoor" then
                local highlight = Instance.new("Highlight")
                highlight.DepthMode = Enum.HighlightDepthMode.AlwaysOnTop
                highlight.FillColor = Color3.fromRGB(0, 1, 0)
                highlight.FillTransparency = 0.25
                highlight.OutlineColor = Color3.fromRGB(255, 255, 255)
                highlight.Parent = v
            end
        end
    else
        Notify("Error 02", "This is for chapter 3")
    end
end)
B1C3.newButton("ESP Monster", "", function()
    if game.PlaceId == 6472459099 or game.PlaceId == 6688734180 then
        for _,v in pairs(game.Workspace:GetDescendants()) do
            if v.Name == "kaito" and v.Parent.Name == "GameAI" then
                local highlight = Instance.new("Highlight")
                highlight.DepthMode = Enum.HighlightDepthMode.AlwaysOnTop
                highlight.FillColor = Color3.fromRGB(0, 1, 0)
                highlight.FillTransparency = 0.25
                highlight.OutlineColor = Color3.fromRGB(255, 255, 255)
                highlight.Parent = v
            end
        end
    elseif  game.PlaceId == 6682163754 or game.PlaceId == 6688734313 then
        for _,v in pairs(game.Workspace:GetDescendants()) do
            if v.Name == "AI" and v.Parent.Name == "GameAI" then
                local highlight = Instance.new("Highlight")
                highlight.DepthMode = Enum.HighlightDepthMode.AlwaysOnTop
                highlight.FillColor = Color3.fromRGB(0, 1, 0)
                highlight.FillTransparency = 0.25
                highlight.OutlineColor = Color3.fromRGB(255, 255, 255)
                highlight.Parent = v
            end
        end
    elseif  game.PlaceId == 6682164423 or game.PlaceId == 6688734395 then
        for _,v in pairs(game.Workspace:GetDescendants()) do
            if v.Name == "omukadeMAIN" then
                local highlight = Instance.new("Highlight")
                highlight.DepthMode = Enum.HighlightDepthMode.AlwaysOnTop
                highlight.FillColor = Color3.fromRGB(0, 1, 0)
                highlight.FillTransparency = 0.25
                highlight.OutlineColor = Color3.fromRGB(255, 255, 255)
                highlight.Parent = v
            end
        end
    else
        Notify("Error 02", "This is for chapter 3")
    end
end)


--B1C4 Tab
local B1C4 = DrRayLibrary.newTab("B1C4", "ImageIdHere")
B1C4.newLabel("Tutorial")
B1C4.newButton("Read", "Important For Beginners", function()
    
end)
B1C4.newLabel("Map 1")
B1C4.newButton("Auto Win", "", function()
    Tp(91, -48.35, -1416.24, nil)
end)
B1C4.newButton("ESP Item", "", function()
    for _,v in pairs(game.Workspace:GetDescendants()) do
        if v.Name == "Model" and v:FindFirstChild("DrawerScript") or v.Name == "Model" and v:FindFirstChild("ProxPart") and v:FindFirstChild("Handle") then
            local highlight = Instance.new("Highlight")
            highlight.DepthMode = Enum.HighlightDepthMode.AlwaysOnTop
            highlight.FillColor = Color3.fromRGB(0, 1, 0)
            highlight.FillTransparency = 0.25
            highlight.OutlineColor = Color3.fromRGB(255, 255, 255)
            highlight.Parent = v
        end
    end
end)
B1C4.newButton("ESP Monster", "", function()
    for _,v in pairs(game.Workspace:GetDescendants()) do
        if v.Name == "Manq" and v.Parent.Name == "GameAI" then
            local highlight = Instance.new("Highlight")
            highlight.DepthMode = Enum.HighlightDepthMode.AlwaysOnTop
            highlight.FillColor = Color3.fromRGB(0, 1, 0)
            highlight.FillTransparency = 0.25
            highlight.OutlineColor = Color3.fromRGB(255, 255, 255)
            highlight.Parent = v
        end
    end
end)
B1C4.newLabel("Map 2")
B1C4.newButton("Auto Win", "If you are using Custom Prompt, Look Down", function()
    if not CustomFirePropmt then
        for i, v in pairs(Workspace:GetDescendants()) do
            if v:IsA("ProximityPrompt") and v.Parent:IsA("BasePart") and v.Parent.Name == "Butterfly" then
                Tp(v.Parent.Position.X, v.Parent.Position.Y, v.Parent.Position.Z, 0.3)
                fireproximityprompt(v)
            end
        end
    else
        for i, v in pairs(Workspace:GetDescendants()) do
            if v:IsA("ProximityPrompt") and v.Parent:IsA("BasePart") and v.Parent.Name == "Butterfly" then
                Tp(v.Parent.Position.X, v.Parent.Position.Y + 1, v.Parent.Position.Z, 0.3)
                fireproximitypromptv2(v, 1, true)
            end
        end
    end
end)
B1C4.newButton("ESP Item", "", function()
    for _,v in pairs(game.Workspace:GetDescendants()) do
        if v.Name == "Butterfly" and v.Parent.Name == "Butterflies" then
            local highlight = Instance.new("Highlight")
            highlight.DepthMode = Enum.HighlightDepthMode.AlwaysOnTop
            highlight.FillColor = Color3.fromRGB(0, 1, 0)
            highlight.FillTransparency = 0.25
            highlight.OutlineColor = Color3.fromRGB(255, 255, 255)
            highlight.Parent = v
        end
    end
end)
B1C4.newButton("ESP Monster", "", function()
    for _,v in pairs(game.Workspace:GetDescendants()) do
        if v.Parent.Name == "GameAI" then
            local highlight = Instance.new("Highlight")
            highlight.DepthMode = Enum.HighlightDepthMode.AlwaysOnTop
            highlight.FillColor = Color3.fromRGB(0, 1, 0)
            highlight.FillTransparency = 0.25
            highlight.OutlineColor = Color3.fromRGB(255, 255, 255)
            highlight.Parent = v
        end
    end
end)
B1C4.newLabel("Map 3")
B1C4.newButton("Auto Win", "If you are using Custom Prompt, Look Down", function()
    if not CustomFirePropmt then
        Tp(665.63, 18.17, 2108.62, 0.3)
        for i, v in pairs(Workspace:GetDescendants()) do
            if v:IsA("ProximityPrompt") and v.Parent:IsA("BasePart")  then
                fireproximityprompt(v)
            end
        end
        task.wait()
        Tp(620.22, 17.87, 2340.73, 0.3)
        for i, v in pairs(Workspace:GetDescendants()) do
            if v:IsA("ProximityPrompt") and v.Parent:IsA("BasePart")  then
                fireproximityprompt(v)
            end
        end
        task.wait()
        Tp(756.75, 16.39, 2538.24, 0.3)
        for i, v in pairs(Workspace:GetDescendants()) do
            if v:IsA("ProximityPrompt") and v.Parent:IsA("BasePart")  then
                fireproximityprompt(v)
            end
        end
        task.wait()
        Tp(860.18, 24.85, 2548.28, 0.3)
        for i, v in pairs(Workspace:GetDescendants()) do
            if v:IsA("ProximityPrompt") and v.Parent:IsA("BasePart")  then
                fireproximityprompt(v)
            end
        end
        task.wait()
        Tp(855.96, 15.47, 2388.36, 0.3)
        for i, v in pairs(Workspace:GetDescendants()) do
            if v:IsA("ProximityPrompt") and v.Parent:IsA("BasePart")  then
                fireproximityprompt(v)
            end
        end
        task.wait()
        Tp(836.29, 19.01, 2247.34, 0.3)
        for i, v in pairs(Workspace:GetDescendants()) do
            if v:IsA("ProximityPrompt") and v.Parent:IsA("BasePart")  then
                fireproximityprompt(v)
            end
        end
        task.wait()
        Tp(688.41, 28.37, 2251.57, 0.3)
        for i, v in pairs(Workspace:GetDescendants()) do
            if v:IsA("ProximityPrompt") and v.Parent:IsA("BasePart")  then
                fireproximityprompt(v)
                fireproximityprompt(v)
                fireproximityprompt(v)
                fireproximityprompt(v)
                fireproximityprompt(v)
                fireproximityprompt(v)
            end
        end
    else
        Tp(665.63, 18.17, 2108.62, 0.3)
        for i, v in pairs(Workspace:GetDescendants()) do
            if v:IsA("ProximityPrompt") and v.Parent:IsA("BasePart")  then
                fireproximitypromptv2(v, 1, true)
            end
        end
        task.wait()
        Tp(620.22, 17.87, 2340.73, 0.3)
        for i, v in pairs(Workspace:GetDescendants()) do
            if v:IsA("ProximityPrompt") and v.Parent:IsA("BasePart")  then
                fireproximitypromptv2(v, 1, true)
            end
        end
        task.wait()
        Tp(756.75, 16.39, 2538.24, 0.3)
        for i, v in pairs(Workspace:GetDescendants()) do
            if v:IsA("ProximityPrompt") and v.Parent:IsA("BasePart")  then
                fireproximitypromptv2(v, 1, true)
            end
        end
        task.wait()
        Tp(860.18, 24.85, 2548.28, 0.3)
        for i, v in pairs(Workspace:GetDescendants()) do
            if v:IsA("ProximityPrompt") and v.Parent:IsA("BasePart")  then
                fireproximitypromptv2(v, 1, true)
            end
        end
        task.wait()
        Tp(855.96, 15.47, 2388.36, 0.3)
        for i, v in pairs(Workspace:GetDescendants()) do
            if v:IsA("ProximityPrompt") and v.Parent:IsA("BasePart")  then
                fireproximitypromptv2(v, 1, true)
            end
        end
        task.wait()
        Tp(836.29, 19.01, 2247.34, 0.3)
        for i, v in pairs(Workspace:GetDescendants()) do
            if v:IsA("ProximityPrompt") and v.Parent:IsA("BasePart")  then
                fireproximitypromptv2(v, 1, true)
            end
        end
        task.wait()
        Tp(688.41, 28.37, 2251.57, 0.3)
        for i, v in pairs(Workspace:GetDescendants()) do
            if v:IsA("ProximityPrompt") and v.Parent:IsA("BasePart")  then
                fireproximitypromptv2(v, 1, true)
                fireproximitypromptv2(v, 1, true)
                fireproximitypromptv2(v, 1, true)
                fireproximitypromptv2(v, 1, true)
                fireproximitypromptv2(v, 1, true)
            end
        end
    end
end)
B1C4.newButton("ESP Item", "", function()
    for _,v in pairs(game.Workspace:GetDescendants()) do
        if v.Name == "Model" and v:FindFirstChild("Spirit") and v:FindFirstChild("Spirit"):FindFirstChild("Handle") or v.Parent.Name == "PuzzleItems" or v.Name == "Key" then
            local highlight = Instance.new("Highlight")
            highlight.DepthMode = Enum.HighlightDepthMode.AlwaysOnTop
            highlight.FillColor = Color3.fromRGB(0, 1, 0)
            highlight.FillTransparency = 0.25
            highlight.OutlineColor = Color3.fromRGB(255, 255, 255)
            highlight.Parent = v
        end
    end
end)
B1C4.newButton("ESP Monster", "", function()
    for _,v in pairs(game.Workspace:GetDescendants()) do
        if v.Parent.Name == "GameAI" then
            local highlight = Instance.new("Highlight")
            highlight.DepthMode = Enum.HighlightDepthMode.AlwaysOnTop
            highlight.FillColor = Color3.fromRGB(0, 1, 0)
            highlight.FillTransparency = 0.25
            highlight.OutlineColor = Color3.fromRGB(255, 255, 255)
            highlight.Parent = v
        end
    end
end)
B1C4.newLabel("Map 4")
B1C4.newButton("Auto Kill Sama", "", function()
    for i,v in pairs(Workspace.GameHearts:GetChildren()) do
        repeat
            if Workspace.Camera.FieldOfView > 71 then
                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(2823, 155, 2490)
            else
            if not game.Players.LocalPlayer.Character:FindFirstChild("Katana") then
                game.Players.LocalPlayer.Backpack.Katana.Parent = game.Players.LocalPlayer.Character
            end
            task.wait()
            if string.sub(tostring(v.Root.CFrame.Position),1,2) == "32" then
                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(3209, 132, 2193)
            elseif string.sub(tostring(v.Root.CFrame.Position),1,2) == "25" then
                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(2589, 132, 2408)
            elseif string.sub(tostring(v.Root.CFrame.Position),1,2) == "28" then
                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(2802, 115, 2418)
            end
            repeat
                if string.sub(tostring(v.Root.CFrame.Position),1,2) == "32" then
                    Workspace.Camera.CFrame = CFrame.new(3209.01807, 133.388229, 2192.93799, 0.959981084, -0.139965221, -0.242582455, 0.00294077187, 0.871154189, -0.491000861, 0.280049741, 0.470638156, 0.836703002)
                elseif string.sub(tostring(v.Root.CFrame.Position),1,2) == "25" then
                    Workspace.Camera.CFrame = CFrame.new(2589.01733, 133.500214, 2408.00513, -0.252294064, -0.260695487, -0.93187207, -0.00756763248, 0.963527501, -0.267502367, 0.967621028, -0.060437195, -0.245065123)
                elseif string.sub(tostring(v.Root.CFrame.Position),1,2) == "28" then
                    Workspace.Camera.CFrame = CFrame.new(2802.03345, 116.452713, 2417.99463, 0.152567074, -0.359060764, -0.920759797, 0.00740486849, 0.932055831, -0.362238824, 0.988265336, 0.0484476127, 0.144859836)
                end
                task.wait()
                game.Players.LocalPlayer.Character.Katana:Activate()
                if v:FindFirstChild("Destroyed") then
                    break
                end
            until Workspace.Camera.FieldOfView > 71
        end
            task.wait()
        until v:FindFirstChild("Destroyed")
    end
end)
B1C4.newButton("ESP Heart", "", function()
    for _,v in pairs(game.Workspace:GetDescendants()) do
        if v.Name == "Heart" then
            local highlight = Instance.new("Highlight")
            highlight.DepthMode = Enum.HighlightDepthMode.AlwaysOnTop
            highlight.FillColor = Color3.fromRGB(0, 1, 0)
            highlight.FillTransparency = 0.25
            highlight.OutlineColor = Color3.fromRGB(255, 255, 255)
            highlight.Parent = v
        end
    end
end)
B1C4.newButton("ESP Monster", "", function()
    for _,v in pairs(game.Workspace:GetDescendants()) do
        if v.Parent.Name == "GameAI" or v.Name == "Saigomo" then
            local highlight = Instance.new("Highlight")
            highlight.DepthMode = Enum.HighlightDepthMode.AlwaysOnTop
            highlight.FillColor = Color3.fromRGB(0, 1, 0)
            highlight.FillTransparency = 0.25
            highlight.OutlineColor = Color3.fromRGB(255, 255, 255)
            highlight.Parent = v
        end
    end
end)


--B2C1 Tab
local B2C1 = DrRayLibrary.newTab("Book 2 Chapter 1", "ImageIdHere")
B2C1.newLabel("Tutorial")
B2C1.newButton("Read", "", function()
    
end)
B2C1.newLabel("Start")
B2C1.newButton("Auto Win", "Normal Mode Only | First section", function()
    Tp(-1783.60474, 11.0083055, -4297.72168, nil)
end)
B2C1.newLabel("Rio & Mio")
B2C1.newButton("Read Book", "", function()
    if not CustomFirePropmt then
        for i, v in pairs(Workspace:GetDescendants()) do
            if v:IsA("ProximityPrompt") and v.Parent.Name == "Interact" and v.Parent.Parent.Name == "Book" then
                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(v.Parent.Position.X, v.Parent.Position.Y + 5, v.Parent.Position.Z)
                task.wait(0.3)
                fireproximityprompt(v)
            end
        end
    else
        for i, v in pairs(Workspace:GetDescendants()) do
            if v:IsA("ProximityPrompt") and v.Parent.Name == "Interact" and v.Parent.Parent.Name == "Book" then
                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(v.Parent.Position.X, v.Parent.Position.Y + 5, v.Parent.Position.Z)
                task.wait(0.3)
                fireproximitypromptv2(v, 1, true)
            end
        end
    end
end)
B2C1.newButton("Auto Win", "", function()
    if not CustomFirePropmt then
        for i, v in pairs(Workspace:GetDescendants()) do
            if v:IsA("ProximityPrompt") and v.Parent.Name == "Cube" and v.Parent.MeshId == "https://assetdelivery.roblox.com/v1/asset/?id=8569135676"  then
                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.Parent.CFrame
                v.HoldDuration = 0
                task.wait(0.3)
                fireproximityprompt(v)
                break
            end
        end
        task.wait()
        for i, v in pairs(Workspace:GetDescendants()) do
            if v:IsA("ProximityPrompt") and v.ObjectText == "Old Well" then
                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.Parent.CFrame
                v.HoldDuration = 0
                task.wait(0.3)
                fireproximityprompt(v)
                break
            end
        end
        Fluent:Notify({
            Title = "Error 00",
            Content = "Wait",
            Duration = 5
        })
        task.wait(5)
        for i, v in pairs(Workspace:GetDescendants()) do
            if v:IsA("ProximityPrompt") and v.ObjectText == "Bell" then
                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.Parent.CFrame
                v.HoldDuration = 0
                task.wait(0.3)
                fireproximityprompt(v)
                break
            end
        end
        Fluent:Notify({
            Title = "Error 00",
            Content = "Press Auto Win again",
            Duration = 5
        })
    else
        getgenv().Float = true
        for _,v in pairs(game.Players.LocalPlayer.Character:GetDescendants()) do
            if v:IsA('BasePart') and v.CanCollide and v.Name ~= floatName then
                v.CanCollide = false
            end
        end
        for i, v in pairs(Workspace:GetDescendants()) do
            if v:IsA("ProximityPrompt") and v.Parent.Name == "Cube" and v.Parent.MeshId == "https://assetdelivery.roblox.com/v1/asset/?id=8569135676"  then
                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(v.Parent.Position.X, v.Parent.Position.Y + 2, v.Parent.Position.Z)
                task.wait(0.3)
                fireproximitypromptv2(v, 1, true)
                break
            end
        end
        task.wait()
        for i, v in pairs(Workspace:GetDescendants()) do
            if v:IsA("ProximityPrompt") and v.ObjectText == "Old Well" then
                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(v.Parent.Position.X, v.Parent.Position.Y + 3, v.Parent.Position.Z)
                task.wait(0.3)
                fireproximitypromptv2(v, 1, true)
                break
            end
        end
        Fluent:Notify({
            Title = "Error 00",
            Content = "Wait",
            Duration = 5
        })
        task.wait(5)
        for i, v in pairs(Workspace:GetDescendants()) do
            if v:IsA("ProximityPrompt") and v.ObjectText == "Bell" then
                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(v.Parent.Position.X, v.Parent.Position.Y + 10, v.Parent.Position.Z)
                task.wait(0.3)
                fireproximitypromptv2(v, 1, true)
                task.wait(0.3)
                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.Parent.CFrame
                break
            end
        end
        task.wait()
        Fluent:Notify({
            Title = "Error 00",
            Content = "Press Auto Win again",
            Duration = 5
        })
        getgenv().Float = false
        for _,v in pairs(game.Players.LocalPlayer.Character:GetDescendants()) do
            if v:IsA('BasePart') and v.CanCollide and v.Name ~= floatName then
                v.CanCollide = true
            end
        end
    end
end)
B2C1.newButton("Escape", "", function()
    if not CustomFirePropmt then
        for i, v in pairs(Workspace:GetDescendants()) do
            if v:IsA("ProximityPrompt") and v.ActionText == "Exit" then
                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.Parent.CFrame
                task.wait(0.3)
                fireproximityprompt(v)
                break
            end
        end
    else
        getgenv().Float = true
        for i, v in pairs(Workspace:GetDescendants()) do
            if v:IsA("ProximityPrompt") and v.ActionText == "Exit" then
                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(v.Parent.Position.X, v.Parent.Position.Y + 3, v.Parent.Position.Z)
                task.wait(0.3)
                fireproximitypromptv2(v, 1, true)
                break
            end
        end
        task.wait()
        getgenv().Float = false
    end
end)
B2C1.newButton("Auto Run", "", function()
    TweenBIGO(1, -960.842529, -44.0736237, -3597.06372)
end)
B2C1.newLabel("Nagisa")
B2C1.newButton("Auto Win", "", function()
    getgenv().Float = true
    TweenBIGO(1, 208.665894, 573.239563, -345.685211)
    task.wait(3)
    TweenBIGO(1, 595.243896, 582.230713, -344.577911)
    task.wait(1)
    getgenv().Float = false
end)
B2C1.newButton("Auto Run", "Press when you already spawn or you see the cave", function()
    TweenBIGO(1, 3868.31982, 153.007477, 17.1698914)
    task.wait()
end)
B2C1.newLabel("Village")
B2C1.newButton("Enter Zone", "Press when you already spawn or you see the village", function()
    TweenBIGO(1, 4590.5249, 507.557373, 4480.6499)
    task.wait()
end)
B2C1.newButton("Talk", "Press when you already tp or you see another village", function()
    if not CustomFirePropmt then
        Window.Minimized = not Window.Minimized
        Window.Root.Visible = not Window.Minimized
        for _,v in pairs(game.Players.LocalPlayer.Character:GetDescendants()) do
            if v:IsA('BasePart') and v.CanCollide and v.Name ~= floatName then
                v.CanCollide = false
            end
        end
        if not TalkDebounce then 
            if player.Character then 
                if player.Character:FindFirstChild('HumanoidRootPart') then 
                    TalkDebounce = true
                    Tp(-326.344421, 23.1051254, 3662.32056, 0.28)
                    for Index, v in ipairs(game:GetService("Workspace"):GetDescendants()) do 
                        if v:IsA("ProximityPrompt") and v.Parent.Name == "Quest" then 
                            v.HoldDuration = 0
                            fireproximityprompt(v)
                        end 
                    end 
                    for i = 1,200 do 
                        VirtualUser:ClickButton1(Vector2.new(0,0))
                        task.wait(0.001)
                    end 
                    TalkDebounce = false
                    Window.Minimized = not Window.Minimized
                    Window.Root.Visible = not Window.Minimized
                    for _,v in pairs(game.Players.LocalPlayer.Character:GetDescendants()) do
                        if v:IsA('BasePart') and v.CanCollide and v.Name ~= floatName then
                            v.CanCollide = true
                        end
                    end
                end 
            end 
        end
        task.wait()
    else
        Window.Minimized = not Window.Minimized
        Window.Root.Visible = not Window.Minimized
        for _,v in pairs(game.Players.LocalPlayer.Character:GetDescendants()) do
            if v:IsA('BasePart') and v.CanCollide and v.Name ~= floatName then
                v.CanCollide = false
            end
        end
        getgenv().Float = true
        if not TalkDebounce then 
            if player.Character then 
                if player.Character:FindFirstChild('HumanoidRootPart') then 
                    TalkDebounce = true
                    Tp(-326.344421, 27, 3662.32056, 0.28)
                    for Index, v in ipairs(game:GetService("Workspace"):GetDescendants()) do 
                        if v:IsA("ProximityPrompt") and v.Parent.Name == "Quest" then 
                            fireproximitypromptv2(v, 1, true)
                        end 
                    end 
                    for i = 1,200 do 
                        VirtualUser:ClickButton1(Vector2.new(0,0))
                        task.wait(0.001)
                    end 
                    TalkDebounce = false
                    getgenv().Float = false
                    Window.Minimized = not Window.Minimized
                    Window.Root.Visible = not Window.Minimized
                    for _,v in pairs(game.Players.LocalPlayer.Character:GetDescendants()) do
                        if v:IsA('BasePart') and v.CanCollide and v.Name ~= floatName then
                            v.CanCollide = true
                        end
                    end
                end 
            end 
        end
        task.wait()
    end
end)
B2C1.newButton("Get Key", "Press after you talk", function()
    if not CustomFirePropmt then
        Tp(-401.797424, 3070.25, 3864.77979, 1)
        for i, v in pairs(Workspace:GetDescendants()) do
            if v:IsA("ProximityPrompt") and v.ActionText == "Obtain" and v.Parent.Name == "Key1" then
                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.Parent.CFrame
                v.HoldDuration = 0
                task.wait(0.3)
                fireproximityprompt(v)
            end
        end
    else
        getgenv().Float = true
        for _,v in pairs(game.Players.LocalPlayer.Character:GetDescendants()) do
            if v:IsA('BasePart') and v.CanCollide and v.Name ~= floatName then
                v.CanCollide = false
            end
        end
        task.wait()
        Tp(-401.797424, 3070.25, 3864.77979, 1)
        for i, v in pairs(Workspace:GetDescendants()) do
            if v:IsA("ProximityPrompt") and v.ActionText == "Obtain" and v.Parent.Name == "Key1" then
                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(v.Parent.Position.X, v.Parent.Position.Y + 3, v.Parent.Position.Z)
                v.RequiresLineOfSight = false
                task.wait(0.3)
                fireproximitypromptv2(v, 1, true)
            end
        end
        task.wait()
        getgenv().Float = false
        for _,v in pairs(game.Players.LocalPlayer.Character:GetDescendants()) do
            if v:IsA('BasePart') and v.CanCollide and v.Name ~= floatName then
                v.CanCollide = true
            end
        end
    end
end)
B2C1.newButton("Paint", "Press after you talk", function()
    Tp(-249.45462, 3067.58838, 4218.84766, nil)
end)
B2C1.newButton("Get Picture", "Press after you talk", function()
    pic4 = {}
    Tp(-267.697571, 3070.85718, 4213.41504, 2)
    Tp(590.236572, 3070.94922, 4420.93457, 2)
    Tp(-675.159424, 3071.0813, 4998.77686, 2)
    Tp(-392.277039, 3071.03931, 3888.39697, 2)
    Tp(-10.6637068, 3070.17041, 4711.52637, 2)
    for _,v in pairs(workspace:GetDescendants()) do
        if v.Name == "hintpic" and v:FindFirstChild("Image") then
            table.insert(pic4, v.Image.Decal.Texture)
        end
    end
    task.wait(1)
    for _,v in pairs(workspace:GetDescendants()) do
        if v.Name == "specialpic" and v:FindFirstChild("Image") then
            table.insert(pic4, v.Image.Decal.Texture)
        end
    end
end)
B2C1.newButton("Enter Room", "Press after you talk", function()
    if not CustomFirePropmt then
        for _,v in pairs(workspace:GetDescendants()) do
            if v:IsA("ProximityPrompt") and v.Parent.Name == "Teleporter" and v.ActionText == "Enter" and v.Parent.Parent.Name == "Enter" and v.Parent.Parent.Parent.Name == "MainHouse" then
                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.Parent.CFrame
                v.HoldDuration = 0
                wait(0.3)
                fireproximityprompt(v)
            end
        end
    else
        getgenv().Float = true
        for _,v in pairs(game.Players.LocalPlayer.Character:GetDescendants()) do
            if v:IsA('BasePart') and v.CanCollide and v.Name ~= floatName then
                v.CanCollide = false
            end
        end
        task.wait()
        for _,v in pairs(workspace:GetDescendants()) do
            if v:IsA("ProximityPrompt") and v.Parent.Name == "Teleporter" and v.ActionText == "Enter" and v.Parent.Parent.Name == "Enter" and v.Parent.Parent.Parent.Name == "MainHouse" then
                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(v.Parent.Position.X, v.Parent.Position.Y + 3, v.Parent.Position.Z)
                task.wait(0.3)
                fireproximitypromptv2(v, 1, true)
            end
        end
        task.wait()
        getgenv().Float = false
        for _,v in pairs(game.Players.LocalPlayer.Character:GetDescendants()) do
            if v:IsA('BasePart') and v.CanCollide and v.Name ~= floatName then
                v.CanCollide = true
            end
        end
    end
end)
B2C1.newButton("Auto Win", "Press after get picture and enter room", function()
    if not CustomFirePropmt then
        for _, v in pairs(workspace:GetDescendants()) do
            if v.Name == "Orb" and v.Parent.Name == "Seishin" and v.Transparency == 0 then
                for _, v in pairs(workspace:GetDescendants()) do
                    if v:IsA("ProximityPrompt") and v.Parent.Name == "Orb" then
                        v.HoldDuration = 0
                        Tp(v.Parent.CFrame.Position.X, v.Parent.CFrame.Position.Y, v.Parent.CFrame.Position.Z, nil)
                        fireproximityprompt(v)
                    end
                end
            else
                for _, v in pairs(workspace:GetDescendants()) do
                    if string.match(v.Name, "%d") and v:FindFirstChild("Image") and table.find(pic4, v.Image.Decal.Texture) then
                        table.insert(listofcandle, v.Name)
                    end
                end
                task.wait(2)
                for _, v in pairs(workspace:GetDescendants()) do
                    if v:IsA("ProximityPrompt") and v.Parent.Name == "Wax" and table.find(listofcandle, v.Parent.Parent.Parent.Name) then
                        v.HoldDuration = 0
                        Tp(v.Parent.CFrame.Position.X, v.Parent.CFrame.Position.Y, v.Parent.CFrame.Position.Z, 0.3)
                        fireproximityprompt(v)
                    end
                end
                task.wait()
                for _, v in pairs(workspace:GetDescendants()) do
                    if v:IsA("ProximityPrompt") and v.Parent.Name == "Orb" then
                        v.HoldDuration = 0
                        Tp(v.Parent.CFrame.Position.X, v.Parent.CFrame.Position.Y, v.Parent.CFrame.Position.Z, 0.3)
                        fireproximityprompt(v)
                    end
                end
                Tp(-326.344421, 23.1051254, 3662.32056, 0.28)
                for Index, v in ipairs(game:GetService("Workspace"):GetDescendants()) do 
                    if v:IsA("ProximityPrompt") and v.Parent.Name == "Quest" then 
                        v.HoldDuration = 0
                        fireproximityprompt(v)
                    end 
                end
            end
            task.wait()
            break
        end
    else
        getgenv().Float = true
        for _,v in pairs(game.Players.LocalPlayer.Character:GetDescendants()) do
            if v:IsA('BasePart') and v.CanCollide and v.Name ~= floatName then
                v.CanCollide = false
            end
        end
        task.wait()
        for _, v in pairs(workspace:GetDescendants()) do
            if v.Name == "Orb" and v.Parent.Name == "Seishin" and v.Transparency == 0 then
                for _, v in pairs(workspace:GetDescendants()) do
                    if v:IsA("ProximityPrompt") and v.Parent.Name == "Orb" then
                        v.HoldDuration = 0
                        Tp(v.Parent.CFrame.Position.X, v.Parent.CFrame.Position.Y + 3, v.Parent.CFrame.Position.Z, nil)
                        fireproximitypromptv2(v, 1, true)
                    end
                end
            else
                for _, v in pairs(workspace:GetDescendants()) do
                    if string.match(v.Name, "%d") and v:FindFirstChild("Image") and table.find(pic4, v.Image.Decal.Texture) then
                        table.insert(listofcandle, v.Name)
                    end
                end
                task.wait(2)
                for _, v in pairs(workspace:GetDescendants()) do
                    if v:IsA("ProximityPrompt") and v.Parent.Name == "Wax" and table.find(listofcandle, v.Parent.Parent.Parent.Name) then
                        v.HoldDuration = 0
                        Tp(v.Parent.CFrame.Position.X, v.Parent.CFrame.Position.Y + 1, v.Parent.CFrame.Position.Z, 0.3)
                        fireproximitypromptv2(v, 1, true)
                    end
                end
                task.wait()
                for _, v in pairs(workspace:GetDescendants()) do
                    if v:IsA("ProximityPrompt") and v.Parent.Name == "Orb" then
                        v.HoldDuration = 0
                        Tp(v.Parent.CFrame.Position.X, v.Parent.CFrame.Position.Y + 3, v.Parent.CFrame.Position.Z, 0.3)
                        fireproximitypromptv2(v, 1, true)
                    end
                end
                Tp(-326.344421, 27, 3662.32056, 0.28)
                for Index, v in ipairs(game:GetService("Workspace"):GetDescendants()) do 
                    if v:IsA("ProximityPrompt") and v.Parent.Name == "Quest" then 
                        fireproximityprompt(v, 1, true)
                    end 
                end
                task.wait()
                getgenv().Float = false
                for _,v in pairs(game.Players.LocalPlayer.Character:GetDescendants()) do
                    if v:IsA('BasePart') and v.CanCollide and v.Name ~= floatName then
                        v.CanCollide = true
                    end
                end
                task.wait()
            end
            task.wait()
            break
        end
    end
end)
B2C1.newLabel("Ship")
B2C1.newButton("Enter Zone", "", function()
    Tp(-1250,4,6299.65, nil)
end)
B2C1.newButton("Auto Candles", "", function()
    
end)
B2C1.newButton("Auto Run", "", function()
    Tp(-6318.51611, 418.696014, 6332.396, nil)
end)


--B2C2 Tab
local B2C2 = DrRayLibrary.newTab("Book 2 Chapter 1", "ImageIdHere")
B2C2.newLabel("Tutorial")
B2C2.newButton("Read", "", function()
    
end)
B2C2.newLabel("Start")
B2C2.newButton("Auto Win", "", function()
    for _, v in pairs(game.Workspace:GetDescendants()) do
        if v:IsA("TouchTransmitter") or v:IsA("TouchInterest") then
            firetouchinterest(player.Character.HumanoidRootPart or player.Character.Torso, v:FindFirstAncestorWhichIsA("Part"),0)
        end
    end
    task.wait()
    TweenBIGO(1, -520, 30, -87.29, 2)
    Notify("Error 00", "Bypassing...")
    player.Character.HumanoidRootPart.Anchored = true
    Tp(-520, 30, -87.2, 30)
    player.Character.HumanoidRootPart.Anchored = false
    task.wait()
    Tp(-551, 30, -87.29, nil)
    Notify("Error 00", "Done")
end)
B2C2.newLabel("Someone Eat Cow")
B2C2.newButton("Auto Win", "Custom Prompt Needed | Look at the floor", function()
    if not CustomFirePropmt then
        Notify("ERROR", "Custom Prompt Needed")
    elseif CustomFirePropmt then
        getgenv().Float = true
        for _,v in pairs(game.Players.LocalPlayer.Character:GetDescendants()) do
            if v:IsA('BasePart') and v.CanCollide and v.Name ~= floatName then
                v.CanCollide = false
            end
        end
        task.wait()
        for i, v in pairs(Workspace:GetDescendants()) do
            if v:IsA("ProximityPrompt") and v.Parent:IsA("BasePart") and v.Parent.Parent.Name == "ProxDoorA" then
                Tp(v.Parent.CFrame.Position.X, v.Parent.CFrame.Position.Y + 5, v.Parent.CFrame.Position.Z, 0.3)
                task.wait(0.3)
                fireproximitypromptv2(v, 1, true)
                task.wait(1)
                break
            end
        end
        task.wait()
        char.HumanoidRootPart.Anchored = true
        Tp(-3393, 576, 887, 0.3)
        for i, v in pairs(Workspace:GetDescendants()) do
            if v:IsA("ProximityPrompt") and v.Parent:IsA("BasePart") and v.Parent.Parent.Name == "ProxDoorB" then
                Tp(v.Parent.CFrame.Position.X, v.Parent.CFrame.Position.Y + 5, v.Parent.CFrame.Position.Z, 0.3)
                task.wait(0.3)
                fireproximitypromptv2(v, 1, true)
                task.wait(0.3)
                Tp(-3393, 576, 887, 0.3)
                break
            end
        end
        task.wait()
        for _,v in pairs(game.Players.LocalPlayer.Character:GetDescendants()) do
            if v:IsA('BasePart') and v.CanCollide and v.Name ~= floatName then
                v.CanCollide = true
            end
        end
        task.wait()
        Tp(-3952.85, 700, 317.7, nil)
        local screenGui = Instance.new("ScreenGui")
        screenGui.Parent = game.Players.LocalPlayer.PlayerGui
    
        local frame = Instance.new("Frame")
        frame.BackgroundTransparency = 1 
        frame.Size = UDim2.new(1, 0, 0.3, 0)
        frame.Position = UDim2.new(0.5, 0, 0.5, 0) 
        frame.Parent = screenGui
    
        local textLabel = Instance.new("TextLabel")
        textLabel.BackgroundTransparency = 1 
        textLabel.Size = UDim2.new(0.1, 0, 0.1, 0)
        textLabel.TextColor3 = Color3.fromRGB(0, 255, 0) 
        textLabel.TextSize = 70
        textLabel.Parent = frame
        if getgenv().DeviceType == "Mobile" then
            for i = 80, 0, -1 do
                textLabel.TextSize = 30
                textLabel.Text = "Waiting For Bypass Anti-Cheat : " .. tostring(i) 
                task.wait(1) 
            end
        else
            for i = 80, 0, -1 do
                textLabel.TextSize = 70
                textLabel.Text = "Waiting For Bypass Anti-Cheat : " .. tostring(i) 
                task.wait(1) 
            end
        end
        task.wait()
        screenGui:Destroy()
        char.HumanoidRootPart.Anchored = false
        getgenv().Float = false
        task.wait(1)
        Tp(-3952.85, 594.22, 317.7, nil)
        Notify("TTJY is lazy", "Open door by yourself")
    end
end)
B2C2.newLabel("Meat")
B2C2.newButton("Talk", "", function()
    window:Hide()
    if not TalkDebounce then 
        if player.Character then 
            if player.Character:FindFirstChild('HumanoidRootPart') then 
                TalkDebounce = true
                Tp(-4443, 711, 1164, 0.28)
                for Index, v in ipairs(game:GetService("Workspace"):GetDescendants()) do 
                    if v.Name == "NoppeNPC" then 
                        local Prompt = v.RootPart:FindFirstChildOfClass('ProximityPrompt')
                        fireproximityprompt(Prompt, 1)
                    end 
                end 
                for i = 1,90 do 
                    VirtualUser:ClickButton1(Vector2.new(0,0))
                    task.wait(0.001)
                end 
                TalkDebounce = false
                window:Show()
            end 
        end 
    end
    task.wait()
end)
B2C2.newButton("Auto Win", "Not work in nightmare mode", function()
    if char then 
        getgenv().Float = true
        for _,v in pairs(game.Players.LocalPlayer.Character:GetDescendants()) do
            if v:IsA('BasePart') and v.CanCollide and v.Name ~= floatName then
                v.CanCollide = false
            end
        end
        task.wait()
        if char:FindFirstChild('HumanoidRootPart') then 
            if not FirstPress then 
                FirstPress = true 
                char:FindFirstChild('HumanoidRootPart').CFrame = CFrame.new(-4443, 711, 1164)
                task.wait(0.5)
                char:FindFirstChild('HumanoidRootPart').CFrame = CFrame.new(-4443, 711, 1264)
                task.wait(0.5)
                char:FindFirstChild('HumanoidRootPart').CFrame = CFrame.new(-4443, 711, 1114)
                task.wait(0.5)
                char:FindFirstChild('HumanoidRootPart').CFrame = CFrame.new(-4443, 711, 1164)
                task.wait(0.5)
                return
            end 
            MeatDebounce = true     
            local IsGot = false 
            local Pick = 0 
            local Found = 0
            task.wait(0.15)
            for Index, AllGui in ipairs(player.PlayerGui:GetDescendants()) do 
                if AllGui.ClassName == 'ImageLabel' and AllGui.Image == "rbxassetid://13372546132" then 
                    local Target = nil
                    for i,v in ipairs(workspace:GetDescendants()) do
                        if v.ClassName == "Model" and v.Name == "DoorTele" then
                            Target = v
                        end
                    end
                    if Target then 
                        char:FindFirstChild('HumanoidRootPart').CFrame = Target.Frame.CFrame
                        task.wait(0.8)
                        for Index, v in ipairs(Target:GetChildren()) do
                            if v.Name == "DoorFrame" then 
                                local Prompt = v:FindFirstChildOfClass('ProximityPrompt') or nil
                                if Prompt then 
                                    fireproximityprompt(Prompt, 1)
                                end 
                            end
                        end
                        task.wait()
                        getgenv().Float = false
                        for _,v in pairs(game.Players.LocalPlayer.Character:GetDescendants()) do
                            if v:IsA('BasePart') and v.CanCollide and v.Name ~= floatName then
                                v.CanCollide = true
                            end
                        end
                        task.wait()
                        return
                    end 
                end 
            end
            if not Backpack:FindFirstChild("Bowl") and not char:FindFirstChild("Bowl") then
                Tp(-4318, 700, 1313, 1)
                for Index, v in ipairs(game:GetService("Workspace"):GetDescendants()) do 
                    if v.Name == "BowlGiver" then 
                        if IsGot == true then 
                            break
                        end
                        if v and v:FindFirstChild('Prompt') and v:FindFirstChild('Prompt'):FindFirstChildOfClass('ProximityPrompt') then
                            local Prompt = v:FindFirstChild('Prompt'):FindFirstChildOfClass('ProximityPrompt') or nil 
                            if Prompt then 
                                char:FindFirstChild('HumanoidRootPart').CFrame = Prompt.Parent.CFrame
                                task.wait(0.28)
                                fireproximityprompt(Prompt, 1)
                                fireproximitypromptv2(Prompt, 1, true)
                                task.wait()
                                if IsGot == false then 
                                    IsGot = true 
                                end 
                            end
                        else
                            Tp(-4600, 700, 1004, 1)
                            for Index, v in ipairs(game:GetService("Workspace"):GetDescendants()) do 
                                if v.Name == "BowlGiver" then 
                                    if IsGot == true then 
                                        break
                                    end
                                    if v and v:FindFirstChild('Prompt') and v:FindFirstChild('Prompt'):FindFirstChildOfClass('ProximityPrompt') then
                                        local Prompt = v:FindFirstChild('Prompt'):FindFirstChildOfClass('ProximityPrompt') or nil 
                                        if Prompt then 
                                            char:FindFirstChild('HumanoidRootPart').CFrame = Prompt.Parent.CFrame
                                            task.wait(0.28)
                                            fireproximityprompt(Prompt, 1)
                                            fireproximitypromptv2(Prompt, 1, true)
                                            task.wait()
                                            if IsGot == false then 
                                                IsGot = true 
                                            end 
                                        end
                                    end
                                end
                            end
                        end 
                    end 
                    task.wait(0.30)
                end
                task.wait(1)
                for i,v in ipairs(game:GetService("Workspace"):GetDescendants()) do
                    if v.ClassName == "Folder" and v.Name == "Meat" then
                            for Index, AllMeats in ipairs(v:GetChildren()) do
                                if Pick >= 3 then 
                                    break 
                                end
                                if AllMeats and AllMeats:FindFirstChildOfClass('ProximityPrompt') and AllMeats:FindFirstChildOfClass('ProximityPrompt').Enabled and AllMeats.Transparency ~= 1 then 
                                    local Prompt = AllMeats:FindFirstChildOfClass('ProximityPrompt')
                                    char:FindFirstChild('HumanoidRootPart').CFrame = CFrame.new(Prompt.Parent.CFrame.Position.X, Prompt.Parent.CFrame.Position.Y + 3, Prompt.Parent.CFrame.Position.Z)
                                    task.wait(0.84)
                                    fireproximitypromptv2(Prompt, 1, false)
                                    task.wait(0.43)
                                    fireproximitypromptv2(Prompt, 1, false)
                                    task.wait(1.58)
                                    Pick = Pick + 1
                                end 
                            end 
                        end  
                    end
                    Notify("Bypassing", "Don't move", 11)
                    task.wait(11)
                    Tp(-4443, 711, 1164, nil)
                    task.wait(0.3)
                    for Index, v in ipairs(game:GetService("Workspace"):GetDescendants()) do 
                        if v.Name == "NoppeNPC" then 
                            local Prompt = v.RootPart:FindFirstChildOfClass('ProximityPrompt')
                            fireproximityprompt(Prompt, 1)
                        end 
                    end  
                    MeatDebounce = false
                    task.wait()
                    getgenv().Float = false
                    for _,v in pairs(game.Players.LocalPlayer.Character:GetDescendants()) do
                        if v:IsA('BasePart') and v.CanCollide and v.Name ~= floatName then
                            v.CanCollide = true
                        end
                    end
                end 
            end
        task.wait()
    end
end)
B2C2.newLabel("Chase")
B2C2.newButton("Enter Zone", "", function()
    getgenv().Float = false
    Tp(-4590, 843.64, -35.54, nil)
end)
B2C2.newButton("Auto Run", "", function()
    getgenv().Float = false
    TweenBIGO(5, -5364, 682.12, 29.63)
end)
B2C2.newButton("Full Auto Run", "", function()
    getgenv().Float = false
    Tp(-4590, 843.64, -35.54, 10)
    TweenBIGO(5, -5364, 682.12, 29.63)
end)
B2C2.newLabel("Levers")
B2C2.newButton("Enter Zone", "", function()
    getgenv().Float = false
    Tp(-11035, -81.4, -12.56, nil)
end)
B2C2.newButton("Auto Win", "", function()
    if not CustomFirePropmt then
        getgenv().Float = false
        for i, v in pairs(workspace:GetDescendants()) do
            if v:IsA("ProximityPrompt") and v.Parent:IsA("BasePart") and v.Parent.Name == "Lever" then
                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.Parent.CFrame
                v.HoldDuration = 0
                task.wait(0.3)
                fireproximityprompt(v)
            end
        end
        task.wait(6)
        Tp(-10060, 484.1, -9.52, nil)
    else
        getgenv().Float = true
        for _,v in pairs(game.Players.LocalPlayer.Character:GetDescendants()) do
            if v:IsA('BasePart') and v.CanCollide and v.Name ~= floatName then
                v.CanCollide = false
            end
        end
        task.wait()
        for i, v in pairs(workspace:GetDescendants()) do
            if v:IsA("ProximityPrompt") and v.Parent:IsA("BasePart") and v.Parent.Name == "Lever" then
                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(v.Parent.Position.X, v.Parent.Position.Y + 3, v.Parent.Position.Z)
                v.HoldDuration = 0
                task.wait(0.3)
                fireproximitypromptv2(v, 1, true)
            end
        end
        task.wait(6)
        Tp(-10060, 484.1, -9.52, nil)
        getgenv().Float = false
        for _,v in pairs(game.Players.LocalPlayer.Character:GetDescendants()) do
            if v:IsA('BasePart') and v.CanCollide and v.Name ~= floatName then
                v.CanCollide = true
            end
        end
    end
end)
B2C2.newButton("Full Auto Win", "", function()
    if not CustomFirePropmt then
        getgenv().Float = false
        Tp(-11035, -81.4, -12.56, 5)
        for i, v in pairs(workspace:GetDescendants()) do
            if v:IsA("ProximityPrompt") and v.Parent:IsA("BasePart") and v.Parent.Name == "Lever" then
                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.Parent.CFrame
                v.HoldDuration = 0
                task.wait(0.3)
                fireproximityprompt(v)
            end
        end
        task.wait(6)
        Tp(-10060, 484.1, -9.52, nil)
    else
        for _,v in pairs(game.Players.LocalPlayer.Character:GetDescendants()) do
            if v:IsA('BasePart') and v.CanCollide and v.Name ~= floatName then
                v.CanCollide = false
            end
        end
        getgenv().Float = true
        Tp(-11035, -81.4, -12.56, 5)
        for i, v in pairs(workspace:GetDescendants()) do
            if v:IsA("ProximityPrompt") and v.Parent:IsA("BasePart") and v.Parent.Name == "Lever" then
                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(v.Parent.Position.X, v.Parent.Position.Y + 3, v.Parent.Position.Z)
                task.wait(0.3)
                fireproximitypromptv2(v, 1, true)
            end
        end
        task.wait(6)
        Tp(-10060, 484.1, -9.52, nil)
        for _,v in pairs(game.Players.LocalPlayer.Character:GetDescendants()) do
            if v:IsA('BasePart') and v.CanCollide and v.Name ~= floatName then
                v.CanCollide = true
            end
        end
        getgenv().Float = false
    end
end)
B2C2.newLabel("Math")
B2C2.newButton("Skip", "", function()
    getgenv().Float = false
    Tp(-2005.8, 968.25, -4909.48, nil)
end)
B2C2.newButton("Reveal Number", "", function()
    local MidANumber = nil
    local MidBNumber = nil
    local SymbolsAImage1 = nil
    local SymbolsAImage2 = nil
    local SymbolsBImage1 = nil
    local SymbolsBImage2 = nil
    local SymbolsANumber1 = nil
    local SymbolsANumber2 = nil
    local SymbolsBNumber1 = nil
    local SymbolsBNumber2 = nil

    -- Get MidNumber and Get Image1 
    for i,v in ipairs(game:GetService("Workspace"):GetDescendants()) do
        if v.ClassName == "TextLabel" and v.Parent.ClassName == "SurfaceGui" and v.Parent.Parent.Name == "MiddleNumber" and v.Parent.Parent.Parent.Name == "SymbolsA" then
            MidANumber = v.Text
        end
        if v.ClassName == "TextLabel" and v.Parent.ClassName == "SurfaceGui" and v.Parent.Parent.Name == "MiddleNumber" and v.Parent.Parent.Parent.Name == "SymbolsB" then
            MidBNumber = v.Text
        end
        if v.ClassName == "ImageLabel" and v.Parent.ClassName == "SurfaceGui" and v.Parent.Parent.Name == "SymbolHolder" and v.Parent.Parent.Parent.Name == "SymbolsA" then
            SymbolsAImage1 = v.Image
        end
        if v.ClassName == "ImageLabel" and v.Parent.ClassName == "SurfaceGui" and v.Parent.Parent.Name == "SymbolHolder" and v.Parent.Parent.Parent.Name == "SymbolsB" then
            SymbolsBImage1 = v.Image
        end
    end

    -- Get Image2
    for i,v in ipairs(game:GetService("Workspace"):GetDescendants()) do
        if v.ClassName == "ImageLabel" and v.Parent.ClassName == "SurfaceGui" and v.Parent.Parent.Name == "SymbolHolder" and v.Parent.Parent.Parent.Name == "SymbolsA" then
            if v.Image ~= SymbolsAImage1 then
                SymbolsAImage2 = v.Image
            end
        end
        if v.ClassName == "ImageLabel" and v.Parent.ClassName == "SurfaceGui" and v.Parent.Parent.Name == "SymbolHolder" and v.Parent.Parent.Parent.Name == "SymbolsB" then
            if v.Image ~= SymbolsBImage1 then
                SymbolsBImage2 = v.Image
            end
        end
    end

    -- Get Number
    for i,v in ipairs(game:GetService("Workspace"):GetDescendants()) do
        if v.ClassName == "ImageLabel" and v.Parent:FindFirstChild("TextLabel") then
            if v.Image == SymbolsAImage1 then
                SymbolsANumber1 = v.Parent:WaitForChild("TextLabel").Text
            end
        end
        if v.ClassName == "ImageLabel" and v.Parent:FindFirstChild("TextLabel") then
            if v.Image == SymbolsAImage2 then
                SymbolsANumber2 = v.Parent:WaitForChild("TextLabel").Text
            end
        end
        if v.ClassName == "ImageLabel" and v.Parent:FindFirstChild("TextLabel") then
            if v.Image == SymbolsBImage1 then
                SymbolsBNumber1 = v.Parent:WaitForChild("TextLabel").Text
            end
        end
        if v.ClassName == "ImageLabel" and v.Parent:FindFirstChild("TextLabel") then
            if v.Image == SymbolsBImage2 then
                SymbolsBNumber2 = v.Parent:WaitForChild("TextLabel").Text
            end
        end
        end

    -- Sum Number
    local Answer1 = tostring(MidANumber - (SymbolsANumber1 + SymbolsANumber2))
    local Answer2 = tostring(MidBNumber - (SymbolsBNumber1 + SymbolsBNumber2))

    -- Image Hack
    for i,v in ipairs(game:GetService("Workspace"):GetDescendants()) do
        if v.ClassName == "TextLabel" and v.Parent.Parent.Parent.Name == "Kanji" then
            for _, sec in ipairs(game:GetService("Workspace"):GetDescendants()) do
                if sec.Name == "SymbolHolder[Empty]" and sec.Parent.Name == "SymbolsA" then
                    if v.Text == Answer1 then
                        local HackImage1 = v.Parent:Clone()
                        HackImage1.Parent = sec
                    end
                end
                if sec.Name == "SymbolHolder[Empty]" and sec.Parent.Name == "SymbolsB" then
                    if v.Text == Answer2 then
                        local HackImage2 = v.Parent:Clone()
                        HackImage2.Parent = sec
                    end
                end
            end
        end
    end
end)
B2C2.newLabel("Master Chef")
B2C2.newButton("Enter Zone", "", function()
    getgenv().Float = false
    TweenBIGO(1, -2581.77124, 990.56134, -4918.28027)
end)
B2C2.newButton("Auto Cook", "SinglePlayer", function()
    if FirstPressCook then
        print("First")
        for _, v in pairs(workspace:GetDescendants()) do
            if v.Name == "Barrier" and v:IsA("Part") and isPlayerNear(v, 100) then
                v:Destroy()
            end
        end
        FirstPressCook = false
    end
    Order270 = "nil"
    matches = {}
    task.wait(0.1)
    for _, v in pairs(workspace:GetDescendants()) do
        if v.Name == "Orders" then
            if v:FindFirstChild("Ham Stew") then
                Order270 = "Ham Stew"
                table.insert(matches, Order270)
            elseif v:FindFirstChild("Chicken Soup") then
                Order270 = "Chicken Soup"
                table.insert(matches, Order270)
            elseif v:FindFirstChild("Spaghetti N Eyeballs") then
                Order270 = "Spaghetti N Eyeballs"
                table.insert(matches, Order270)
            end
        end
    end
    task.wait(1)
    if #matches > 0 then
        selectedIndex = math.random(1, #matches)
        selectedObject = matches[selectedIndex]
        print(#matches)
    else
        Notify("Error 01", "Press again")
    end
    if selectedObject == "Ham Stew" then
        if not CustomFirePropmt then
            for _, v in pairs(workspace:GetDescendants()) do --Ham
                if v.Parent:IsA("BasePart") and v:IsA("ProximityPrompt") and v.Parent.Parent.Name == "Pot" then
                    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.Parent.CFrame
                    task.wait(0.3)
                    fireproximityprompt(v)
                    task.wait()
                    break
                end
            end
            task.wait()
            for _, v in pairs(Workspace:GetDescendants()) do
                if v.Parent:IsA("BasePart") and v:IsA("ProximityPrompt") and v.Parent.Parent.Name == "WoodenCounter" then
                    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.Parent.CFrame
                    task.wait(0.3)
                    fireproximityprompt(v)
                    task.wait()
                    break
                end
            end
            task.wait()
            for _, v in pairs(Workspace:GetDescendants()) do
                if v.Parent:IsA("BasePart") and v:IsA("ProximityPrompt") and v.Parent.Parent.Name == "Ham" and v.Parent.Parent:IsA("Model") then
                    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.Parent.CFrame
                    task.wait(0.3)
                    fireproximityprompt(v)
                    task.wait()
                    break
                end
            end
            task.wait()
            for _, q in pairs(Workspace:GetDescendants()) do
                if q.Name == "SystemBin" and q:FindFirstChild("Pot") then --if bowlplace
                    for _, v in pairs(Workspace:GetDescendants()) do
                        if v.Parent:IsA("BasePart") and v:IsA("ProximityPrompt") and v.Parent.Parent.Name == "WoodenCounter" then
                            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.Parent.CFrame
                            task.wait(0.3)
                            fireproximityprompt(v)
                            task.wait()
                            break
                        end
                    end
                    task.wait()
                    break
                end
            end
            task.wait()
            for _, v in pairs(Workspace:GetDescendants()) do
                if v:IsA("ProximityPrompt") and v.Parent.Parent.Name == "Sausage" and v.Parent.Parent:IsA("Model") then
                    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.Parent.CFrame
                    task.wait(0.3)
                    fireproximityprompt(v)
                    task.wait()
                    break
                end
            end
            task.wait()
            for _, q in pairs(Workspace:GetDescendants()) do
                if q.Name == "SystemBin" and q:FindFirstChild("Pot") then --if bowlplace
                    for _, v in pairs(Workspace:GetDescendants()) do
                        if v.Parent:IsA("BasePart") and v:IsA("ProximityPrompt") and v.Parent.Parent.Name == "WoodenCounter" then
                            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.Parent.CFrame
                            task.wait(0.3)
                            fireproximityprompt(v)
                            task.wait()
                            break
                        end
                    end
                    task.wait()
                    break
                end
            end
            task.wait(1)
            for _, q in pairs(Workspace:GetDescendants()) do
                if q.Name == "SystemBin" and q:FindFirstChild("Pot") then --boil
                    for _, v in pairs(Workspace:GetDescendants()) do
                        if v.Parent:IsA("BasePart") and v:IsA("ProximityPrompt") and v.Parent.Parent.Name == "WoodenCounter" then
                            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.Parent.CFrame
                            task.wait(0.3)
                            fireproximityprompt(v)
                            task.wait()
                            break
                        end
                    end
                    task.wait()
                    break
                end
            end
            task.wait(1)
            for _, q in pairs(Workspace:GetDescendants()) do --boil2
                if q.Name == "SystemBin" and q:FindFirstChild("Pot") then
                    for _, v in pairs(Workspace:GetDescendants()) do
                        if v.Parent:IsA("BasePart") and v:IsA("ProximityPrompt") and v.Parent.Parent.Name == "stove" then
                            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.Parent.CFrame
                            task.wait(0.3)
                            fireproximityprompt(v)
                            task.wait()
                            break
                        end
                    end
                    task.wait()
                    break
                end
            end
            task.wait(10)
            for _, v in pairs(Workspace:GetDescendants()) do
                if v.Parent:IsA("BasePart") and v:IsA("ProximityPrompt") and v.Parent.Parent.Name == "Bowl" then
                    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.Parent.CFrame
                    task.wait(0.3)
                    fireproximityprompt(v)
                    task.wait()
                    break
                end
            end
            task.wait(1)
            for _, v in pairs(Workspace:GetDescendants()) do
                if v.Parent:IsA("BasePart") and v:IsA("ProximityPrompt") and v.Parent.Parent.Name == "WoodenCounter" then
                    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.Parent.CFrame
                    task.wait(0.3)
                    fireproximityprompt(v)
                    task.wait()
                    break
                end
            end
            task.wait()
            for _, q in pairs(Workspace:GetDescendants()) do
                if q.Name == "SystemBin" and q:FindFirstChild("Pot") then
                    for _, v in pairs(Workspace:GetDescendants()) do
                        if v.Parent:IsA("BasePart") and v:IsA("ProximityPrompt") and v.Parent.Parent.Name == "stove" then
                            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.Parent.CFrame
                            task.wait(0.3)
                            fireproximityprompt(v)
                            task.wait()
                            break
                        end
                    end
                    task.wait()
                break
            end
            end
            task.wait()
            for _, q in pairs(Workspace:GetDescendants()) do
                if q.Name == "SystemBin" and q:FindFirstChild("Pot") then --if bowlplace
                    for _, v in pairs(Workspace:GetDescendants()) do
                        if v.Parent:IsA("BasePart") and v:IsA("ProximityPrompt") and v.Parent.Parent.Name == "WoodenCounter" then
                            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.Parent.CFrame
                            task.wait(0.3)
                            fireproximityprompt(v)
                            task.wait()
                            break
                        end
                    end
                    task.wait()
                    break
                end
            end
            task.wait(1)
            for _, q in pairs(Workspace:GetDescendants()) do
                if q.Name == "SystemBin" and q:FindFirstChild("Ham Stew") then --if bowlplace
                    for _, v in pairs(Workspace:GetDescendants()) do
                        if v.Parent:IsA("BasePart") and v:IsA("ProximityPrompt") and v.Parent.Parent.Name == "WoodenCounter" then
                            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.Parent.CFrame
                            task.wait(0.3)
                            fireproximityprompt(v)
                            task.wait()
                            break
                        end
                    end
                    task.wait()
                    break
                end
            end
            task.wait(1)
            for _, v in pairs(Workspace:GetDescendants()) do
                if v:IsA("ProximityPrompt") and v.Parent.Parent.Name == "TurnInFood" then
                    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.Parent.Parent.CFrame
                    task.wait(0.3)
                    fireproximityprompt(v)
                    task.wait()
                    break
                end
            end
        else
            for _, v in pairs(workspace:GetDescendants()) do --Ham
                if v.Parent:IsA("BasePart") and v:IsA("ProximityPrompt") and v.Parent.Parent.Name == "Pot" then
                    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.Parent.CFrame
                    task.wait(0.3)
                    fireproximitypromptv2(v, 1, true)
                    task.wait(0.1)
                    break
                end
            end
            task.wait()
            for _, v in pairs(Workspace:GetDescendants()) do
                if v.Parent:IsA("BasePart") and v:IsA("ProximityPrompt") and v.Parent.Parent.Name == "WoodenCounter" then
                    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.Parent.CFrame
                    task.wait(0.3)
                    fireproximitypromptv2(v, 1, true)
                    task.wait()
                    break
                end
            end
            task.wait()
            for _, v in pairs(Workspace:GetDescendants()) do
                if v.Parent:IsA("BasePart") and v:IsA("ProximityPrompt") and v.Parent.Parent.Name == "Ham" and v.Parent.Parent:IsA("Model") then
                    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.Parent.CFrame
                    task.wait(0.3)
                    fireproximitypromptv2(v, 1, true)
                    task.wait()
                    break
                end
            end
            task.wait()
            for _, q in pairs(Workspace:GetDescendants()) do
                if q.Name == "SystemBin" and q:FindFirstChild("Pot") then --if bowlplace
                    for _, v in pairs(Workspace:GetDescendants()) do
                        if v.Parent:IsA("BasePart") and v:IsA("ProximityPrompt") and v.Parent.Parent.Name == "WoodenCounter" then
                            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.Parent.CFrame
                            task.wait(0.3)
                            fireproximitypromptv2(v, 1, true)
                            task.wait()
                            break
                        end
                    end
                    task.wait()
                    break
                end
            end
            task.wait()
            for _, v in pairs(Workspace:GetDescendants()) do
                if v:IsA("ProximityPrompt") and v.Parent.Parent.Name == "Sausage" and v.Parent.Parent:IsA("Model") then
                    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.Parent.CFrame
                    task.wait(0.3)
                    fireproximitypromptv2(v, 1, true)
                    task.wait()
                    break
                end
            end
            task.wait()
            for _, q in pairs(Workspace:GetDescendants()) do
                if q.Name == "SystemBin" and q:FindFirstChild("Pot") then --if bowlplace
                    for _, v in pairs(Workspace:GetDescendants()) do
                        if v.Parent:IsA("BasePart") and v:IsA("ProximityPrompt") and v.Parent.Parent.Name == "WoodenCounter" then
                            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.Parent.CFrame
                            task.wait(0.3)
                            fireproximitypromptv2(v, 1, true)
                            task.wait()
                            break
                        end
                    end
                    task.wait()
                    break
                end
            end
            task.wait(1)
            for _, q in pairs(Workspace:GetDescendants()) do
                if q.Name == "SystemBin" and q:FindFirstChild("Pot") then --boil
                    for _, v in pairs(Workspace:GetDescendants()) do
                        if v.Parent:IsA("BasePart") and v:IsA("ProximityPrompt") and v.Parent.Parent.Name == "WoodenCounter" then
                            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.Parent.CFrame
                            task.wait(0.3)
                            fireproximitypromptv2(v, 1, true)
                            task.wait()
                            break
                        end
                    end
                    task.wait()
                    break
                end
            end
            task.wait(1)
            for _, q in pairs(Workspace:GetDescendants()) do --boil2
                if q.Name == "SystemBin" and q:FindFirstChild("Pot") then
                    for _, v in pairs(Workspace:GetDescendants()) do
                        if v.Parent:IsA("BasePart") and v:IsA("ProximityPrompt") and v.Parent.Parent.Name == "stove" then
                            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.Parent.CFrame
                            task.wait(0.3)
                            fireproximitypromptv2(v, 1, true)
                            task.wait()
                            break
                        end
                    end
                    task.wait()
                    break
                end
            end
            task.wait(10)
            for _, v in pairs(Workspace:GetDescendants()) do
                if v.Parent:IsA("BasePart") and v:IsA("ProximityPrompt") and v.Parent.Parent.Name == "Bowl" then
                    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.Parent.CFrame
                    task.wait(0.3)
                    fireproximitypromptv2(v, 1, true)
                    task.wait()
                    break
                end
            end
            task.wait(1)
            for _, v in pairs(Workspace:GetDescendants()) do
                if v.Parent:IsA("BasePart") and v:IsA("ProximityPrompt") and v.Parent.Parent.Name == "WoodenCounter" then
                    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.Parent.CFrame
                    task.wait(0.3)
                    fireproximitypromptv2(v, 1, true)
                    task.wait()
                    break
                end
            end
            task.wait()
            for _, q in pairs(Workspace:GetDescendants()) do
                if q.Name == "SystemBin" and q:FindFirstChild("Pot") then
                    for _, v in pairs(Workspace:GetDescendants()) do
                        if v.Parent:IsA("BasePart") and v:IsA("ProximityPrompt") and v.Parent.Parent.Name == "stove" then
                            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.Parent.CFrame
                            task.wait(0.3)
                            fireproximitypromptv2(v, 1, true)
                            task.wait()
                            break
                        end
                    end
                    task.wait()
                break
            end
            end
            task.wait()
            for _, q in pairs(Workspace:GetDescendants()) do
                if q.Name == "SystemBin" and q:FindFirstChild("Pot") then --if bowlplace
                    for _, v in pairs(Workspace:GetDescendants()) do
                        if v.Parent:IsA("BasePart") and v:IsA("ProximityPrompt") and v.Parent.Parent.Name == "WoodenCounter" then
                            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.Parent.CFrame
                            task.wait(0.3)
                            fireproximitypromptv2(v, 1, true)
                            task.wait()
                            break
                        end
                    end
                    task.wait()
                    break
                end
            end
            task.wait(1)
            for _, q in pairs(Workspace:GetDescendants()) do
                if q.Name == "SystemBin" and q:FindFirstChild("Ham Stew") then --if bowlplace
                    for _, v in pairs(Workspace:GetDescendants()) do
                        if v.Parent:IsA("BasePart") and v:IsA("ProximityPrompt") and v.Parent.Parent.Name == "WoodenCounter" then
                            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.Parent.CFrame
                            task.wait(0.3)
                            fireproximitypromptv2(v, 1, true)
                            task.wait()
                            break
                        end
                    end
                    task.wait()
                    break
                end
            end
            task.wait(1)
            for _, v in pairs(Workspace:GetDescendants()) do
                if v:IsA("ProximityPrompt") and v.Parent.Parent.Name == "TurnInFood" then
                    v.Parent.Parent.CanCollide = false
                    getgenv().Float = true
                    task.wait()
                    Tp(-2754.89501953125, 968.2463989257812, -4919.43212890625, 0.3)
                    fireproximitypromptv2(v, 1, true)
                    task.wait()
                    getgenv().Float = false
                    break
                end
            end
        end
    elseif selectedObject == "Chicken Soup" then
        if not CustomFirePropmt then
            for _, v in pairs(Workspace:GetDescendants()) do --auto KFC
                if v.Parent:IsA("BasePart") and v:IsA("ProximityPrompt") and v.Parent.Parent.Name == "Pot" then
                    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.Parent.CFrame
                    task.wait(0.3)
                    fireproximityprompt(v)
                    task.wait()
                    break
                end
            end
            task.wait()
            for _, v in pairs(Workspace:GetDescendants()) do
                if v.Parent:IsA("BasePart") and v:IsA("ProximityPrompt") and v.Parent.Parent.Name == "WoodenCounter" then
                    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.Parent.CFrame
                    task.wait(0.3)
                    fireproximityprompt(v)
                    task.wait()
                    break
                end
            end
            task.wait()
            for _, v in pairs(Workspace:GetDescendants()) do
                if v.Parent:IsA("BasePart") and v:IsA("ProximityPrompt") and v.Parent.Parent.Name == "Chicken" and v.Parent.Parent:IsA("Model") then
                    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.Parent.CFrame
                    task.wait(0.3)
                    fireproximityprompt(v)
                    task.wait()
                    break
                end
            end
            task.wait()
            for _, q in pairs(Workspace:GetDescendants()) do
                if q.Name == "SystemBin" and q:FindFirstChild("Pot") then --if bowlplace
                    for _, v in pairs(Workspace:GetDescendants()) do
                        if v.Parent:IsA("BasePart") and v:IsA("ProximityPrompt") and v.Parent.Parent.Name == "WoodenCounter" then
                            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.Parent.CFrame
                            task.wait(0.3)
                            fireproximityprompt(v)
                            task.wait()
                            break
                        end
                    end
                    task.wait()
                    break
                end
            end
            task.wait()
            for _, v in pairs(Workspace:GetDescendants()) do
                if v.Parent:IsA("BasePart") and v:IsA("ProximityPrompt") and v.Parent.Parent.Name == "Wrapped Meat" and v.Parent.Parent:IsA("Model") then
                    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.Parent.CFrame
                    task.wait(0.3)
                    fireproximityprompt(v)
                    task.wait()
                    break
                end
            end
            task.wait()
            for _, q in pairs(Workspace:GetDescendants()) do
                if q.Name == "SystemBin" and q:FindFirstChild("Pot") then --if bowlplace
                    for _, v in pairs(Workspace:GetDescendants()) do
                        if v.Parent:IsA("BasePart") and v:IsA("ProximityPrompt") and v.Parent.Parent.Name == "WoodenCounter" then
                            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.Parent.CFrame
                            task.wait(0.3)
                            fireproximityprompt(v)
                            task.wait()
                            break
                        end
                    end
                    task.wait()
                    break
                end
            end
            task.wait()
            for _, v in pairs(Workspace:GetDescendants()) do
                if v.Parent:IsA("BasePart") and v:IsA("ProximityPrompt") and v.Parent.Parent.Name == "Cheese" and v.Parent.Parent:IsA("Model") then
                    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.Parent.CFrame
                    task.wait(0.3)
                    fireproximityprompt(v)
                    task.wait()
                    break
                end
            end
            task.wait()
            for _, q in pairs(Workspace:GetDescendants()) do
                if q.Name == "SystemBin" and q:FindFirstChild("Pot") then --if bowlplace
                    for _, v in pairs(Workspace:GetDescendants()) do
                        if v.Parent:IsA("BasePart") and v:IsA("ProximityPrompt") and v.Parent.Parent.Name == "WoodenCounter" then
                            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.Parent.CFrame
                            task.wait(0.3)
                            fireproximityprompt(v)
                            task.wait()
                            break
                        end
                    end
                    task.wait()
                    break
                end
            end
            task.wait()
            for _, q in pairs(Workspace:GetDescendants()) do
                if q.Name == "SystemBin" and q:FindFirstChild("Pot") then --if bowlplace
                    for _, v in pairs(Workspace:GetDescendants()) do
                        if v.Parent:IsA("BasePart") and v:IsA("ProximityPrompt") and v.Parent.Parent.Name == "WoodenCounter" then
                            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.Parent.CFrame
                            task.wait(0.3)
                            fireproximityprompt(v)
                            task.wait()
                            break
                        end
                    end
                    task.wait()
                    break
                end
            end
            task.wait()
            for _, q in pairs(Workspace:GetDescendants()) do --boil2
                if q.Name == "SystemBin" and q:FindFirstChild("Pot") then
                    for _, v in pairs(Workspace:GetDescendants()) do
                        if v.Parent:IsA("BasePart") and v:IsA("ProximityPrompt") and v.Parent.Parent.Name == "stove" then
                            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.Parent.CFrame
                            task.wait(0.3)
                            fireproximityprompt(v)
                            task.wait()
                            break
                        end
                    end
                    task.wait()
                    break
                end
            end
            task.wait(10)
            for _, v in pairs(Workspace:GetDescendants()) do
                if v.Parent:IsA("BasePart") and v:IsA("ProximityPrompt") and v.Parent.Parent.Name == "Bowl" then
                    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.Parent.CFrame
                    task.wait(0.3)
                    fireproximityprompt(v)
                    task.wait()
                    break
                end
            end
            task.wait(1)
            for _, v in pairs(Workspace:GetDescendants()) do
                if v.Parent:IsA("BasePart") and v:IsA("ProximityPrompt") and v.Parent.Parent.Name == "WoodenCounter" then
                    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.Parent.CFrame
                    task.wait(0.3)
                    fireproximityprompt(v)
                    task.wait()
                    break
                end
            end
            task.wait()
            for _, q in pairs(Workspace:GetDescendants()) do
                if q.Name == "SystemBin" and q:FindFirstChild("Pot") then
                    for _, v in pairs(Workspace:GetDescendants()) do
                        if v.Parent:IsA("BasePart") and v:IsA("ProximityPrompt") and v.Parent.Parent.Name == "stove" then
                            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.Parent.CFrame
                            task.wait(0.3)
                            fireproximityprompt(v)
                            task.wait()
                            break
                        end
                    end
                    task.wait()
                    break
                end
            end
            task.wait()
            for _, q in pairs(Workspace:GetDescendants()) do
                if q.Name == "SystemBin" and q:FindFirstChild("Pot") then --if bowlplace
                    for _, v in pairs(Workspace:GetDescendants()) do
                        if v.Parent:IsA("BasePart") and v:IsA("ProximityPrompt") and v.Parent.Parent.Name == "WoodenCounter" then
                            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.Parent.CFrame
                            task.wait(0.3)
                            fireproximityprompt(v)
                            task.wait()
                            break
                        end
                    end
                    task.wait()
                    break
                end
            end
            task.wait(1)
            for _, q in pairs(Workspace:GetDescendants()) do
                if q.Name == "SystemBin" and q:FindFirstChild("Chicken Soup") then --if bowlplace
                    for _, v in pairs(Workspace:GetDescendants()) do
                        if v.Parent:IsA("BasePart") and v:IsA("ProximityPrompt") and v.Parent.Parent.Name == "WoodenCounter" then
                            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.Parent.CFrame
                            task.wait(0.3)
                            fireproximityprompt(v)
                            task.wait()
                            break
                        end
                    end
                    task.wait()
                    break
                end
            end
            task.wait(1)
            for _, v in pairs(Workspace:GetDescendants()) do
                if v:IsA("ProximityPrompt") and v.Parent.Parent.Name == "TurnInFood" then
                    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.Parent.Parent.CFrame
                    task.wait(0.3)
                    fireproximityprompt(v)
                    task.wait()
                    break
                end
            end
        else
            for _, v in pairs(Workspace:GetDescendants()) do --auto KFC
                if v.Parent:IsA("BasePart") and v:IsA("ProximityPrompt") and v.Parent.Parent.Name == "Pot" then
                    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.Parent.CFrame
                    task.wait(0.3)
                    fireproximitypromptv2(v, 1, true)
                    task.wait()
                    break
                end
            end
            task.wait()
            for _, v in pairs(Workspace:GetDescendants()) do
                if v.Parent:IsA("BasePart") and v:IsA("ProximityPrompt") and v.Parent.Parent.Name == "WoodenCounter" then
                    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.Parent.CFrame
                    task.wait(0.3)
                    fireproximitypromptv2(v, 1, true)
                    task.wait()
                    break
                end
            end
            task.wait()
            for _, v in pairs(Workspace:GetDescendants()) do
                if v.Parent:IsA("BasePart") and v:IsA("ProximityPrompt") and v.Parent.Parent.Name == "Chicken" and v.Parent.Parent:IsA("Model") then
                    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.Parent.CFrame
                    task.wait(0.3)
                    fireproximitypromptv2(v, 1, true)
                    task.wait()
                    break
                end
            end
            task.wait()
            for _, q in pairs(Workspace:GetDescendants()) do
                if q.Name == "SystemBin" and q:FindFirstChild("Pot") then --if bowlplace
                    for _, v in pairs(Workspace:GetDescendants()) do
                        if v.Parent:IsA("BasePart") and v:IsA("ProximityPrompt") and v.Parent.Parent.Name == "WoodenCounter" then
                            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.Parent.CFrame
                            task.wait(0.3)
                            fireproximitypromptv2(v, 1, true)
                            task.wait()
                            break
                        end
                    end
                    task.wait()
                    break
                end
            end
            task.wait()
            for _, v in pairs(Workspace:GetDescendants()) do
                if v.Parent:IsA("BasePart") and v:IsA("ProximityPrompt") and v.Parent.Parent.Name == "Wrapped Meat" and v.Parent.Parent:IsA("Model") then
                    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.Parent.CFrame
                    task.wait(0.3)
                    fireproximitypromptv2(v, 1, true)
                    task.wait()
                    break
                end
            end
            task.wait()
            for _, q in pairs(Workspace:GetDescendants()) do
                if q.Name == "SystemBin" and q:FindFirstChild("Pot") then --if bowlplace
                    for _, v in pairs(Workspace:GetDescendants()) do
                        if v.Parent:IsA("BasePart") and v:IsA("ProximityPrompt") and v.Parent.Parent.Name == "WoodenCounter" then
                            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.Parent.CFrame
                            task.wait(0.3)
                            fireproximitypromptv2(v, 1, true)
                            task.wait()
                            break
                        end
                    end
                    task.wait()
                    break
                end
            end
            task.wait()
            for _, v in pairs(Workspace:GetDescendants()) do
                if v.Parent:IsA("BasePart") and v:IsA("ProximityPrompt") and v.Parent.Parent.Name == "Cheese" and v.Parent.Parent:IsA("Model") then
                    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.Parent.CFrame
                    task.wait(0.3)
                    fireproximitypromptv2(v, 1, true)
                    task.wait()
                    break
                end
            end
            task.wait()
            for _, q in pairs(Workspace:GetDescendants()) do
                if q.Name == "SystemBin" and q:FindFirstChild("Pot") then --if bowlplace
                    for _, v in pairs(Workspace:GetDescendants()) do
                        if v.Parent:IsA("BasePart") and v:IsA("ProximityPrompt") and v.Parent.Parent.Name == "WoodenCounter" then
                            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.Parent.CFrame
                            task.wait(0.3)
                            fireproximitypromptv2(v, 1, true)
                            task.wait()
                            break
                        end
                    end
                    task.wait()
                    break
                end
            end
            task.wait()
            for _, q in pairs(Workspace:GetDescendants()) do
                if q.Name == "SystemBin" and q:FindFirstChild("Pot") then --if bowlplace
                    for _, v in pairs(Workspace:GetDescendants()) do
                        if v.Parent:IsA("BasePart") and v:IsA("ProximityPrompt") and v.Parent.Parent.Name == "WoodenCounter" then
                            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.Parent.CFrame
                            task.wait(0.3)
                            fireproximitypromptv2(v, 1, true)
                            task.wait()
                            break
                        end
                    end
                    task.wait()
                    break
                end
            end
            task.wait()
            for _, q in pairs(Workspace:GetDescendants()) do --boil2
                if q.Name == "SystemBin" and q:FindFirstChild("Pot") then
                    for _, v in pairs(Workspace:GetDescendants()) do
                        if v.Parent:IsA("BasePart") and v:IsA("ProximityPrompt") and v.Parent.Parent.Name == "stove" then
                            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.Parent.CFrame
                            task.wait(0.3)
                            fireproximitypromptv2(v, 1, true)
                            task.wait()
                            break
                        end
                    end
                    task.wait()
                    break
                end
            end
            task.wait(10)
            for _, v in pairs(Workspace:GetDescendants()) do
                if v.Parent:IsA("BasePart") and v:IsA("ProximityPrompt") and v.Parent.Parent.Name == "Bowl" then
                    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.Parent.CFrame
                    task.wait(0.3)
                    fireproximitypromptv2(v, 1, true)
                    task.wait()
                    break
                end
            end
            task.wait(1)
            for _, v in pairs(Workspace:GetDescendants()) do
                if v.Parent:IsA("BasePart") and v:IsA("ProximityPrompt") and v.Parent.Parent.Name == "WoodenCounter" then
                    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.Parent.CFrame
                    task.wait(0.3)
                    fireproximitypromptv2(v, 1, true)
                    task.wait()
                    break
                end
            end
            task.wait()
            for _, q in pairs(Workspace:GetDescendants()) do
                if q.Name == "SystemBin" and q:FindFirstChild("Pot") then
                    for _, v in pairs(Workspace:GetDescendants()) do
                        if v.Parent:IsA("BasePart") and v:IsA("ProximityPrompt") and v.Parent.Parent.Name == "stove" then
                            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.Parent.CFrame
                            task.wait(0.3)
                            fireproximitypromptv2(v, 1, true)
                            task.wait()
                            break
                        end
                    end
                    task.wait()
                    break
                end
            end
            task.wait()
            for _, q in pairs(Workspace:GetDescendants()) do
                if q.Name == "SystemBin" and q:FindFirstChild("Pot") then --if bowlplace
                    for _, v in pairs(Workspace:GetDescendants()) do
                        if v.Parent:IsA("BasePart") and v:IsA("ProximityPrompt") and v.Parent.Parent.Name == "WoodenCounter" then
                            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.Parent.CFrame
                            task.wait(0.3)
                            fireproximitypromptv2(v, 1, true)
                            task.wait()
                            break
                        end
                    end
                    task.wait()
                    break
                end
            end
            task.wait(1)
            for _, q in pairs(Workspace:GetDescendants()) do
                if q.Name == "SystemBin" and q:FindFirstChild("Chicken Soup") then --if bowlplace
                    for _, v in pairs(Workspace:GetDescendants()) do
                        if v.Parent:IsA("BasePart") and v:IsA("ProximityPrompt") and v.Parent.Parent.Name == "WoodenCounter" then
                            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.Parent.CFrame
                            task.wait(0.3)
                            fireproximitypromptv2(v, 1, true)
                            task.wait()
                            break
                        end
                    end
                    task.wait()
                    break
                end
            end
            task.wait(1)
            for _, v in pairs(Workspace:GetDescendants()) do
                if v:IsA("ProximityPrompt") and v.Parent.Parent.Name == "TurnInFood" then
                    v.Parent.Parent.CanCollide = false
                    getgenv().Float = true
                    task.wait()
                    Tp(-2754.89501953125, 968.2463989257812, -4919.43212890625, 0.3)
                    fireproximitypromptv2(v, 1, true)
                    task.wait()
                    getgenv().Float = false
                    break
                end
            end
        end
    elseif selectedObject == "Spaghetti N Eyeballs" then
        if not CustomFirePropmt then
            for _, v in pairs(Workspace:GetDescendants()) do -- eyeball
                if v.Parent:IsA("BasePart") and v:IsA("ProximityPrompt") and v.Parent.Parent.Name == "Bowl" then
                    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.Parent.CFrame
                    task.wait(0.3)
                    fireproximityprompt(v)
                    task.wait()
                    break
                end
            end
            for _, v in pairs(Workspace:GetDescendants()) do
                if v.Parent:IsA("BasePart") and v:IsA("ProximityPrompt") and v.Parent.Parent.Name == "WoodenCounter" then
                    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.Parent.CFrame
                    task.wait(0.3)
                    fireproximityprompt(v)
                    task.wait()
                    break
                end
            end
            for _, v in pairs(Workspace:GetDescendants()) do
                if v.Parent:IsA("BasePart") and v:IsA("ProximityPrompt") and v.Parent.Parent.Name == "Eyeball" and v.Parent.Parent:IsA("Model")
                 then
                    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.Parent.CFrame
                    task.wait(0.3)
                    fireproximityprompt(v)
                    task.wait()
                    break
                end
            end
            task.wait()
            for _, q in pairs(Workspace:GetDescendants()) do
                if q.Name == "SystemBin" and q:FindFirstChild("Bowl") then --if bowlplace
                    for _, v in pairs(Workspace:GetDescendants()) do
                        if v.Parent:IsA("BasePart") and v:IsA("ProximityPrompt") and v.Parent.Parent.Name == "WoodenCounter" then
                            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.Parent.CFrame
                            task.wait(0.3)
                            fireproximityprompt(v)
                            task.wait()
                            break
                        end
                    end
                    task.wait()
                    break
                end
            end
            for _, v in pairs(Workspace:GetDescendants()) do
                if v.Parent:IsA("BasePart") and v:IsA("ProximityPrompt") and v.Parent.Parent.Name == "Spaghetti" and v.Parent.Parent:IsA("Model") then
                    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.Parent.CFrame
                    task.wait(0.3)
                    fireproximityprompt(v)
                    task.wait()
                    break
                end
            end
            task.wait()
            for _, q in pairs(Workspace:GetDescendants()) do
                if q.Name == "SystemBin" and q:FindFirstChild("Bowl") then --if bowlplace
                    for _, v in pairs(Workspace:GetDescendants()) do
                        if v.Parent:IsA("BasePart") and v:IsA("ProximityPrompt") and v.Parent.Parent.Name == "WoodenCounter" then
                            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.Parent.CFrame
                            task.wait(0.3)
                            fireproximityprompt(v)
                            task.wait()
                            break
                        end
                    end
                    task.wait()
                    break
                end
            end
            task.wait(1)
            for _, q in pairs(Workspace:GetDescendants()) do
                if q.Name == "SystemBin" and q:FindFirstChild("Spaghetti N Eyeballs") then --finish prepare send
                    for _, v in pairs(Workspace:GetDescendants()) do
                        if v.Parent:IsA("BasePart") and v:IsA("ProximityPrompt") and v.Parent.Parent.Name == "WoodenCounter" then
                            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.Parent.CFrame
                            task.wait(0.3)
                            fireproximityprompt(v)
                            task.wait()
                            break
                        end
                    end
                    task.wait()
                    break
                end
            end
            task.wait(1)
            for _, v in pairs(Workspace:GetDescendants()) do
                if v:IsA("ProximityPrompt") and v.Parent.Parent.Name == "TurnInFood" then
                    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.Parent.Parent.CFrame
                    task.wait(0.3)
                    fireproximityprompt(v)
                    task.wait()
                    break
                end
            end                    
        else
            for _, v in pairs(Workspace:GetDescendants()) do -- eyeball
                if v.Parent:IsA("BasePart") and v:IsA("ProximityPrompt") and v.Parent.Parent.Name == "Bowl" then
                    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.Parent.CFrame
                    task.wait(0.3)
                    fireproximitypromptv2(v, 1, true)
                    task.wait()
                    break
                end
            end
            for _, v in pairs(Workspace:GetDescendants()) do
                if v.Parent:IsA("BasePart") and v:IsA("ProximityPrompt") and v.Parent.Parent.Name == "WoodenCounter" then
                    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.Parent.CFrame
                    task.wait(0.3)
                    fireproximitypromptv2(v, 1, true)
                    task.wait()
                    break
                end
            end
            for _, v in pairs(Workspace:GetDescendants()) do
                if v.Parent:IsA("BasePart") and v:IsA("ProximityPrompt") and v.Parent.Parent.Name == "Eyeball" and v.Parent.Parent:IsA("Model")
                 then
                    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.Parent.CFrame
                    task.wait(0.3)
                    fireproximitypromptv2(v, 1, true)
                    task.wait()
                    break
                end
            end
            task.wait()
            for _, q in pairs(Workspace:GetDescendants()) do
                if q.Name == "SystemBin" and q:FindFirstChild("Bowl") then --if bowlplace
                    for _, v in pairs(Workspace:GetDescendants()) do
                        if v.Parent:IsA("BasePart") and v:IsA("ProximityPrompt") and v.Parent.Parent.Name == "WoodenCounter" then
                            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.Parent.CFrame
                            task.wait(0.3)
                            fireproximitypromptv2(v, 1, true)
                            task.wait()
                            break
                        end
                    end
                    task.wait()
                    break
                end
            end
            for _, v in pairs(Workspace:GetDescendants()) do
                if v.Parent:IsA("BasePart") and v:IsA("ProximityPrompt") and v.Parent.Parent.Name == "Spaghetti" and v.Parent.Parent:IsA("Model") then
                    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.Parent.CFrame
                    task.wait(0.3)
                    fireproximitypromptv2(v, 1, true)
                    task.wait()
                    break
                end
            end
            task.wait()
            for _, q in pairs(Workspace:GetDescendants()) do
                if q.Name == "SystemBin" and q:FindFirstChild("Bowl") then --if bowlplace
                    for _, v in pairs(Workspace:GetDescendants()) do
                        if v.Parent:IsA("BasePart") and v:IsA("ProximityPrompt") and v.Parent.Parent.Name == "WoodenCounter" then
                            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.Parent.CFrame
                            task.wait(0.3)
                            fireproximitypromptv2(v, 1, true)
                            task.wait()
                            break
                        end
                    end
                    task.wait()
                    break
                end
            end
            task.wait(1)
            for _, q in pairs(Workspace:GetDescendants()) do
                if q.Name == "SystemBin" and q:FindFirstChild("Spaghetti N Eyeballs") then --finish prepare send
                    for _, v in pairs(Workspace:GetDescendants()) do
                        if v.Parent:IsA("BasePart") and v:IsA("ProximityPrompt") and v.Parent.Parent.Name == "WoodenCounter" then
                            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.Parent.CFrame
                            task.wait(0.3)
                            fireproximitypromptv2(v, 1, true)
                            task.wait()
                            break
                        end
                    end
                    task.wait()
                    break
                end
            end
            task.wait(1)
            for _, v in pairs(Workspace:GetDescendants()) do
                if v:IsA("ProximityPrompt") and v.Parent.Parent.Name == "TurnInFood" then
                    v.Parent.Parent.CanCollide = false
                    getgenv().Float = true
                    task.wait()
                    Tp(-2754.89501953125, 968.2463989257812, -4919.43212890625, 0.3)
                    fireproximitypromptv2(v, 1, true)
                    task.wait()
                    getgenv().Float = false
                    break
                end
            end 
        end
    else
        Notify("Error 01", "Press again")
    end
end)
B2C2.newButton("Full Auto Cook", "SinglePlayer", function()
    for _, v in pairs(workspace:GetDescendants()) do
        if v.Name == "Barrier" and v:IsA("Part") and isPlayerNear(v, 100) then
            v:Destroy()
        end
    end
    while player.PlayerGui.CookingUI.Timer.Visible do
        matches = {}
        Order270 = "nil"
        task.wait(0.1)
        for _, v in pairs(workspace:GetDescendants()) do
            if v.Name == "Orders" then
                if v:FindFirstChild("Ham Stew") then
                    Order270 = "Ham Stew"
                    table.insert(matches, Order270)
                elseif v:FindFirstChild("Chicken Soup") then
                    Order270 = "Chicken Soup"
                    table.insert(matches, Order270)
                elseif v:FindFirstChild("Spaghetti N Eyeballs") then
                    Order270 = "Spaghetti N Eyeballs"
                    table.insert(matches, Order270)
                end
            end
        end
        task.wait(1)
        if #matches > 0 then
            selectedIndex = math.random(1, #matches)
            selectedObject = matches[selectedIndex]
            print(#matches)
        else
            Notify("Error 01", "Press again")
        end
        if selectedObject == "Ham Stew" then
            if not CustomFirePropmt then
                for _, v in pairs(workspace:GetDescendants()) do --Ham
                    if v.Parent:IsA("BasePart") and v:IsA("ProximityPrompt") and v.Parent.Parent.Name == "Pot" then
                        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.Parent.CFrame
                        wait(0.3)
                        fireproximityprompt(v)
                        task.wait()
                        break
                    end
                end
                task.wait()
                for _, v in pairs(Workspace:GetDescendants()) do
                    if v.Parent:IsA("BasePart") and v:IsA("ProximityPrompt") and v.Parent.Parent.Name == "WoodenCounter" then
                        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.Parent.CFrame
                        wait(0.3)
                        fireproximityprompt(v)
                        task.wait()
                        break
                    end
                end
                task.wait()
                for _, v in pairs(Workspace:GetDescendants()) do
                    if v.Parent:IsA("BasePart") and v:IsA("ProximityPrompt") and v.Parent.Parent.Name == "Ham" and v.Parent.Parent:IsA("Model") then
                        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.Parent.CFrame
                        wait(0.3)
                        fireproximityprompt(v)
                        task.wait()
                        break
                    end
                end
                task.wait()
                for _, q in pairs(Workspace:GetDescendants()) do
                    if q.Name == "SystemBin" and q:FindFirstChild("Pot") then --if bowlplace
                        for _, v in pairs(Workspace:GetDescendants()) do
                            if v.Parent:IsA("BasePart") and v:IsA("ProximityPrompt") and v.Parent.Parent.Name == "WoodenCounter" then
                                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.Parent.CFrame
                                wait(0.3)
                                fireproximityprompt(v)
                                task.wait()
                                break
                            end
                        end
                        task.wait()
                        break
                    end
                end
                task.wait()
                for _, v in pairs(Workspace:GetDescendants()) do
                    if v:IsA("ProximityPrompt") and v.Parent.Parent.Name == "Sausage" and v.Parent.Parent:IsA("Model") then
                        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.Parent.CFrame
                        wait(0.3)
                        fireproximityprompt(v)
                        task.wait()
                        break
                    end
                end
                task.wait()
                for _, q in pairs(Workspace:GetDescendants()) do
                    if q.Name == "SystemBin" and q:FindFirstChild("Pot") then --if bowlplace
                        for _, v in pairs(Workspace:GetDescendants()) do
                            if v.Parent:IsA("BasePart") and v:IsA("ProximityPrompt") and v.Parent.Parent.Name == "WoodenCounter" then
                                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.Parent.CFrame
                                wait(0.3)
                                fireproximityprompt(v)
                                task.wait()
                                break
                            end
                        end
                        task.wait()
                        break
                    end
                end
                task.wait(1)
                for _, q in pairs(Workspace:GetDescendants()) do
                    if q.Name == "SystemBin" and q:FindFirstChild("Pot") then --boil
                        for _, v in pairs(Workspace:GetDescendants()) do
                            if v.Parent:IsA("BasePart") and v:IsA("ProximityPrompt") and v.Parent.Parent.Name == "WoodenCounter" then
                                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.Parent.CFrame
                                wait(0.3)
                                fireproximityprompt(v)
                                task.wait()
                                break
                            end
                        end
                        task.wait()
                        break
                    end
                end
                task.wait(1)
                for _, q in pairs(Workspace:GetDescendants()) do --boil2
                    if q.Name == "SystemBin" and q:FindFirstChild("Pot") then
                        for _, v in pairs(Workspace:GetDescendants()) do
                            if v.Parent:IsA("BasePart") and v:IsA("ProximityPrompt") and v.Parent.Parent.Name == "stove" then
                                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.Parent.CFrame
                                wait(0.3)
                                fireproximityprompt(v)
                                task.wait()
                                break
                            end
                        end
                        task.wait()
                        break
                    end
                end
                task.wait(10)
                for _, v in pairs(Workspace:GetDescendants()) do
                    if v.Parent:IsA("BasePart") and v:IsA("ProximityPrompt") and v.Parent.Parent.Name == "Bowl" then
                        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.Parent.CFrame
                        wait(0.3)
                        fireproximityprompt(v)
                        task.wait()
                        break
                    end
                end
                task.wait(1)
                for _, v in pairs(Workspace:GetDescendants()) do
                    if v.Parent:IsA("BasePart") and v:IsA("ProximityPrompt") and v.Parent.Parent.Name == "WoodenCounter" then
                        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.Parent.CFrame
                        wait(0.3)
                        fireproximityprompt(v)
                        task.wait()
                        break
                    end
                end
                task.wait()
                for _, q in pairs(Workspace:GetDescendants()) do
                    if q.Name == "SystemBin" and q:FindFirstChild("Pot") then
                        for _, v in pairs(Workspace:GetDescendants()) do
                            if v.Parent:IsA("BasePart") and v:IsA("ProximityPrompt") and v.Parent.Parent.Name == "stove" then
                                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.Parent.CFrame
                                wait(0.3)
                                fireproximityprompt(v)
                                task.wait()
                                break
                            end
                        end
                        task.wait()
                    break
                end
                end
                task.wait()
                for _, q in pairs(Workspace:GetDescendants()) do
                    if q.Name == "SystemBin" and q:FindFirstChild("Pot") then --if bowlplace
                        for _, v in pairs(Workspace:GetDescendants()) do
                            if v.Parent:IsA("BasePart") and v:IsA("ProximityPrompt") and v.Parent.Parent.Name == "WoodenCounter" then
                                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.Parent.CFrame
                                wait(0.3)
                                fireproximityprompt(v)
                                task.wait()
                                break
                            end
                        end
                        task.wait()
                        break
                    end
                end
                task.wait(1)
                for _, q in pairs(Workspace:GetDescendants()) do
                    if q.Name == "SystemBin" and q:FindFirstChild("Ham Stew") then --if bowlplace
                        for _, v in pairs(Workspace:GetDescendants()) do
                            if v.Parent:IsA("BasePart") and v:IsA("ProximityPrompt") and v.Parent.Parent.Name == "WoodenCounter" then
                                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.Parent.CFrame
                                wait(0.3)
                                fireproximityprompt(v)
                                task.wait()
                                break
                            end
                        end
                        task.wait()
                        break
                    end
                end
                task.wait(1)
                for _, v in pairs(Workspace:GetDescendants()) do
                    if v:IsA("ProximityPrompt") and v.Parent.Parent.Name == "TurnInFood" then
                        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.Parent.Parent.CFrame
                        wait(0.3)
                        fireproximityprompt(v)
                        task.wait()
                        break
                    end
                end
            else
                for _, v in pairs(workspace:GetDescendants()) do --Ham
                    if v.Parent:IsA("BasePart") and v:IsA("ProximityPrompt") and v.Parent.Parent.Name == "Pot" then
                        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.Parent.CFrame
                        task.wait(0.3)
                        fireproximitypromptv2(v, 1, true)
                        task.wait(0.1)
                        break
                    end
                end
                task.wait()
                for _, v in pairs(Workspace:GetDescendants()) do
                    if v.Parent:IsA("BasePart") and v:IsA("ProximityPrompt") and v.Parent.Parent.Name == "WoodenCounter" then
                        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.Parent.CFrame
                        task.wait(0.3)
                        fireproximitypromptv2(v, 1, true)
                        task.wait()
                        break
                    end
                end
                task.wait()
                for _, v in pairs(Workspace:GetDescendants()) do
                    if v.Parent:IsA("BasePart") and v:IsA("ProximityPrompt") and v.Parent.Parent.Name == "Ham" and v.Parent.Parent:IsA("Model") then
                        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.Parent.CFrame
                        task.wait(0.3)
                        fireproximitypromptv2(v, 1, true)
                        task.wait()
                        break
                    end
                end
                task.wait()
                for _, q in pairs(Workspace:GetDescendants()) do
                    if q.Name == "SystemBin" and q:FindFirstChild("Pot") then --if bowlplace
                        for _, v in pairs(Workspace:GetDescendants()) do
                            if v.Parent:IsA("BasePart") and v:IsA("ProximityPrompt") and v.Parent.Parent.Name == "WoodenCounter" then
                                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.Parent.CFrame
                                task.wait(0.3)
                                fireproximitypromptv2(v, 1, true)
                                task.wait()
                                break
                            end
                        end
                        task.wait()
                        break
                    end
                end
                task.wait()
                for _, v in pairs(Workspace:GetDescendants()) do
                    if v:IsA("ProximityPrompt") and v.Parent.Parent.Name == "Sausage" and v.Parent.Parent:IsA("Model") then
                        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.Parent.CFrame
                        task.wait(0.3)
                        fireproximitypromptv2(v, 1, true)
                        task.wait()
                        break
                    end
                end
                task.wait()
                for _, q in pairs(Workspace:GetDescendants()) do
                    if q.Name == "SystemBin" and q:FindFirstChild("Pot") then --if bowlplace
                        for _, v in pairs(Workspace:GetDescendants()) do
                            if v.Parent:IsA("BasePart") and v:IsA("ProximityPrompt") and v.Parent.Parent.Name == "WoodenCounter" then
                                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.Parent.CFrame
                                task.wait(0.3)
                                fireproximitypromptv2(v, 1, true)
                                task.wait()
                                break
                            end
                        end
                        task.wait()
                        break
                    end
                end
                task.wait(1)
                for _, q in pairs(Workspace:GetDescendants()) do
                    if q.Name == "SystemBin" and q:FindFirstChild("Pot") then --boil
                        for _, v in pairs(Workspace:GetDescendants()) do
                            if v.Parent:IsA("BasePart") and v:IsA("ProximityPrompt") and v.Parent.Parent.Name == "WoodenCounter" then
                                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.Parent.CFrame
                                task.wait(0.3)
                                fireproximitypromptv2(v, 1, true)
                                task.wait()
                                break
                            end
                        end
                        task.wait()
                        break
                    end
                end
                task.wait(1)
                for _, q in pairs(Workspace:GetDescendants()) do --boil2
                    if q.Name == "SystemBin" and q:FindFirstChild("Pot") then
                        for _, v in pairs(Workspace:GetDescendants()) do
                            if v.Parent:IsA("BasePart") and v:IsA("ProximityPrompt") and v.Parent.Parent.Name == "stove" then
                                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.Parent.CFrame
                                task.wait(0.3)
                                fireproximitypromptv2(v, 1, true)
                                task.wait()
                                break
                            end
                        end
                        task.wait()
                        break
                    end
                end
                task.wait(10)
                for _, v in pairs(Workspace:GetDescendants()) do
                    if v.Parent:IsA("BasePart") and v:IsA("ProximityPrompt") and v.Parent.Parent.Name == "Bowl" then
                        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.Parent.CFrame
                        task.wait(0.3)
                        fireproximitypromptv2(v, 1, true)
                        task.wait()
                        break
                    end
                end
                task.wait(1)
                for _, v in pairs(Workspace:GetDescendants()) do
                    if v.Parent:IsA("BasePart") and v:IsA("ProximityPrompt") and v.Parent.Parent.Name == "WoodenCounter" then
                        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.Parent.CFrame
                        task.wait(0.3)
                        fireproximitypromptv2(v, 1, true)
                        task.wait()
                        break
                    end
                end
                task.wait()
                for _, q in pairs(Workspace:GetDescendants()) do
                    if q.Name == "SystemBin" and q:FindFirstChild("Pot") then
                        for _, v in pairs(Workspace:GetDescendants()) do
                            if v.Parent:IsA("BasePart") and v:IsA("ProximityPrompt") and v.Parent.Parent.Name == "stove" then
                                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.Parent.CFrame
                                task.wait(0.3)
                                fireproximitypromptv2(v, 1, true)
                                task.wait()
                                break
                            end
                        end
                        task.wait()
                    break
                end
                end
                task.wait()
                for _, q in pairs(Workspace:GetDescendants()) do
                    if q.Name == "SystemBin" and q:FindFirstChild("Pot") then --if bowlplace
                        for _, v in pairs(Workspace:GetDescendants()) do
                            if v.Parent:IsA("BasePart") and v:IsA("ProximityPrompt") and v.Parent.Parent.Name == "WoodenCounter" then
                                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.Parent.CFrame
                                task.wait(0.3)
                                fireproximitypromptv2(v, 1, true)
                                task.wait()
                                break
                            end
                        end
                        task.wait()
                        break
                    end
                end
                task.wait(1)
                for _, q in pairs(Workspace:GetDescendants()) do
                    if q.Name == "SystemBin" and q:FindFirstChild("Ham Stew") then --if bowlplace
                        for _, v in pairs(Workspace:GetDescendants()) do
                            if v.Parent:IsA("BasePart") and v:IsA("ProximityPrompt") and v.Parent.Parent.Name == "WoodenCounter" then
                                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.Parent.CFrame
                                task.wait(0.3)
                                fireproximitypromptv2(v, 1, true)
                                task.wait()
                                break
                            end
                        end
                        task.wait()
                        break
                    end
                end
                task.wait(1)
                for _, v in pairs(Workspace:GetDescendants()) do
                    if v:IsA("ProximityPrompt") and v.Parent.Parent.Name == "TurnInFood" then
                        v.Parent.Parent.CanCollide = false
                        getgenv().Float = true
                        task.wait()
                        Tp(-2754.89501953125, 968.2463989257812, -4919.43212890625, 0.3)
                        fireproximitypromptv2(v, 1, true)
                        task.wait()
                        getgenv().Float = false
                        break
                    end
                end
            end
        elseif selectedObject == "Chicken Soup" then
            if not CustomFirePropmt then
                for _, v in pairs(Workspace:GetDescendants()) do --auto KFC
                    if v.Parent:IsA("BasePart") and v:IsA("ProximityPrompt") and v.Parent.Parent.Name == "Pot" then
                        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.Parent.CFrame
                        wait(0.3)
                        fireproximityprompt(v)
                        task.wait()
                        break
                    end
                end
                task.wait()
                for _, v in pairs(Workspace:GetDescendants()) do
                    if v.Parent:IsA("BasePart") and v:IsA("ProximityPrompt") and v.Parent.Parent.Name == "WoodenCounter" then
                        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.Parent.CFrame
                        wait(0.3)
                        fireproximityprompt(v)
                        task.wait()
                        break
                    end
                end
                task.wait()
                for _, v in pairs(Workspace:GetDescendants()) do
                    if v.Parent:IsA("BasePart") and v:IsA("ProximityPrompt") and v.Parent.Parent.Name == "Chicken" and v.Parent.Parent:IsA("Model") then
                        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.Parent.CFrame
                        wait(0.3)
                        fireproximityprompt(v)
                        task.wait()
                        break
                    end
                end
                task.wait()
                for _, q in pairs(Workspace:GetDescendants()) do
                    if q.Name == "SystemBin" and q:FindFirstChild("Pot") then --if bowlplace
                        for _, v in pairs(Workspace:GetDescendants()) do
                            if v.Parent:IsA("BasePart") and v:IsA("ProximityPrompt") and v.Parent.Parent.Name == "WoodenCounter" then
                                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.Parent.CFrame
                                wait(0.3)
                                fireproximityprompt(v)
                                task.wait()
                                break
                            end
                        end
                        task.wait()
                        break
                    end
                end
                task.wait()
                for _, v in pairs(Workspace:GetDescendants()) do
                    if v.Parent:IsA("BasePart") and v:IsA("ProximityPrompt") and v.Parent.Parent.Name == "Wrapped Meat" and v.Parent.Parent:IsA("Model") then
                        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.Parent.CFrame
                        wait(0.3)
                        fireproximityprompt(v)
                        task.wait()
                        break
                    end
                end
                task.wait()
                for _, q in pairs(Workspace:GetDescendants()) do
                    if q.Name == "SystemBin" and q:FindFirstChild("Pot") then --if bowlplace
                        for _, v in pairs(Workspace:GetDescendants()) do
                            if v.Parent:IsA("BasePart") and v:IsA("ProximityPrompt") and v.Parent.Parent.Name == "WoodenCounter" then
                                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.Parent.CFrame
                                wait(0.3)
                                fireproximityprompt(v)
                                task.wait()
                                break
                            end
                        end
                        task.wait()
                        break
                    end
                end
                task.wait()
                for _, v in pairs(Workspace:GetDescendants()) do
                    if v.Parent:IsA("BasePart") and v:IsA("ProximityPrompt") and v.Parent.Parent.Name == "Cheese" and v.Parent.Parent:IsA("Model") then
                        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.Parent.CFrame
                        wait(0.3)
                        fireproximityprompt(v)
                        task.wait()
                        break
                    end
                end
                task.wait()
                for _, q in pairs(Workspace:GetDescendants()) do
                    if q.Name == "SystemBin" and q:FindFirstChild("Pot") then --if bowlplace
                        for _, v in pairs(Workspace:GetDescendants()) do
                            if v.Parent:IsA("BasePart") and v:IsA("ProximityPrompt") and v.Parent.Parent.Name == "WoodenCounter" then
                                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.Parent.CFrame
                                wait(0.3)
                                fireproximityprompt(v)
                                task.wait()
                                break
                            end
                        end
                        task.wait()
                        break
                    end
                end
                task.wait()
                for _, q in pairs(Workspace:GetDescendants()) do
                    if q.Name == "SystemBin" and q:FindFirstChild("Pot") then --if bowlplace
                        for _, v in pairs(Workspace:GetDescendants()) do
                            if v.Parent:IsA("BasePart") and v:IsA("ProximityPrompt") and v.Parent.Parent.Name == "WoodenCounter" then
                                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.Parent.CFrame
                                wait(0.3)
                                fireproximityprompt(v)
                                task.wait()
                                break
                            end
                        end
                        task.wait()
                        break
                    end
                end
                task.wait()
                for _, q in pairs(Workspace:GetDescendants()) do --boil2
                    if q.Name == "SystemBin" and q:FindFirstChild("Pot") then
                        for _, v in pairs(Workspace:GetDescendants()) do
                            if v.Parent:IsA("BasePart") and v:IsA("ProximityPrompt") and v.Parent.Parent.Name == "stove" then
                                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.Parent.CFrame
                                wait(0.3)
                                fireproximityprompt(v)
                                task.wait()
                                break
                            end
                        end
                        task.wait()
                        break
                    end
                end
                task.wait(10)
                for _, v in pairs(Workspace:GetDescendants()) do
                    if v.Parent:IsA("BasePart") and v:IsA("ProximityPrompt") and v.Parent.Parent.Name == "Bowl" then
                        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.Parent.CFrame
                        wait(0.3)
                        fireproximityprompt(v)
                        task.wait()
                        break
                    end
                end
                task.wait(1)
                for _, v in pairs(Workspace:GetDescendants()) do
                    if v.Parent:IsA("BasePart") and v:IsA("ProximityPrompt") and v.Parent.Parent.Name == "WoodenCounter" then
                        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.Parent.CFrame
                        wait(0.3)
                        fireproximityprompt(v)
                        task.wait()
                        break
                    end
                end
                task.wait()
                for _, q in pairs(Workspace:GetDescendants()) do
                    if q.Name == "SystemBin" and q:FindFirstChild("Pot") then
                        for _, v in pairs(Workspace:GetDescendants()) do
                            if v.Parent:IsA("BasePart") and v:IsA("ProximityPrompt") and v.Parent.Parent.Name == "stove" then
                                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.Parent.CFrame
                                wait(0.3)
                                fireproximityprompt(v)
                                task.wait()
                                break
                            end
                        end
                        task.wait()
                        break
                    end
                end
                task.wait()
                for _, q in pairs(Workspace:GetDescendants()) do
                    if q.Name == "SystemBin" and q:FindFirstChild("Pot") then --if bowlplace
                        for _, v in pairs(Workspace:GetDescendants()) do
                            if v.Parent:IsA("BasePart") and v:IsA("ProximityPrompt") and v.Parent.Parent.Name == "WoodenCounter" then
                                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.Parent.CFrame
                                wait(0.3)
                                fireproximityprompt(v)
                                task.wait()
                                break
                            end
                        end
                        task.wait()
                        break
                    end
                end
                task.wait(1)
                for _, q in pairs(Workspace:GetDescendants()) do
                    if q.Name == "SystemBin" and q:FindFirstChild("Chicken Soup") then --if bowlplace
                        for _, v in pairs(Workspace:GetDescendants()) do
                            if v.Parent:IsA("BasePart") and v:IsA("ProximityPrompt") and v.Parent.Parent.Name == "WoodenCounter" then
                                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.Parent.CFrame
                                wait(0.3)
                                fireproximityprompt(v)
                                task.wait()
                                break
                            end
                        end
                        task.wait()
                        break
                    end
                end
                task.wait(1)
                for _, v in pairs(Workspace:GetDescendants()) do
                    if v:IsA("ProximityPrompt") and v.Parent.Parent.Name == "TurnInFood" then
                        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.Parent.Parent.CFrame
                        wait(0.3)
                        fireproximityprompt(v)
                        task.wait()
                        break
                    end
                end
            else
                for _, v in pairs(Workspace:GetDescendants()) do --auto KFC
                    if v.Parent:IsA("BasePart") and v:IsA("ProximityPrompt") and v.Parent.Parent.Name == "Pot" then
                        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.Parent.CFrame
                        task.wait(0.3)
                        fireproximitypromptv2(v, 1, true)
                        task.wait()
                        break
                    end
                end
                task.wait()
                for _, v in pairs(Workspace:GetDescendants()) do
                    if v.Parent:IsA("BasePart") and v:IsA("ProximityPrompt") and v.Parent.Parent.Name == "WoodenCounter" then
                        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.Parent.CFrame
                        task.wait(0.3)
                        fireproximitypromptv2(v, 1, true)
                        task.wait()
                        break
                    end
                end
                task.wait()
                for _, v in pairs(Workspace:GetDescendants()) do
                    if v.Parent:IsA("BasePart") and v:IsA("ProximityPrompt") and v.Parent.Parent.Name == "Chicken" and v.Parent.Parent:IsA("Model") then
                        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.Parent.CFrame
                        task.wait(0.3)
                        fireproximitypromptv2(v, 1, true)
                        task.wait()
                        break
                    end
                end
                task.wait()
                for _, q in pairs(Workspace:GetDescendants()) do
                    if q.Name == "SystemBin" and q:FindFirstChild("Pot") then --if bowlplace
                        for _, v in pairs(Workspace:GetDescendants()) do
                            if v.Parent:IsA("BasePart") and v:IsA("ProximityPrompt") and v.Parent.Parent.Name == "WoodenCounter" then
                                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.Parent.CFrame
                                task.wait(0.3)
                                fireproximitypromptv2(v, 1, true)
                                task.wait()
                                break
                            end
                        end
                        task.wait()
                        break
                    end
                end
                task.wait()
                for _, v in pairs(Workspace:GetDescendants()) do
                    if v.Parent:IsA("BasePart") and v:IsA("ProximityPrompt") and v.Parent.Parent.Name == "Wrapped Meat" and v.Parent.Parent:IsA("Model") then
                        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.Parent.CFrame
                        task.wait(0.3)
                        fireproximitypromptv2(v, 1, true)
                        task.wait()
                        break
                    end
                end
                task.wait()
                for _, q in pairs(Workspace:GetDescendants()) do
                    if q.Name == "SystemBin" and q:FindFirstChild("Pot") then --if bowlplace
                        for _, v in pairs(Workspace:GetDescendants()) do
                            if v.Parent:IsA("BasePart") and v:IsA("ProximityPrompt") and v.Parent.Parent.Name == "WoodenCounter" then
                                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.Parent.CFrame
                                task.wait(0.3)
                                fireproximitypromptv2(v, 1, true)
                                task.wait()
                                break
                            end
                        end
                        task.wait()
                        break
                    end
                end
                task.wait()
                for _, v in pairs(Workspace:GetDescendants()) do
                    if v.Parent:IsA("BasePart") and v:IsA("ProximityPrompt") and v.Parent.Parent.Name == "Cheese" and v.Parent.Parent:IsA("Model") then
                        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.Parent.CFrame
                        task.wait(0.3)
                        fireproximitypromptv2(v, 1, true)
                        task.wait()
                        break
                    end
                end
                task.wait()
                for _, q in pairs(Workspace:GetDescendants()) do
                    if q.Name == "SystemBin" and q:FindFirstChild("Pot") then --if bowlplace
                        for _, v in pairs(Workspace:GetDescendants()) do
                            if v.Parent:IsA("BasePart") and v:IsA("ProximityPrompt") and v.Parent.Parent.Name == "WoodenCounter" then
                                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.Parent.CFrame
                                task.wait(0.3)
                                fireproximitypromptv2(v, 1, true)
                                task.wait()
                                break
                            end
                        end
                        task.wait()
                        break
                    end
                end
                task.wait()
                for _, q in pairs(Workspace:GetDescendants()) do
                    if q.Name == "SystemBin" and q:FindFirstChild("Pot") then --if bowlplace
                        for _, v in pairs(Workspace:GetDescendants()) do
                            if v.Parent:IsA("BasePart") and v:IsA("ProximityPrompt") and v.Parent.Parent.Name == "WoodenCounter" then
                                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.Parent.CFrame
                                task.wait(0.3)
                                fireproximitypromptv2(v, 1, true)
                                task.wait()
                                break
                            end
                        end
                        task.wait()
                        break
                    end
                end
                task.wait()
                for _, q in pairs(Workspace:GetDescendants()) do --boil2
                    if q.Name == "SystemBin" and q:FindFirstChild("Pot") then
                        for _, v in pairs(Workspace:GetDescendants()) do
                            if v.Parent:IsA("BasePart") and v:IsA("ProximityPrompt") and v.Parent.Parent.Name == "stove" then
                                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.Parent.CFrame
                                task.wait(0.3)
                                fireproximitypromptv2(v, 1, true)
                                task.wait()
                                break
                            end
                        end
                        task.wait()
                        break
                    end
                end
                task.wait(10)
                for _, v in pairs(Workspace:GetDescendants()) do
                    if v.Parent:IsA("BasePart") and v:IsA("ProximityPrompt") and v.Parent.Parent.Name == "Bowl" then
                        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.Parent.CFrame
                        task.wait(0.3)
                        fireproximitypromptv2(v, 1, true)
                        task.wait()
                        break
                    end
                end
                task.wait(1)
                for _, v in pairs(Workspace:GetDescendants()) do
                    if v.Parent:IsA("BasePart") and v:IsA("ProximityPrompt") and v.Parent.Parent.Name == "WoodenCounter" then
                        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.Parent.CFrame
                        task.wait(0.3)
                        fireproximitypromptv2(v, 1, true)
                        task.wait()
                        break
                    end
                end
                task.wait()
                for _, q in pairs(Workspace:GetDescendants()) do
                    if q.Name == "SystemBin" and q:FindFirstChild("Pot") then
                        for _, v in pairs(Workspace:GetDescendants()) do
                            if v.Parent:IsA("BasePart") and v:IsA("ProximityPrompt") and v.Parent.Parent.Name == "stove" then
                                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.Parent.CFrame
                                task.wait(0.3)
                                fireproximitypromptv2(v, 1, true)
                                task.wait()
                                break
                            end
                        end
                        task.wait()
                        break
                    end
                end
                task.wait()
                for _, q in pairs(Workspace:GetDescendants()) do
                    if q.Name == "SystemBin" and q:FindFirstChild("Pot") then --if bowlplace
                        for _, v in pairs(Workspace:GetDescendants()) do
                            if v.Parent:IsA("BasePart") and v:IsA("ProximityPrompt") and v.Parent.Parent.Name == "WoodenCounter" then
                                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.Parent.CFrame
                                task.wait(0.3)
                                fireproximitypromptv2(v, 1, true)
                                task.wait()
                                break
                            end
                        end
                        task.wait()
                        break
                    end
                end
                task.wait(1)
                for _, q in pairs(Workspace:GetDescendants()) do
                    if q.Name == "SystemBin" and q:FindFirstChild("Chicken Soup") then --if bowlplace
                        for _, v in pairs(Workspace:GetDescendants()) do
                            if v.Parent:IsA("BasePart") and v:IsA("ProximityPrompt") and v.Parent.Parent.Name == "WoodenCounter" then
                                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.Parent.CFrame
                                task.wait(0.3)
                                fireproximitypromptv2(v, 1, true)
                                task.wait()
                                break
                            end
                        end
                        task.wait()
                        break
                    end
                end
                task.wait(1)
                for _, v in pairs(Workspace:GetDescendants()) do
                    if v:IsA("ProximityPrompt") and v.Parent.Parent.Name == "TurnInFood" then
                        v.Parent.Parent.CanCollide = false
                        getgenv().Float = true
                        task.wait()
                        Tp(-2754.89501953125, 968.2463989257812, -4919.43212890625, 0.3)
                        fireproximitypromptv2(v, 1, true)
                        task.wait()
                        getgenv().Float = false
                        break
                    end
                end
            end
        elseif selectedObject == "Spaghetti N Eyeballs" then
            if not CustomFirePropmt then
                for _, v in pairs(Workspace:GetDescendants()) do -- eyeball
                    if v.Parent:IsA("BasePart") and v:IsA("ProximityPrompt") and v.Parent.Parent.Name == "Bowl" then
                        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.Parent.CFrame
                        wait(0.3)
                        fireproximityprompt(v)
                        task.wait()
                        break
                    end
                end
                for _, v in pairs(Workspace:GetDescendants()) do
                    if v.Parent:IsA("BasePart") and v:IsA("ProximityPrompt") and v.Parent.Parent.Name == "WoodenCounter" then
                        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.Parent.CFrame
                        wait(0.3)
                        fireproximityprompt(v)
                        task.wait()
                        break
                    end
                end
                for _, v in pairs(Workspace:GetDescendants()) do
                    if v.Parent:IsA("BasePart") and v:IsA("ProximityPrompt") and v.Parent.Parent.Name == "Eyeball" and v.Parent.Parent:IsA("Model")
                     then
                        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.Parent.CFrame
                        wait(0.3)
                        fireproximityprompt(v)
                        task.wait()
                        break
                    end
                end
                task.wait()
                for _, q in pairs(Workspace:GetDescendants()) do
                    if q.Name == "SystemBin" and q:FindFirstChild("Bowl") then --if bowlplace
                        for _, v in pairs(Workspace:GetDescendants()) do
                            if v.Parent:IsA("BasePart") and v:IsA("ProximityPrompt") and v.Parent.Parent.Name == "WoodenCounter" then
                                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.Parent.CFrame
                                wait(0.3)
                                fireproximityprompt(v)
                                task.wait()
                                break
                            end
                        end
                        task.wait()
                        break
                    end
                end
                for _, v in pairs(Workspace:GetDescendants()) do
                    if v.Parent:IsA("BasePart") and v:IsA("ProximityPrompt") and v.Parent.Parent.Name == "Spaghetti" and v.Parent.Parent:IsA("Model") then
                        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.Parent.CFrame
                        wait(0.3)
                        fireproximityprompt(v)
                        task.wait()
                        break
                    end
                end
                task.wait()
                for _, q in pairs(Workspace:GetDescendants()) do
                    if q.Name == "SystemBin" and q:FindFirstChild("Bowl") then --if bowlplace
                        for _, v in pairs(Workspace:GetDescendants()) do
                            if v.Parent:IsA("BasePart") and v:IsA("ProximityPrompt") and v.Parent.Parent.Name == "WoodenCounter" then
                                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.Parent.CFrame
                                wait(0.3)
                                fireproximityprompt(v)
                                task.wait()
                                break
                            end
                        end
                        task.wait()
                        break
                    end
                end
                task.wait(1)
                for _, q in pairs(Workspace:GetDescendants()) do
                    if q.Name == "SystemBin" and q:FindFirstChild("Spaghetti N Eyeballs") then --finish prepare send
                        for _, v in pairs(Workspace:GetDescendants()) do
                            if v.Parent:IsA("BasePart") and v:IsA("ProximityPrompt") and v.Parent.Parent.Name == "WoodenCounter" then
                                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.Parent.CFrame
                                wait(0.3)
                                fireproximityprompt(v)
                                task.wait()
                                break
                            end
                        end
                        task.wait()
                        break
                    end
                end
                task.wait(1)
                for _, v in pairs(Workspace:GetDescendants()) do
                    if v:IsA("ProximityPrompt") and v.Parent.Parent.Name == "TurnInFood" then
                        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.Parent.Parent.CFrame
                        wait(0.3)
                        fireproximityprompt(v)
                        task.wait()
                        break
                    end
                end                    
            else
                for _, v in pairs(Workspace:GetDescendants()) do -- eyeball
                    if v.Parent:IsA("BasePart") and v:IsA("ProximityPrompt") and v.Parent.Parent.Name == "Bowl" then
                        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.Parent.CFrame
                        task.wait(0.3)
                        fireproximitypromptv2(v, 1, true)
                        task.wait()
                        break
                    end
                end
                for _, v in pairs(Workspace:GetDescendants()) do
                    if v.Parent:IsA("BasePart") and v:IsA("ProximityPrompt") and v.Parent.Parent.Name == "WoodenCounter" then
                        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.Parent.CFrame
                        task.wait(0.3)
                        fireproximitypromptv2(v, 1, true)
                        task.wait()
                        break
                    end
                end
                for _, v in pairs(Workspace:GetDescendants()) do
                    if v.Parent:IsA("BasePart") and v:IsA("ProximityPrompt") and v.Parent.Parent.Name == "Eyeball" and v.Parent.Parent:IsA("Model")
                     then
                        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.Parent.CFrame
                        task.wait(0.3)
                        fireproximitypromptv2(v, 1, true)
                        task.wait()
                        break
                    end
                end
                task.wait()
                for _, q in pairs(Workspace:GetDescendants()) do
                    if q.Name == "SystemBin" and q:FindFirstChild("Bowl") then --if bowlplace
                        for _, v in pairs(Workspace:GetDescendants()) do
                            if v.Parent:IsA("BasePart") and v:IsA("ProximityPrompt") and v.Parent.Parent.Name == "WoodenCounter" then
                                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.Parent.CFrame
                                task.wait(0.3)
                                fireproximitypromptv2(v, 1, true)
                                task.wait()
                                break
                            end
                        end
                        task.wait()
                        break
                    end
                end
                for _, v in pairs(Workspace:GetDescendants()) do
                    if v.Parent:IsA("BasePart") and v:IsA("ProximityPrompt") and v.Parent.Parent.Name == "Spaghetti" and v.Parent.Parent:IsA("Model") then
                        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.Parent.CFrame
                        task.wait(0.3)
                        fireproximitypromptv2(v, 1, true)
                        task.wait()
                        break
                    end
                end
                task.wait()
                for _, q in pairs(Workspace:GetDescendants()) do
                    if q.Name == "SystemBin" and q:FindFirstChild("Bowl") then --if bowlplace
                        for _, v in pairs(Workspace:GetDescendants()) do
                            if v.Parent:IsA("BasePart") and v:IsA("ProximityPrompt") and v.Parent.Parent.Name == "WoodenCounter" then
                                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.Parent.CFrame
                                task.wait(0.3)
                                fireproximitypromptv2(v, 1, true)
                                task.wait()
                                break
                            end
                        end
                        task.wait()
                        break
                    end
                end
                task.wait(1)
                for _, q in pairs(Workspace:GetDescendants()) do
                    if q.Name == "SystemBin" and q:FindFirstChild("Spaghetti N Eyeballs") then --finish prepare send
                        for _, v in pairs(Workspace:GetDescendants()) do
                            if v.Parent:IsA("BasePart") and v:IsA("ProximityPrompt") and v.Parent.Parent.Name == "WoodenCounter" then
                                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.Parent.CFrame
                                task.wait(0.3)
                                fireproximitypromptv2(v, 1, true)
                                task.wait()
                                break
                            end
                        end
                        task.wait()
                        break
                    end
                end
                task.wait(1)
                for _, v in pairs(Workspace:GetDescendants()) do
                    if v:IsA("ProximityPrompt") and v.Parent.Parent.Name == "TurnInFood" then
                        v.Parent.Parent.CanCollide = false
                        getgenv().Float = true
                        task.wait()
                        Tp(-2754.89501953125, 968.2463989257812, -4919.43212890625, 0.3)
                        fireproximitypromptv2(v, 1, true)
                        task.wait()
                        getgenv().Float = false
                        break
                    end
                end 
            end
        else
            Notify("Error 01", "Press again")
        end
        task.wait(0.967)
    end
end)
B2C2.newButton("Auto Run", "Press after cutscene", function()
    
end)
B2C2.newLabel("Cursed Zone")
B2C2.newButton("Auto Win", "Cursed Zone 1", function()
    TweenBIGO(1, -4250.71, 613.7, -968.13)
end)
B2C2.newButton("Teleport To Cursed Zone 2", "", function()
    TweenBIGO(1, -4079.71, 613.7, -968.13)
end)
B2C2.newButton("Reveal Match Puzzle", "Not recommanded", function()
    for i,v in pairs(game.Workspace:GetDescendants()) do
        if v.Name == "GAMESTART" then 
            pcall(function()
                if v.ClassName == "Part" or v.ClassName == "MeshPart" then
                    local part = Instance.new("Part",workspace:FindFirstChildWhichIsA('Folder'))
                    part.Name = "{x"..tostring(math.random(500,1000)).."x}"
                    part.Anchored = true
                    part.Size = v.Size
                    part.CanCollide = false
                    part.Transparency = 0.9
                    part.CFrame = v.CFrame
                end
            end)
            v:Destroy()
        end 
    end
    for i = 1, math.huge do
        wait(0.6)
    
        if not isPlayerNearPosition(player, Vector3.new(-4079.71, 613.7, -968.13), 1000) then
            break
        end
    
        local currentBases = findNearestBase()
    
        if currentBases then
            local baseTables = {
                Part1 = currentBases:FindFirstChild("Part1"),
                Part2 = currentBases:FindFirstChild("Part2"),
                Select = currentBases:FindFirstChild("Select")
            }
    
            local stateTables = {
                IsOnPart1 = false,
                IsOnPart2 = false
            }
    
            local selectButton = baseTables.Select
            local part1 = baseTables.Part1
            local part2 = baseTables.Part2
    
            local function findTable(table, select)
                for _, v in ipairs(table) do
                    if v == select then
                        return v
                    end
                end
                return false
            end
    
            if not findTable(listButtons, selectButton) then
                for _, v in ipairs(currentBases.Parent:GetChildren()) do
                    if v.Name == "Buttons" then
                        local button = v
                        button:GetPropertyChangedSignal("BrickColor"):Connect(function()
                            if button.BrickColor == BrickColor.new("Really red") then
                                resetThings()
                            end
                        end)
                    end
                end
    
                selectButton:GetPropertyChangedSignal("Playing"):Connect(function()
                    if selectButton.Playing then
                        for _, v in ipairs(currentBases.Parent:GetChildren()) do
                            if v.Name == "Buttons" then
                                local buttons = v
                                if buttons.BrickColor == BrickColor.new("Institutional white") then
                                    if buttons:FindFirstChild("PUZZLEREVEAL") then
                                        local pathTo = buttons.PUZZLEREVEAL.Frame.TextLabel
                                        if pathTo then
                                            pathTo.Text = pathTo.Text .. " - [" .. tostring(interfaceTables.SendCount) .. "]"
                                        end
                                    else
                                        createBillBoardGui(buttons, "[" .. tostring(interfaceTables.SendCount) .. "]")
                                    end
    
                                    interfaceCount("Add")
                                end
                            end
                        end
                    end
                end)
    
                selectButton:GetPropertyChangedSignal("TimePosition"):Connect(function()
                    for _, v in ipairs(currentBases.Parent:GetChildren()) do
                        if v.Name == "Buttons" then
                            local buttons = v
                            if buttons.BrickColor == BrickColor.new("Institutional white") then
                                if buttons:FindFirstChild("PUZZLEREVEAL") then
                                    local pathTo = buttons.PUZZLEREVEAL.Frame.TextLabel
                                    if pathTo then
                                        pathTo.Text = pathTo.Text .. " - [" .. tostring(interfaceTables.SendCount) .. "]"
                                    end
                                else
                                    createBillBoardGui(buttons, "[" .. tostring(interfaceTables.SendCount) .. "]")
                                end
    
                                interfaceCount("Add")
                            end
                        end
                    end
                end)
    
                table.insert(listButtons, selectButton)
            end
    
            part1:GetPropertyChangedSignal("BrickColor"):Connect(function()
                pcall(function()
                    if part1.BrickColor == BrickColor.new("Medium stone grey") then
                        if not stateTables.IsOnPart1 then
                            stateTables.IsOnPart1 = true
                            resetThings()
                        end
                    end
                end)
            end)
    
            part2:GetPropertyChangedSignal("BrickColor"):Connect(function()
                pcall(function()
                    if part2.BrickColor == BrickColor.new("Medium stone grey") then
                        if not stateTables.IsOnPart2 then
                            stateTables.IsOnPart2 = true
                            resetThings()
                        end
                    end
                end)
            end)
    
            local packetEvent = ReplicatedStorage.Packet.Event
            packetEvent.OnClientEvent:Connect(onLeftPuzzle)
        end
    end
end)
B2C2.newButton("Remove Monster", "Singleplayer | Or tell your teamate not to go to 2nd floor", function()
    for i, v in pairs(workspace:GetDescendants()) do
        if v.Parent:IsA("BasePart") and v.Parent.Name == "GAMESTART" then
            v:Destroy()
        end
    end
end)
local HideSpot = nil
B2C2.newDropdown("Hide Spot", "Select one of these options!", {"1", "2", "3"}, function(Value)
    HideSpot = Value
end)
B2C2.newButton("Hide", "", function()
    if HideSpot == "1" then
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-4066.81,630.67,-985.54)
    elseif HideSpot == "2" then
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-4053.62,666.31,-951.76)
    elseif HideSpot == "3" then
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-4088.17,743.82,-959.96)
    end
end)
B2C2.newLabel("Kid")
B2C2.newButton("Set Game Files", "Press this first | Press it once", function()
    for i,v in pairs(workspace:GetDescendants()) do
        if v.Name == "SquidGames" then
            v:Destroy()
        end
    end
end)
B2C2.newButton("Auto Find Kid", "Press after cutscene", function()
    for i,v in pairs(workspace:GetDescendants()) do
        if v:IsA("BasePart") and v.Name == "IndicatorPic" then
            game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = v.CFrame
            task.wait()
            break
        end
    end
    task.wait()
    char.HumanoidRootPart.CFrame = CFrame.new(-4334.81299, 690.94397, -2363.2771, 0, 0, 1, 0, 1, -0, -1, 0, 0)
end)
B2C2.newButton("Anti Mother", "", function()
    function TeleportPlayer()
        motherPart = nil

        while isPlayerNearPosition(game.Players.LocalPlayer, Vector3.new(-4334.81299, 690.94397, -2363.2771), 3000) do
            if not isPlayerNearPosition(game.Players.LocalPlayer, Vector3.new(-4334.81299, 690.94397, -2363.2771), 3000) then
                break
            end
            for _, part in ipairs(workspace:GetDescendants()) do
                if part.Name == "HumanoidRootPart" and part.Parent.Name == "Mother" then
                    motherPart = part
                    break
                end
            end

            if motherPart and char and char:FindFirstChild("HumanoidRootPart") then
                playerPosition = char.HumanoidRootPart.Position
                motherPosition = motherPart.Position
                
                if (playerPosition - motherPosition).Magnitude <= 100 then
                    char.HumanoidRootPart.CFrame = CFrame.new(-4334.81299, 690.94397, -2363.2771, 0, 0, 1, 0, 1, -0, -1, 0, 0)
                end
            end

            wait(1)
        end
    end

    TeleportPlayer()
end)
B2C2.newButton("Teleport To Gate", "", function()
    for i,v in pairs(workspace:GetDescendants()) do
        if v:IsA("BasePart") and v.Name == "Formation" then
           game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = v.CFrame
           task.wait()
           break
        end
    end
end)
B2C2.newButton("Auto Get Notes", "Look Down", function()
    if not CustomFirePropmt then
        getgenv().Float = false
        for i, v in pairs(workspace:GetDescendants()) do
            if v:IsA("ProximityPrompt") and v.Parent:IsA("BasePart") and v.Parent.Name == "Note" then
                game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = v.Parent.CFrame
                task.wait(0.3)
                fireproximityprompt(v)
            end
        end
    else
        getgenv().Float = true
        for _,v in pairs(game.Players.LocalPlayer.Character:GetDescendants()) do
            if v:IsA('BasePart') and v.CanCollide and v.Name ~= floatName then
                v.CanCollide = false
            end
        end
        task.wait()
        for i, v in pairs(workspace:GetDescendants()) do
            if v:IsA("ProximityPrompt") and v.Parent:IsA("BasePart") and v.Parent.Name == "Note" then
                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(v.Parent.Position.X, v.Parent.Position.Y + 3, v.Parent.Position.Z)
                task.wait(0.3)
                fireproximitypromptv2(v, 1, true)
            end
        end
        task.wait()
        getgenv().Float = false
        for _,v in pairs(game.Players.LocalPlayer.Character:GetDescendants()) do
            if v:IsA('BasePart') and v.CanCollide and v.Name ~= floatName then
                v.CanCollide = true
            end
        end
    end
end)
B2C2.newLabel("Nagisa")
B2C2.newToggle("Anti Nagisa Laser", "", false, function(Value)
    if Value then
        if LASEROFNAGISA then

        else
            for _, v in pairs(workspace:GetDescendants()) do
                if v.Name == "POISON" then
                    LASEROFNAGISA = v
                end
            end
        end
        if BALLGIVER then

        else
            for i, v in pairs(workspace:GetDescendants()) do
                if v:IsA("ProximityPrompt") and v.Parent:IsA("BasePart") and v.Parent.Parent.Name == "BallGiver" then
                    BALLGIVER = v
                end
            end
        end

        while Value do
            if char and char:FindFirstChild("HumanoidRootPart") then
                if LASEROFNAGISA and LASEROFNAGISA.Transparency == 0.5 then
                    Tp(1982.58, 100, -4780.12, nil)
                end
            end
        
            task.wait(0.05)
        end
    else

    end
end)
B2C2.newToggle("Auto Get Cannon Balls", "", false, function(Value)
    if not CustomFirePropmt then
        if Value then
            for i, v in pairs(workspace:GetDescendants()) do
                if v:IsA("ProximityPrompt") and v.Parent:IsA("BasePart") and v.Parent.Parent.Name == "BallGiver" then
                    BALLGIVER = v
                end
            end
            if LASEROFNAGISA then

            else
                for _, v in pairs(workspace:GetDescendants()) do
                    if v.Name == "POISON" then
                        LASEROFNAGISA = v
                    end
                end
            end
            while Value do
                if game.Players.LocalPlayer.PlayerGui.BossFight.Ammo.Text == "0" and LASEROFNAGISA.Transparency ~= 0.5 then
                    char.HumanoidRootPart.CFrame = BALLGIVER.Parent.CFrame
                    task.wait(0.3)
                    fireproximityprompt(BALLGIVER)
                    fireproximityprompt(BALLGIVER)
                    fireproximityprompt(BALLGIVER)
                    fireproximityprompt(BALLGIVER)
                    fireproximityprompt(BALLGIVER)
                    task.wait()
                end
                task.wait()
            end
        else

        end
    else
        Notify("Custom Prompt", "Not Supported")
    end
end)


--B2C3 Tab
local B2C3 = DrRayLibrary.newTab("Book 2 Chapter 3")
B2C3.newLabel("Gozu & Mezu")
B2C3.newButton("Auto Win", "", function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-581.70068359375, 38.337032318115234, 417.4595947265625)
    MainConsoleLogOutF("Successfully Teleport")
end)
B2C3.newLabel("Heart")
B2C3.newButton("Talk", "Walk to trigger", function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-138.42770385742188, 45.49604797363281, 79.2468490600586)
    MainConsoleLogOutF("Successfully Teleport")
end)
B2C3.newButton("Auto Hear", "Spin table by yourself", function()
    MainConsoleLogOutF("Getting Heart")
    for i, v in pairs(Workspace:GetDescendants()) do
        if v:IsA("ProximityPrompt") and v.Parent.Name == "Heart" and v.Parent.Parent.Name == "Hearts" then
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.Parent.Heart.CFrame
            task.wait(0.3)
            fireproximityprompt(v)
        end
    end
    task.wait()
    for i, v in pairs(Workspace:GetDescendants()) do
        if v:IsA("ProximityPrompt") and v.Parent.Name == "Heart" and v.Parent.Parent.Name == "BeatingHeart" then
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.Parent.CFrame
            game.Players.LocalPlayer.Backpack:FindFirstChild("Heart").Parent = game.Players.LocalPlayer.Character
            task.wait(0.3)
            fireproximityprompt(v)
        end
    end
    MainConsoleLogOutF("Putting Heart")
    task.wait()
    MainConsoleLogOutF("Successfully Auto Heart")
end)
B2C3.newButton("Auto Run", "", function()
    getgenv().Float = true
    Tp(-101.209686, 41.456089, -395.665802, 0.1)
    for i, v in pairs(Workspace:GetDescendants()) do
        if v:IsA("ProximityPrompt") and v.Parent.Name == "MAIN" then
            if isPlayerNear(v.Parent, 30) then
                fireproximityprompt(v)
            end
        end
    end
    task.wait()
    MainConsoleLogOutF("Successfully Teleport")
    MainConsoleLogOutF("Failed To Use Bug Detector")
    getgenv().Float = false
end)
B2C3.newLabel("Maze")
B2C3.newButton("Auto Craft", "", function()
    getgenv().Float = true
    MainConsoleLogOutF("Getting Item")
    for i, v in pairs(Workspace:GetDescendants()) do
        if v:IsA("ProximityPrompt") and v.Parent.Name == "Hole" then
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(v.Parent.Position.X, v.Parent.Position.Y - 5, v.Parent.Position.Z)
            task.wait(0.3)
            fireproximityprompt(v)
        end
    end
    Tp(-78.38977813720703, 3.999999523162842, -442.6703186035156, 1)
    MainConsoleLogOutF("Crafting")
    for i, v in pairs(Workspace:GetDescendants()) do
        if v:IsA("ProximityPrompt") and v.Parent.Name == "RootPart" and v.Parent.Parent.Name == "Monster" and isPlayerNear(v.Parent, 30) then
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.Parent.CFrame
            task.wait(0.3)
            fireproximityprompt(v)
            task.wait()
            break
        end
    end
    task.wait()
    getgenv().Float = false
    local args = {
        [1] = 0,
        [2] = {
            ["__args"] = {},
            ["__tree"] = {
                [1] = "CraftingService",
                [2] = "Interact"
            },
            ["__callType"] = 0
        }
    }
    
    game:GetService("ReplicatedStorage"):WaitForChild("Packages"):WaitForChild("Packet"):WaitForChild("PacketFunction"):InvokeServer(unpack(args))
    MainConsoleLogOutF("Trying To Invoke Server")
    task.wait()
    game:GetService("Players").LocalPlayer.PlayerGui.Crafting.Frame.Visible = false
    MainConsoleLogOutF("Successfully Craft Torch")
end)
B2C3.newButton("Get Fire", "", function()
    function isPartNearPart(part1, part2, distance)
        if part1 and part1:IsA("BasePart") and part2 and part2:IsA("BasePart") then
            local distanceThreshold = distance
            local part1Position = part1.Position
            local part2Position = part2.Position
            local partDistance = (part1Position - part2Position).magnitude
    
            return partDistance <= distanceThreshold
        else
            return false
        end
    end
    for i, v in pairs(Workspace:GetDescendants()) do
        if v:IsA("ProximityPrompt") and v.Parent.Name == "UndyingFlame" and not isPartNearPart(v.Parent, workspace.Section1.Maze.GrinDemonNM.Hitbox, 20) then
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.Parent.CFrame
            task.wait(0.3)
            fireproximityprompt(v)
            task.wait()
            break
        end
    end
    task.wait()
    Tp(-78.38977813720703, 3.999999523162842, -442.6703186035156, 1)  
    MainConsoleLogOutF("Successfully Get Fire")     
end)
B2C3.newButton("Escape", "", function()
    Tp(-74.25013732910156, 5.26987361907959, -880.4428100585938, nil)       
    MainConsoleLogOutF("Successfully Teleport")   
end)
B2C3.newLabel("Bells")
B2C3.newButton("Enter Zone", "", function()
    Tp(-325.5806579589844, 15.388615608215332, -1113.81494140625, nil)    
    MainConsoleLogOutF("Successfully Teleport")  
end)
B2C3.newButton("Kill All Flys", "", function()
    if not game.Players.LocalPlayer.Character:FindFirstChild("Bone Sword") then
        game.Players.LocalPlayer.Backpack:FindFirstChild("Bone Sword").Parent = game.Players.LocalPlayer.Character
    end
    task.wait()
    for i, v in pairs(Workspace:GetDescendants()) do
        if v.Name == "FlyHitbox" then
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.CFrame
            wait()
            game.Players.LocalPlayer.Character["Bone Sword"]:Activate()
            task.wait(3)
        end
    end
    task.wait()
    MainConsoleLogOutF("Successfully Kill All Flys")
end)
B2C3.newButton("Teleport To Puzzle Door", "", function()
    for i, v in pairs(workspace.Section2.PuzzleDoor.Doors:GetDescendants()) do
        if v.Name == "SurfaceGui" and v.Parent.Name == "Combos" and v.Parent.Position.Y >= 0 then
            local Shapesss = {}
            for _, obj in pairs(v:GetChildren()) do
                if obj then
                    table.insert(Shapesss, tostring(obj.Name))
                end
            end
            task.wait()
            if #Shapesss == 4 then
                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.Parent.CFrame
            end
        end
    end
    MainConsoleLogOutF("Successfully Teleport")
end)
B2C3.newButton("Auto Run", "", function()
    Tp(-3888.80054, -55, -2289.43774)
    MainConsoleLogOutF("Successfully Teleport")
end)
B2C3.newLabel("Enzaukai Game")
B2C3.newButton("Auto Win", "", function()
    for _, v in pairs(workspace["Section2.5"]:GetDescendants()) do
        if v:IsA("ProximityPrompt") then
            if isPlayerNear(v.Parent, 100) then
                while task.wait() do
                    if not v then
                        break
                    end
                    if v.Enabled then
                        fireproximityprompt(v)
                    end
                end
            end
        end
    end
    MainConsoleLogOutF("Fire On Repeat")
end)
B2C3.newLabel("Father")
B2C3.newButton("Kill Isamu", "Make Isamu can't kill you'", function()
    workspace.Section3.IsamuAI.Hitbox.CanTouch = false
    MainConsoleLogOutF("Successfully Set Kill IsamuAI")
end)
B2C3.newButton("Teleport To Safe Spot", "", function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(1136.67224, 29.0004768, -2400.67603, 0.695213974, 0, -0.718802869, 0, 1, 0, 0.718802869, 0, 0.695213974)
    MainConsoleLogOutF("Successfully Teleport")
end)
B2C3.newButton("Auto Win", "While waiting for 6pm just do work", function()
    workspace.Section3.IsamuAI.Hitbox.CanTouch = false
    MainConsoleLogOutF("Successfully Set Kill IsamuAI")
    MainConsoleLogOutF("Waiting Time")
    repeat task.wait() until game:GetService("Players").LocalPlayer.PlayerGui["03_Handler"].TimerFrame.TextLabel.Text == "6 PM"
    MainConsoleLogOutF("Successfully Teleport")
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(1136.67224, 29.0004768, -2400.67603, 0.695213974, 0, -0.718802869, 0, 1, 0, 0.718802869, 0, 0.695213974)
end)
B2C3.newLabel("Train")
B2C3.newButton("Enter Zone", "", function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = workspace["Section3.5"].GhostTrain.TrainTrigger.CFrame
    MainConsoleLogOutF("Successfully Teleport")
end)
B2C3.newLabel("Larves")
B2C3.newButton("Auto Win", "", function()
    for _,v in pairs(workspace.Section4.Map.BabyFaceNPC.ProxPart:GetChildren()) do
        if v:IsA("ProximityPrompt") and v.Enabled then
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.Parent.CFrame
            task.wait(0.3)
            fireproximityprompt(v)
            break
        end
    end
    MainConsoleLogOutF("Successfully Talk")
    task.wait()
    MainConsoleLogOutF("Getting Larvae")
    for _,v in pairs(workspace.Section4.HotPotato.Givers:GetChildren()) do
        if v.Name == "LarvaeGiver" and v:FindFirstChild("RootPart") then
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.RootPart.CFrame
            task.wait(0.3)
            fireproximityprompt(v.RootPart.ProximityPrompt)
            break
        end
    end
    task.wait()
    MainConsoleLogOutF("Successfully Getting Larvae")
    for _,v in pairs(workspace.Section4.DogWall.RootPart:GetChildren()) do
        if v:IsA("ProximityPrompt") then
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.Parent.CFrame
            task.wait(0.3)
            fireproximityprompt(v)
            break
        end
    end
    task.wait()
    MainConsoleLogOutF("Successfully Auto Win")
end)
B2C3.newLabel("Mud")
B2C3.newButton("Auto Win", "", function()
    for _,v in pairs(workspace["Section4.5"]:GetChildren()) do
        if v.Name == "TeleportToSection5" then
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.CFrame
            break
        end
    end
    MainConsoleLogOutF("Successfully Teleport")
end)
B2C3.newLabel("Yurei 1st | House")
B2C3.newButton("Talk", "", function()
    for _,v in pairs(workspace.Section5.Map.BabyFaceNPC.ProxPart:GetChildren()) do
        if v:IsA("ProximityPrompt") and v.Enabled then
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.Parent.CFrame
            task.wait(0.3)
            fireproximityprompt(v)
            break
        end
    end
    MainConsoleLogOutF("Successfully Talk")
end)    
B2C3.newButton("Teleport To House", "", function()
    for _,v in pairs(workspace.Section5.ISPY.Houses:GetDescendants()) do
        if v.Name == "LightSpotter" then
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.CFrame
        end
    end
    MainConsoleLogOutF("Successfully Teleport")
end) 
B2C3.newLabel("Yurei 2nd | Boss")
B2C3.newButton("Clear Map", "", function()
    for _, v in pairs(workspace.Section5.Boss.Build:GetChildren()) do
        if v and v.Name == "c01-15k" or v and v.Name == "InvisWall" then
            v:Destroy()
        end
    end
    MainConsoleLogOutF("Successfully Remove Part")
    MainConsoleLogOutF("Possible On Noclip")
end)
B2C3.newButton("Teleport To Safe Spot", "", function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(3078.94287, 16.9999962, -540.494385, -0.784964442, 0, 0.619540811, 0, 1, 0, -0.619540811, 0, -0.784964442)
    MainConsoleLogOutF("Successfully Teleport")
end)
B2C3.newLabel("Hell")
B2C3.newButton("Talk", "", function()
    if isPlayerNearPos(Vector3.new(-2717.091064453125, 172.54824829101562, 8059.78955078125), 800) then
        Tp(-2717.091064453125, 172.54824829101562, 8059.78955078125, nil)
    end
    MainConsoleLogOutF("Successfully Teleport")
end)
B2C3.newButton("Auto Run", "Press after cutscene", function()
    Tp(-1696.94921875, 245.83494567871094, 7806.041503906259, nil)
    MainConsoleLogOutF("Successfully Teleport")
end)


--TWT Tab
local TWT = DrRayLibrary.newTab("The Witch Trial")
TWT.newLabel("Tutorial")
TWT.newButton("Read", "", function()
    
end)
TWT.newLabel("All In One")
TWT.newButton("Auto Win", "", function()
    if game.PlaceId == 7068738088 or game.PlaceId == 7068951438 then
        for i, v in pairs(Workspace:GetDescendants()) do
            if v.Parent:IsA("BasePart") and v.Parent.Name == "Game Teleporter" then
                char.HumanoidRootPart.CFrame = v.Parent.CFrame
            end
        end
    elseif game.PlaceId == 7068739000 or game.PlaceId == 7068951914 then
        for i, v in pairs(Workspace:GetDescendants()) do
            if v.Parent:IsA("BasePart") and v.Parent.Name == "Game Teleporter" then
                char.HumanoidRootPart.CFrame = v.Parent.CFrame
            end
        end
    elseif game.PlaceId == 7068740106 or game.PlaceId == 7068952294 then
        for i, v in pairs(Workspace:GetDescendants()) do
            if v.Parent:IsA("BasePart") and v.Parent.Name == "Game Teleporter" then
                char.HumanoidRootPart.CFrame = v.Parent.CFrame
            end
        end
    end
end)
TWT.newLabel("Mutiplayer")
TWT.newLabel("Map 3")
TWT.newButton("Auto Get Butterfly", "", function()
    if not CustomFirePropmt then
        local function teleportAndFirePrompt(part)
            local player = game:GetService("Players").LocalPlayer
            local character = player.Character
            local humanoidRootPart = character and character:FindFirstChild("HumanoidRootPart")
            
            if humanoidRootPart and humanoidRootPart:IsA("BasePart") then
                local targetCFrame = part.CFrame + (part.CFrame.LookVector * -9)
                humanoidRootPart.CFrame = targetCFrame
            end
        end
        
        for i, v in pairs(workspace.GameAI:GetDescendants()) do
            if v:IsA("ProximityPrompt") and v.Parent:IsA("BasePart") and v.Parent.Name == "Cube.001" then
                teleportAndFirePrompt(v.Parent)
                wait(0.3)
                fireproximityprompt(v)
            end
        end
        
        task.wait()
    else
        Notify("Custom Prompt", "Not Supported")
    end
end)
TWT.newButton("Teleport To Fireplace 1", "", function()
    Tp(2621.90186, 111.203804, 1453.71765, nil)
end)
TWT.newButton("Teleport To Fireplace 2", "", function()
    Tp(2426.72583, 185.146057, 1457.37292, nil)
end)


--Xmas1 Tab
local Xmas1 = DrRayLibrary.newTab("Christmas Trial")
Xmas1.newLabel("Tutorial")
Xmas1.newButton("Read", "", function()
    
end)
Xmas1.newLabel("Santa Sleigh")
Xmas1.newButton("Auto Repair", "", function()
    if not CustomFirePropmt then
        for i, v in pairs(Workspace:GetDescendants()) do
            if v:IsA("ProximityPrompt") and v.Parent:IsA("BasePart") and v.Parent.Name == "RootPart" then
                game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = v.Parent.CFrame
                task.wait(0.3)
                fireproximityprompt(v)
            end
        end
        
        task.wait()
        for i, v in pairs(Workspace:GetDescendants()) do
            if v:IsA("ProximityPrompt") and v.Parent:IsA("BasePart") and v.Parent.Name == "Extinguisher" then
                game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = v.Parent.CFrame
                task.wait(0.3)
                fireproximityprompt(v)
            end
        end
        
        task.wait()
        for i, v in pairs(Workspace:GetDescendants()) do
            if v:IsA("ProximityPrompt") and v.Parent:IsA("BasePart") and v.Parent.Name == "Ropes" then
                game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = v.Parent.CFrame
                task.wait(0.3)
                fireproximityprompt(v)
            end
        end
        
        task.wait()
        for i, v in pairs(Workspace:GetDescendants()) do
            if v:IsA("ProximityPrompt") and v.Parent:IsA("BasePart") and v.Parent.Name == "Controls" then
            game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = v.Parent.CFrame
                task.wait(0.3)
                fireproximityprompt(v)
            end
        end
        
        task.wait()
        for i, v in pairs(Workspace:GetDescendants()) do
            if v:IsA("ProximityPrompt") and v.Parent:IsA("BasePart") and v.Parent.Name == "RepairPoint" then
            game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = v.Parent.CFrame
                task.wait(0.3)
                fireproximityprompt(v)
            end
        end
        
        task.wait(0.3)
        Tp(-176.64, 4.8, -328.34, nil)
    else
        for i, v in pairs(Workspace:GetDescendants()) do
            if v:IsA("ProximityPrompt") and v.Parent:IsA("BasePart") and v.Parent.Name == "RootPart" then
                game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(v.Parent.Position.X, v.Parent.Position.Y + 5, v.Parent.Position.Z)
                task.wait(0.3)
                fireproximitypromptv2(v, 1, true)
                task.wait()
                Tp(-176.64, 4.8, -328.34, nil)
            end
        end
        
        task.wait()
        for i, v in pairs(Workspace:GetDescendants()) do
            if v:IsA("ProximityPrompt") and v.Parent:IsA("BasePart") and v.Parent.Name == "Extinguisher" then
                game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = v.Parent.CFrame
                task.wait(0.3)
                fireproximitypromptv2(v, 1, true)
            end
        end
        
        task.wait()
        for i, v in pairs(Workspace:GetDescendants()) do
            if v:IsA("ProximityPrompt") and v.Parent:IsA("BasePart") and v.Parent.Name == "Ropes" then
                game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = v.Parent.CFrame
                task.wait(0.3)
                fireproximitypromptv2(v, 1, true)
            end
        end
        
        task.wait()
        for i, v in pairs(Workspace:GetDescendants()) do
            if v:IsA("ProximityPrompt") and v.Parent:IsA("BasePart") and v.Parent.Name == "Controls" then
            game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = v.Parent.CFrame
                task.wait(0.3)
                fireproximitypromptv2(v, 1, true)
            end
        end
        
        task.wait()
        for i, v in pairs(Workspace:GetDescendants()) do
            if v:IsA("ProximityPrompt") and v.Parent:IsA("BasePart") and v.Parent.Name == "RepairPoint" then
            game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = v.Parent.CFrame
                task.wait(0.3)
                fireproximitypromptv2(v, 1, true)
            end
        end
        
        task.wait(0.3)
        Tp(-176.64, 4.8, -328.34, nil)
    end
end)
Xmas1.newLabel("Toys")
Xmas1.newButton("Auto Collect", "", function()
    if not CustomFirePropmt then
        for i, v in pairs(Workspace:GetDescendants()) do
            if v:IsA("ProximityPrompt") and v.Parent:IsA("BasePart") and v.Parent.Name == "RootPart" then
            game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = v.Parent.CFrame
                task.wait(0.3)
                fireproximityprompt(v)
            end
        end
        
        task.wait()
        for i, v in pairs(Workspace:GetDescendants()) do
            if v:IsA("ProximityPrompt") and v.Parent:IsA("BasePart") and v.Parent.Name == "toy" then
            game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = v.Parent.CFrame
                task.wait(0.3)
                fireproximityprompt(v)
            end
        end

        task.wait()
        Tp(-176.64, 4.8, -328.34, nil)
    else
        for i, v in pairs(Workspace:GetDescendants()) do
            if v:IsA("ProximityPrompt") and v.Parent:IsA("BasePart") and v.Parent.Name == "RootPart" then
                game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(v.Parent.Position.X, v.Parent.Position.Y + 5, v.Parent.Position.Z)
                task.wait(0.3)
                fireproximitypromptv2(v, 1, true)
                task.wait()
                Tp(-176.64, 4.8, -328.34, nil)
            end
        end
        
        task.wait()
        for i, v in pairs(Workspace:GetDescendants()) do
            if v:IsA("ProximityPrompt") and v.Parent:IsA("BasePart") and v.Parent.Name == "toy" then
                game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = v.Parent.CFrame
                task.wait(0.3)
                fireproximitypromptv2(v, 1, true)
            end
        end

        task.wait()
        Tp(-176.64, 4.8, -328.34, nil)
    end
end)
Xmas1.newLabel("Key")
Xmas1.newButton("Auto Win", "It will get key from Kampus and auto free santa", function()
    if not CustomFirePropmt then
        for i, v in pairs(Workspace:GetDescendants()) do
            if v:IsA("ProximityPrompt") and v.Parent:IsA("BasePart") and v.Parent.Name == "RootPart" then
            game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = v.Parent.CFrame
                wait(0.3)
                fireproximityprompt(v)
            end
        end
        
        local function teleportAndFirePrompt(part)
            local player = game:GetService("Players").LocalPlayer
            local character = player.Character
            local humanoidRootPart = character and character:FindFirstChild("HumanoidRootPart")
            
            if humanoidRootPart and humanoidRootPart:IsA("BasePart") then
                local targetCFrame = part.CFrame + (part.CFrame.LookVector * -9)  -- Teleport 10 units behind the part
                humanoidRootPart.CFrame = targetCFrame
            end
        end
        
        task.wait()

        for i, v in pairs(workspace.GameAI:GetDescendants()) do
            if v:IsA("ProximityPrompt") and v.Parent:IsA("BasePart") and v.Parent.Name == "HumanoidRootPart" then
                teleportAndFirePrompt(v.Parent)
                wait(0.3)
                fireproximityprompt(v)
            end
        end
        
        task.wait()
        
        for i, v in pairs(Workspace:GetDescendants()) do
            if v:IsA("ProximityPrompt") and v.Parent:IsA("BasePart") and v.Parent.Name == "RootPart" then
            game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = v.Parent.CFrame
                wait(0.3)
                fireproximityprompt(v)
            end
        end
    else
        Notify("Custom Prompt", "Not Supported")
    end
end)


--Xmas2 Tab
local Xmas2 = DrRayLibrary.newTab("Xmas Event")
Xmas2.newLabel("Yeti")
Xmas2.newButton("Teleport To Yeti Area", "Walk to the cave to get shotgun", function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-1245.6499, 7.51562405, -4272.28125, -0.254058152, 0, -0.967188954, 0, 1, 0, 0.967188954, 0, -0.254058152)
end)


--Halloween Tab
local Halloween = DrRayLibrary.newTab("Halloween Trial")
Halloween.newLabel("Tutorial")
Halloween.newButton("Read", "", function()
    
end)
Halloween.newLabel("Map 1")
Halloween.newButton("Auto Win", "", function()
    if not CustomFirePropmt then
        for i, v in pairs(workspace:GetDescendants()) do
            if v:IsA("ProximityPrompt") and v.Parent:IsA("BasePart") and v.Parent.Name == "GrabItem" then
                game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = v.Parent.CFrame
                task.wait(0.3)
                fireproximityprompt(v)
            end
        end
        task.wait(1)
        for i, v in pairs(workspace:GetDescendants()) do
            if v:IsA("ProximityPrompt") and v.Parent:IsA("BasePart") and v.Parent.Name == "Burner" then
                game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = v.Parent.CFrame
                task.wait(0.3)
                fireproximityprompt(v)
                fireproximityprompt(v)
                fireproximityprompt(v)
                fireproximityprompt(v)
                fireproximityprompt(v)
            end
        end
    else
        for _,v in pairs(game.Players.LocalPlayer.Character:GetDescendants()) do
            if v:IsA('BasePart') and v.CanCollide and v.Name ~= floatName then
                v.CanCollide = false
            end
        end
        task.wait()
        for i, v in pairs(workspace:GetDescendants()) do
            if v:IsA("ProximityPrompt") and v.Parent:IsA("BasePart") and v.Parent.Name == "GrabItem" then
                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(v.Parent.Position.X, v.Parent.Position.Y + 4, v.Parent.Position.Z)
                task.wait(0.3)
                fireproximitypromptv2(v, 1, true)
            end
        end
        task.wait(1)
        for i, v in pairs(workspace:GetDescendants()) do
            if v:IsA("ProximityPrompt") and v.Parent:IsA("BasePart") and v.Parent.Name == "Burner" then
                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(v.Parent.Position.X, v.Parent.Position.Y + 4, v.Parent.Position.Z)
                task.wait(0.3)
                fireproximitypromptv2(v, 1, true)
                fireproximitypromptv2(v, 1, true)
                fireproximitypromptv2(v, 1, true)
                fireproximitypromptv2(v, 1, true)
                fireproximitypromptv2(v, 1, true)
            end
        end
        task.wait()
        for _,v in pairs(game.Players.LocalPlayer.Character:GetDescendants()) do
            if v:IsA('BasePart') and v.CanCollide and v.Name ~= floatName then
                v.CanCollide = true
            end
        end
    end
end)
Halloween.newLabel("Map 2")
Halloween.newButton("Auto Win", "", function()
    if not CustomFirePropmt then
        success = false

        spawn(function()
            repeat
                game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(168.59, 45, -119.63)
                task.wait()
            until success == true
        end)
        
        for i, v in pairs(workspace:GetDescendants()) do
            if v:IsA("ProximityPrompt") and v.Parent:IsA("BasePart") and v.Parent.Parent.Name == "Candle" then
                wait(0.3)
                fireproximityprompt(v)
            end
        end
        
        success = true
        task.wait()
        success = false
        
        spawn(function()
            repeat
                game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(97.5569, 75, -164.936)
                task.wait()
            until success == true
        end)
        
        for i, v in pairs(workspace:GetDescendants()) do
            if v:IsA("ProximityPrompt") and v.Parent:IsA("BasePart") and v.Parent.Parent.Name == "Candle" then
                wait(0.3)
                fireproximityprompt(v)
            end
        end
        
        success = true
        task.wait()
        success = false
        
        spawn(function()
            repeat
                game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(25.9275, 76, -116.628)
                task.wait()
            until success == true
        end)
        
        for i, v in pairs(workspace:GetDescendants()) do
            if v:IsA("ProximityPrompt") and v.Parent:IsA("BasePart") and v.Parent.Parent.Name == "Candle" then
                wait(0.3)
                fireproximityprompt(v)
            end
        end
        
        success = true
        task.wait()
        success = false
        game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(42.54,100,-132.39)
        task.wait()
        spawn(function()
            repeat
                game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(42.54,60.91,-132.39)
                task.wait()
            until success == true
        end)
        
        for i, v in pairs(workspace:GetDescendants()) do
            if v:IsA("ProximityPrompt") and v.Parent:IsA("BasePart") and v.Parent.Parent.Name == "Candle" then
                wait(0.3)
                fireproximityprompt(v)
            end
        end
        
        success = true
        task.wait()
        success = false
        
        spawn(function()
            repeat
                game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-35.8623, 61, 6.54341)
                task.wait()
            until success == true
        end)
        
        for i, v in pairs(workspace:GetDescendants()) do
            if v:IsA("ProximityPrompt") and v.Parent:IsA("BasePart") and v.Parent.Parent.Name == "Candle" then
                wait(0.3)
                fireproximityprompt(v)
            end
        end
        
        success = true
        task.wait()
        success = false
        
        spawn(function()
            repeat
                game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(140.855, 49, -37.8745)
                task.wait()
            until success == true
        end)
        
        for i, v in pairs(workspace:GetDescendants()) do
            if v:IsA("ProximityPrompt") and v.Parent:IsA("BasePart") and v.Parent.Parent.Name == "Candle" then
                wait(0.3)
                fireproximityprompt(v)
            end
        end
        
        success = true
        task.wait()
        success = false
        
        spawn(function()
            repeat
                game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(168.327, 55, -119.483)
                task.wait()
            until success == true
        end)
        
        for i, v in pairs(workspace:GetDescendants()) do
            if v:IsA("ProximityPrompt") and v.Parent:IsA("BasePart") and v.Parent.Parent.Name == "Candle" then
                wait(0.3)
                fireproximityprompt(v)
            end
        end
        
        success = true
        task.wait()
        success = false
        
        spawn(function()
            repeat
                game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(49.3455, 47, -101.13)
                task.wait()
            until success == true
        end)
        
        for i, v in pairs(workspace:GetDescendants()) do
            if v:IsA("ProximityPrompt") and v.Parent:IsA("BasePart") and v.Parent.Parent.Name == "Candle" then
                wait(0.3)
                fireproximityprompt(v)
            end
        end
        
        success = true
        task.wait()
        success = false
        
        spawn(function()
            repeat
                game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-55.54,83.33,-67.01)
                task.wait()
            until success == true
        end)
        
        for i, v in pairs(workspace:GetDescendants()) do
            if v:IsA("ProximityPrompt") and v.Parent:IsA("BasePart") and v.Parent.Parent.Name == "Candle" then
                wait(0.3)
                fireproximityprompt(v)
            end
        end
        
        success = true
        task.wait()
        game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(180.72, 46, -100.54)
    else
        Notify("Custom Prompt", "Not Supported")
    end
end)
Halloween.newButton("Full Auto Win", "", function()
    if not CustomFirePropmt then
        repeat
            game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(180.72, 46, -100.54)
            task.wait()
            until game.Players.LocalPlayer.PlayerGui.ScreenGui.TextLabel.Text == "1:30"
            success = false
            
            spawn(function()
                repeat
                    game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(168.59, 45, -119.63)
                    task.wait()
                until success == true
            end)
            
            for i, v in pairs(workspace:GetDescendants()) do
                if v:IsA("ProximityPrompt") and v.Parent:IsA("BasePart") and v.Parent.Parent.Name == "Candle" then
                    wait(0.3)
                    fireproximityprompt(v)
                end
            end
            
            success = true
            task.wait()
            success = false
            
            spawn(function()
                repeat
                    game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(97.5569, 75, -164.936)
                    task.wait()
                until success == true
            end)
            
            for i, v in pairs(workspace:GetDescendants()) do
                if v:IsA("ProximityPrompt") and v.Parent:IsA("BasePart") and v.Parent.Parent.Name == "Candle" then
                    wait(0.3)
                    fireproximityprompt(v)
                end
            end
            
            success = true
            task.wait()
            success = false
            
            spawn(function()
                repeat
                    game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(25.9275, 76, -116.628)
                    task.wait()
                until success == true
            end)
            
            for i, v in pairs(workspace:GetDescendants()) do
                if v:IsA("ProximityPrompt") and v.Parent:IsA("BasePart") and v.Parent.Parent.Name == "Candle" then
                    wait(0.3)
                    fireproximityprompt(v)
                end
            end
            
            success = true
            task.wait()
            success = false
            game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(42.54,100,-132.39)
            task.wait()
            spawn(function()
                repeat
                    game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(42.54,60.91,-132.39)
                    task.wait()
                until success == true
            end)
            
            for i, v in pairs(workspace:GetDescendants()) do
                if v:IsA("ProximityPrompt") and v.Parent:IsA("BasePart") and v.Parent.Parent.Name == "Candle" then
                    wait(0.3)
                    fireproximityprompt(v)
                end
            end
            
            success = true
            task.wait()
            success = false
            
            spawn(function()
                repeat
                    game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-35.8623, 61, 6.54341)
                    task.wait()
                until success == true
            end)
            
            for i, v in pairs(workspace:GetDescendants()) do
                if v:IsA("ProximityPrompt") and v.Parent:IsA("BasePart") and v.Parent.Parent.Name == "Candle" then
                    wait(0.3)
                    fireproximityprompt(v)
                end
            end
            
            success = true
            task.wait()
            success = false
            
            spawn(function()
                repeat
                    game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(140.855, 49, -37.8745)
                    task.wait()
                until success == true
            end)
            
            for i, v in pairs(workspace:GetDescendants()) do
                if v:IsA("ProximityPrompt") and v.Parent:IsA("BasePart") and v.Parent.Parent.Name == "Candle" then
                    wait(0.3)
                    fireproximityprompt(v)
                end
            end
            
            success = true
            task.wait()
            success = false
            
            spawn(function()
                repeat
                    game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(168.327, 55, -119.483)
                    task.wait()
                until success == true
            end)
            
            for i, v in pairs(workspace:GetDescendants()) do
                if v:IsA("ProximityPrompt") and v.Parent:IsA("BasePart") and v.Parent.Parent.Name == "Candle" then
                    wait(0.3)
                    fireproximityprompt(v)
                end
            end
            
            success = true
            task.wait()
            success = false
            
            spawn(function()
                repeat
                    game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(49.3455, 47, -101.13)
                    task.wait()
                until success == true
            end)
            
            for i, v in pairs(workspace:GetDescendants()) do
                if v:IsA("ProximityPrompt") and v.Parent:IsA("BasePart") and v.Parent.Parent.Name == "Candle" then
                    wait(0.3)
                    fireproximityprompt(v)
                end
            end
            
            success = true
            task.wait()
            success = false
            
            spawn(function()
                repeat
                    game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-55.54,83.33,-67.01)
                    task.wait()
                until success == true
            end)
            
            for i, v in pairs(workspace:GetDescendants()) do
                if v:IsA("ProximityPrompt") and v.Parent:IsA("BasePart") and v.Parent.Parent.Name == "Candle" then
                    wait(0.3)
                    fireproximityprompt(v)
                end
            end
            
            success = true
            task.wait()
            success = false
            
            spawn(function()
                repeat
                    game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-33.94,66.47,6.76)
                    task.wait()
                until success == true
            end)
            
            for i, v in pairs(workspace:GetDescendants()) do
                if v:IsA("ProximityPrompt") and v.Parent:IsA("BasePart") and v.Parent.Parent.Name == "Candle" then
                    wait(0.3)
                    fireproximityprompt(v)
                end
            end
            
            success = true
            task.wait()
            game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(180.72, 46, -100.54)
            repeat
            game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(180.72, 46, -100.54)
            task.wait()
            until game.Players.LocalPlayer.PlayerGui.ScreenGui.TextLabel.Text == "1:30"
            success = false
            
            spawn(function()
                repeat
                    game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(168.59, 45, -119.63)
                    task.wait()
                until success == true
            end)
            
            for i, v in pairs(workspace:GetDescendants()) do
                if v:IsA("ProximityPrompt") and v.Parent:IsA("BasePart") and v.Parent.Parent.Name == "Candle" then
                    wait(0.3)
                    fireproximityprompt(v)
                end
            end
            
            success = true
            task.wait()
            success = false
            
            spawn(function()
                repeat
                    game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(97.5569, 75, -164.936)
                    task.wait()
                until success == true
            end)
            
            for i, v in pairs(workspace:GetDescendants()) do
                if v:IsA("ProximityPrompt") and v.Parent:IsA("BasePart") and v.Parent.Parent.Name == "Candle" then
                    wait(0.3)
                    fireproximityprompt(v)
                end
            end
            
            success = true
            task.wait()
            success = false
            
            spawn(function()
                repeat
                    game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(25.9275, 76, -116.628)
                    task.wait()
                until success == true
            end)
            
            for i, v in pairs(workspace:GetDescendants()) do
                if v:IsA("ProximityPrompt") and v.Parent:IsA("BasePart") and v.Parent.Parent.Name == "Candle" then
                    wait(0.3)
                    fireproximityprompt(v)
                end
            end
            
            success = true
            task.wait()
            success = false
            game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(42.54,100,-132.39)
            task.wait()
            spawn(function()
                repeat
                    game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(42.54,60.91,-132.39)
                    task.wait()
                until success == true
            end)
            
            for i, v in pairs(workspace:GetDescendants()) do
                if v:IsA("ProximityPrompt") and v.Parent:IsA("BasePart") and v.Parent.Parent.Name == "Candle" then
                    wait(0.3)
                    fireproximityprompt(v)
                end
            end
            
            success = true
            task.wait()
            success = false
            
            spawn(function()
                repeat
                    game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-35.8623, 61, 6.54341)
                    task.wait()
                until success == true
            end)
            
            for i, v in pairs(workspace:GetDescendants()) do
                if v:IsA("ProximityPrompt") and v.Parent:IsA("BasePart") and v.Parent.Parent.Name == "Candle" then
                    wait(0.3)
                    fireproximityprompt(v)
                end
            end
            
            success = true
            task.wait()
            success = false
            
            spawn(function()
                repeat
                    game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(140.855, 49, -37.8745)
                    task.wait()
                until success == true
            end)
            
            for i, v in pairs(workspace:GetDescendants()) do
                if v:IsA("ProximityPrompt") and v.Parent:IsA("BasePart") and v.Parent.Parent.Name == "Candle" then
                    wait(0.3)
                    fireproximityprompt(v)
                end
            end
            
            success = true
            task.wait()
            success = false
            
            spawn(function()
                repeat
                    game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(168.327, 55, -119.483)
                    task.wait()
                until success == true
            end)
            
            for i, v in pairs(workspace:GetDescendants()) do
                if v:IsA("ProximityPrompt") and v.Parent:IsA("BasePart") and v.Parent.Parent.Name == "Candle" then
                    wait(0.3)
                    fireproximityprompt(v)
                end
            end
            
            success = true
            task.wait()
            success = false
            
            spawn(function()
                repeat
                    game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(49.3455, 47, -101.13)
                    task.wait()
                until success == true
            end)
            
            for i, v in pairs(workspace:GetDescendants()) do
                if v:IsA("ProximityPrompt") and v.Parent:IsA("BasePart") and v.Parent.Parent.Name == "Candle" then
                    wait(0.3)
                    fireproximityprompt(v)
                end
            end
            
            success = true
            task.wait()
            success = false
            
            spawn(function()
                repeat
                    game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-55.54,83.33,-67.01)
                    task.wait()
                until success == true
            end)
            
            for i, v in pairs(workspace:GetDescendants()) do
                if v:IsA("ProximityPrompt") and v.Parent:IsA("BasePart") and v.Parent.Parent.Name == "Candle" then
                    wait(0.3)
                    fireproximityprompt(v)
                end
            end
            
            success = true
            task.wait()
            success = false
            
            spawn(function()
                repeat
                    game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-33.94,66.47,6.76)
                    task.wait()
                until success == true
            end)
            
            for i, v in pairs(workspace:GetDescendants()) do
                if v:IsA("ProximityPrompt") and v.Parent:IsA("BasePart") and v.Parent.Parent.Name == "Candle" then
                    wait(0.3)
                    fireproximityprompt(v)
                end
            end
            
            success = true
            task.wait()
            game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(180.72, 46, -100.54)
            repeat
            game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(180.72, 46, -100.54)
            task.wait()
            until game.Players.LocalPlayer.PlayerGui.ScreenGui.TextLabel.Text == "1:30"
            success = false
            
            spawn(function()
                repeat
                    game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(168.59, 45, -119.63)
                    task.wait()
                until success == true
            end)
            
            for i, v in pairs(workspace:GetDescendants()) do
                if v:IsA("ProximityPrompt") and v.Parent:IsA("BasePart") and v.Parent.Parent.Name == "Candle" then
                    wait(0.3)
                    fireproximityprompt(v)
                end
            end
            
            success = true
            task.wait()
            success = false
            
            spawn(function()
                repeat
                    game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(97.5569, 75, -164.936)
                    task.wait()
                until success == true
            end)
            
            for i, v in pairs(workspace:GetDescendants()) do
                if v:IsA("ProximityPrompt") and v.Parent:IsA("BasePart") and v.Parent.Parent.Name == "Candle" then
                    wait(0.3)
                    fireproximityprompt(v)
                end
            end
            
            success = true
            task.wait()
            success = false
            
            spawn(function()
                repeat
                    game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(25.9275, 76, -116.628)
                    task.wait()
                until success == true
            end)
            
            for i, v in pairs(workspace:GetDescendants()) do
                if v:IsA("ProximityPrompt") and v.Parent:IsA("BasePart") and v.Parent.Parent.Name == "Candle" then
                    wait(0.3)
                    fireproximityprompt(v)
                end
            end
            
            success = true
            task.wait()
            success = false
            game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(42.54,100,-132.39)
            task.wait()
            spawn(function()
                repeat
                    game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(42.54,60.91,-132.39)
                    task.wait()
                until success == true
            end)
            
            for i, v in pairs(workspace:GetDescendants()) do
                if v:IsA("ProximityPrompt") and v.Parent:IsA("BasePart") and v.Parent.Parent.Name == "Candle" then
                    wait(0.3)
                    fireproximityprompt(v)
                end
            end
            
            success = true
            task.wait()
            success = false
            
            spawn(function()
                repeat
                    game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-35.8623, 61, 6.54341)
                    task.wait()
                until success == true
            end)
            
            for i, v in pairs(workspace:GetDescendants()) do
                if v:IsA("ProximityPrompt") and v.Parent:IsA("BasePart") and v.Parent.Parent.Name == "Candle" then
                    wait(0.3)
                    fireproximityprompt(v)
                end
            end
            
            success = true
            task.wait()
            success = false
            
            spawn(function()
                repeat
                    game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(140.855, 49, -37.8745)
                    task.wait()
                until success == true
            end)
            
            for i, v in pairs(workspace:GetDescendants()) do
                if v:IsA("ProximityPrompt") and v.Parent:IsA("BasePart") and v.Parent.Parent.Name == "Candle" then
                    wait(0.3)
                    fireproximityprompt(v)
                end
            end
            
            success = true
            task.wait()
            success = false
            
            spawn(function()
                repeat
                    game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(168.327, 55, -119.483)
                    task.wait()
                until success == true
            end)
            
            for i, v in pairs(workspace:GetDescendants()) do
                if v:IsA("ProximityPrompt") and v.Parent:IsA("BasePart") and v.Parent.Parent.Name == "Candle" then
                    wait(0.3)
                    fireproximityprompt(v)
                end
            end
            
            success = true
            task.wait()
            success = false
            
            spawn(function()
                repeat
                    game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(49.3455, 47, -101.13)
                    task.wait()
                until success == true
            end)
            
            for i, v in pairs(workspace:GetDescendants()) do
                if v:IsA("ProximityPrompt") and v.Parent:IsA("BasePart") and v.Parent.Parent.Name == "Candle" then
                    wait(0.3)
                    fireproximityprompt(v)
                end
            end
            
            success = true
            task.wait()
            success = false
            
            spawn(function()
                repeat
                    game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-55.54,83.33,-67.01)
                    task.wait()
                until success == true
            end)
            
            for i, v in pairs(workspace:GetDescendants()) do
                if v:IsA("ProximityPrompt") and v.Parent:IsA("BasePart") and v.Parent.Parent.Name == "Candle" then
                    wait(0.3)
                    fireproximityprompt(v)
                end
            end
            
            success = true
            task.wait()
            success = false
            
            spawn(function()
                repeat
                    game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-33.94,66.47,6.76)
                    task.wait()
                until success == true
            end)
            
            for i, v in pairs(workspace:GetDescendants()) do
                if v:IsA("ProximityPrompt") and v.Parent:IsA("BasePart") and v.Parent.Parent.Name == "Candle" then
                    wait(0.3)
                    fireproximityprompt(v)
                end
            end
            
            success = true
            task.wait()
            game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(180.72, 46, -100.54)
            repeat
            game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(180.72, 46, -100.54)
            task.wait()
            until game.Players.LocalPlayer.PlayerGui.ScreenGui.TextLabel.Text == "1:30"
            success = false
            
            spawn(function()
                repeat
                    game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(168.59, 45, -119.63)
                    task.wait()
                until success == true
            end)
            
            for i, v in pairs(workspace:GetDescendants()) do
                if v:IsA("ProximityPrompt") and v.Parent:IsA("BasePart") and v.Parent.Parent.Name == "Candle" then
                    wait(0.3)
                    fireproximityprompt(v)
                end
            end
            
            success = true
            task.wait()
            success = false
            
            spawn(function()
                repeat
                    game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(97.5569, 75, -164.936)
                    task.wait()
                until success == true
            end)
            
            for i, v in pairs(workspace:GetDescendants()) do
                if v:IsA("ProximityPrompt") and v.Parent:IsA("BasePart") and v.Parent.Parent.Name == "Candle" then
                    wait(0.3)
                    fireproximityprompt(v)
                end
            end
            
            success = true
            task.wait()
            success = false
            
            spawn(function()
                repeat
                    game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(25.9275, 76, -116.628)
                    task.wait()
                until success == true
            end)
            
            for i, v in pairs(workspace:GetDescendants()) do
                if v:IsA("ProximityPrompt") and v.Parent:IsA("BasePart") and v.Parent.Parent.Name == "Candle" then
                    wait(0.3)
                    fireproximityprompt(v)
                end
            end
            
            success = true
            task.wait()
            success = false
            game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(42.54,100,-132.39)
            task.wait()
            spawn(function()
                repeat
                    game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(42.54,60.91,-132.39)
                    task.wait()
                until success == true
            end)
            
            for i, v in pairs(workspace:GetDescendants()) do
                if v:IsA("ProximityPrompt") and v.Parent:IsA("BasePart") and v.Parent.Parent.Name == "Candle" then
                    wait(0.3)
                    fireproximityprompt(v)
                end
            end
            
            success = true
            task.wait()
            success = false
            
            spawn(function()
                repeat
                    game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-35.8623, 61, 6.54341)
                    task.wait()
                until success == true
            end)
            
            for i, v in pairs(workspace:GetDescendants()) do
                if v:IsA("ProximityPrompt") and v.Parent:IsA("BasePart") and v.Parent.Parent.Name == "Candle" then
                    wait(0.3)
                    fireproximityprompt(v)
                end
            end
            
            success = true
            task.wait()
            success = false
            
            spawn(function()
                repeat
                    game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(140.855, 49, -37.8745)
                    task.wait()
                until success == true
            end)
            
            for i, v in pairs(workspace:GetDescendants()) do
                if v:IsA("ProximityPrompt") and v.Parent:IsA("BasePart") and v.Parent.Parent.Name == "Candle" then
                    wait(0.3)
                    fireproximityprompt(v)
                end
            end
            
            success = true
            task.wait()
            success = false
            
            spawn(function()
                repeat
                    game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(168.327, 55, -119.483)
                    task.wait()
                until success == true
            end)
            
            for i, v in pairs(workspace:GetDescendants()) do
                if v:IsA("ProximityPrompt") and v.Parent:IsA("BasePart") and v.Parent.Parent.Name == "Candle" then
                    wait(0.3)
                    fireproximityprompt(v)
                end
            end
            
            success = true
            task.wait()
            success = false
            
            spawn(function()
                repeat
                    game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(49.3455, 47, -101.13)
                    task.wait()
                until success == true
            end)
            
            for i, v in pairs(workspace:GetDescendants()) do
                if v:IsA("ProximityPrompt") and v.Parent:IsA("BasePart") and v.Parent.Parent.Name == "Candle" then
                    wait(0.3)
                    fireproximityprompt(v)
                end
            end
            
            success = true
            task.wait()
            success = false
            
            spawn(function()
                repeat
                    game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-55.54,83.33,-67.01)
                    task.wait()
                until success == true
            end)
            
            for i, v in pairs(workspace:GetDescendants()) do
                if v:IsA("ProximityPrompt") and v.Parent:IsA("BasePart") and v.Parent.Parent.Name == "Candle" then
                    wait(0.3)
                    fireproximityprompt(v)
                end
            end
            
            success = true
            task.wait()
            success = false
            
            spawn(function()
                repeat
                    game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-33.94,66.47,6.76)
                    task.wait()
                until success == true
            end)
            
            for i, v in pairs(workspace:GetDescendants()) do
                if v:IsA("ProximityPrompt") and v.Parent:IsA("BasePart") and v.Parent.Parent.Name == "Candle" then
                    wait(0.3)
                    fireproximityprompt(v)
                end
            end
            
            success = true
            task.wait()
            game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(180.72, 46, -100.54)
            repeat
            game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(180.72, 46, -100.54)
            task.wait()
            until game.Players.LocalPlayer.PlayerGui.ScreenGui.TextLabel.Text == "1:30"
            success = false
            
            spawn(function()
                repeat
                    game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(168.59, 45, -119.63)
                    task.wait()
                until success == true
            end)
            
            for i, v in pairs(workspace:GetDescendants()) do
                if v:IsA("ProximityPrompt") and v.Parent:IsA("BasePart") and v.Parent.Parent.Name == "Candle" then
                    wait(0.3)
                    fireproximityprompt(v)
                end
            end
            
            success = true
            task.wait()
            success = false
            
            spawn(function()
                repeat
                    game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(97.5569, 75, -164.936)
                    task.wait()
                until success == true
            end)
            
            for i, v in pairs(workspace:GetDescendants()) do
                if v:IsA("ProximityPrompt") and v.Parent:IsA("BasePart") and v.Parent.Parent.Name == "Candle" then
                    wait(0.3)
                    fireproximityprompt(v)
                end
            end
            
            success = true
            task.wait()
            success = false
            
            spawn(function()
                repeat
                    game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(25.9275, 76, -116.628)
                    task.wait()
                until success == true
            end)
            
            for i, v in pairs(workspace:GetDescendants()) do
                if v:IsA("ProximityPrompt") and v.Parent:IsA("BasePart") and v.Parent.Parent.Name == "Candle" then
                    wait(0.3)
                    fireproximityprompt(v)
                end
            end
            
            success = true
            task.wait()
            success = false
            game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(42.54,100,-132.39)
            task.wait()
            spawn(function()
                repeat
                    game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(42.54,60.91,-132.39)
                    task.wait()
                until success == true
            end)
            
            for i, v in pairs(workspace:GetDescendants()) do
                if v:IsA("ProximityPrompt") and v.Parent:IsA("BasePart") and v.Parent.Parent.Name == "Candle" then
                    wait(0.3)
                    fireproximityprompt(v)
                end
            end
            
            success = true
            task.wait()
            success = false
            
            spawn(function()
                repeat
                    game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-35.8623, 61, 6.54341)
                    task.wait()
                until success == true
            end)
            
            for i, v in pairs(workspace:GetDescendants()) do
                if v:IsA("ProximityPrompt") and v.Parent:IsA("BasePart") and v.Parent.Parent.Name == "Candle" then
                    wait(0.3)
                    fireproximityprompt(v)
                end
            end
            
            success = true
            task.wait()
            success = false
            
            spawn(function()
                repeat
                    game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(140.855, 49, -37.8745)
                    task.wait()
                until success == true
            end)
            
            for i, v in pairs(workspace:GetDescendants()) do
                if v:IsA("ProximityPrompt") and v.Parent:IsA("BasePart") and v.Parent.Parent.Name == "Candle" then
                    wait(0.3)
                    fireproximityprompt(v)
                end
            end
            
            success = true
            task.wait()
            success = false
            
            spawn(function()
                repeat
                    game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(168.327, 55, -119.483)
                    task.wait()
                until success == true
            end)
            
            for i, v in pairs(workspace:GetDescendants()) do
                if v:IsA("ProximityPrompt") and v.Parent:IsA("BasePart") and v.Parent.Parent.Name == "Candle" then
                    wait(0.3)
                    fireproximityprompt(v)
                end
            end
            
            success = true
            task.wait()
            success = false
            
            spawn(function()
                repeat
                    game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(49.3455, 47, -101.13)
                    task.wait()
                until success == true
            end)
            
            for i, v in pairs(workspace:GetDescendants()) do
                if v:IsA("ProximityPrompt") and v.Parent:IsA("BasePart") and v.Parent.Parent.Name == "Candle" then
                    wait(0.3)
                    fireproximityprompt(v)
                end
            end
            
            success = true
            task.wait()
            success = false
            
            spawn(function()
                repeat
                    game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-55.54,83.33,-67.01)
                    task.wait()
                until success == true
            end)
            
            for i, v in pairs(workspace:GetDescendants()) do
                if v:IsA("ProximityPrompt") and v.Parent:IsA("BasePart") and v.Parent.Parent.Name == "Candle" then
                    wait(0.3)
                    fireproximityprompt(v)
                end
            end
            
            success = true
            task.wait()
            success = false
            
            spawn(function()
                repeat
                    game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-33.94,66.47,6.76)
                    task.wait()
                until success == true
            end)
            
            for i, v in pairs(workspace:GetDescendants()) do
                if v:IsA("ProximityPrompt") and v.Parent:IsA("BasePart") and v.Parent.Parent.Name == "Candle" then
                    wait(0.3)
                    fireproximityprompt(v)
                end
            end
            
            success = true
            task.wait()
            game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(180.72, 46, -100.54)
            repeat
            game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(180.72, 46, -100.54)
            task.wait()
            until game.Players.LocalPlayer.PlayerGui.ScreenGui.TextLabel.Text == "1:30"
            success = false
            
            spawn(function()
                repeat
                    game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(168.59, 45, -119.63)
                    task.wait()
                until success == true
            end)
            
            for i, v in pairs(workspace:GetDescendants()) do
                if v:IsA("ProximityPrompt") and v.Parent:IsA("BasePart") and v.Parent.Parent.Name == "Candle" then
                    wait(0.3)
                    fireproximityprompt(v)
                end
            end
            
            success = true
            task.wait()
            success = false
            
            spawn(function()
                repeat
                    game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(97.5569, 75, -164.936)
                    task.wait()
                until success == true
            end)
            
            for i, v in pairs(workspace:GetDescendants()) do
                if v:IsA("ProximityPrompt") and v.Parent:IsA("BasePart") and v.Parent.Parent.Name == "Candle" then
                    wait(0.3)
                    fireproximityprompt(v)
                end
            end
            
            success = true
            task.wait()
            success = false
            
            spawn(function()
                repeat
                    game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(25.9275, 76, -116.628)
                    task.wait()
                until success == true
            end)
            
            for i, v in pairs(workspace:GetDescendants()) do
                if v:IsA("ProximityPrompt") and v.Parent:IsA("BasePart") and v.Parent.Parent.Name == "Candle" then
                    wait(0.3)
                    fireproximityprompt(v)
                end
            end
            
            success = true
            task.wait()
            success = false
            game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(42.54,100,-132.39)
            task.wait()
            spawn(function()
                repeat
                    game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(42.54,60.91,-132.39)
                    task.wait()
                until success == true
            end)
            
            for i, v in pairs(workspace:GetDescendants()) do
                if v:IsA("ProximityPrompt") and v.Parent:IsA("BasePart") and v.Parent.Parent.Name == "Candle" then
                    wait(0.3)
                    fireproximityprompt(v)
                end
            end
            
            success = true
            task.wait()
            success = false
            
            spawn(function()
                repeat
                    game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-35.8623, 61, 6.54341)
                    task.wait()
                until success == true
            end)
            
            for i, v in pairs(workspace:GetDescendants()) do
                if v:IsA("ProximityPrompt") and v.Parent:IsA("BasePart") and v.Parent.Parent.Name == "Candle" then
                    wait(0.3)
                    fireproximityprompt(v)
                end
            end
            
            success = true
            task.wait()
            success = false
            
            spawn(function()
                repeat
                    game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(140.855, 49, -37.8745)
                    task.wait()
                until success == true
            end)
            
            for i, v in pairs(workspace:GetDescendants()) do
                if v:IsA("ProximityPrompt") and v.Parent:IsA("BasePart") and v.Parent.Parent.Name == "Candle" then
                    wait(0.3)
                    fireproximityprompt(v)
                end
            end
            
            success = true
            task.wait()
            success = false
            
            spawn(function()
                repeat
                    game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(168.327, 55, -119.483)
                    task.wait()
                until success == true
            end)
            
            for i, v in pairs(workspace:GetDescendants()) do
                if v:IsA("ProximityPrompt") and v.Parent:IsA("BasePart") and v.Parent.Parent.Name == "Candle" then
                    wait(0.3)
                    fireproximityprompt(v)
                end
            end
            
            success = true
            task.wait()
            success = false
            
            spawn(function()
                repeat
                    game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(49.3455, 47, -101.13)
                    task.wait()
                until success == true
            end)
            
            for i, v in pairs(workspace:GetDescendants()) do
                if v:IsA("ProximityPrompt") and v.Parent:IsA("BasePart") and v.Parent.Parent.Name == "Candle" then
                    wait(0.3)
                    fireproximityprompt(v)
                end
            end
            
            success = true
            task.wait()
            success = false
            
            spawn(function()
                repeat
                    game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-55.54,83.33,-67.01)
                    task.wait()
                until success == true
            end)
            
            for i, v in pairs(workspace:GetDescendants()) do
                if v:IsA("ProximityPrompt") and v.Parent:IsA("BasePart") and v.Parent.Parent.Name == "Candle" then
                    wait(0.3)
                    fireproximityprompt(v)
                end
            end
            
            success = true
            task.wait()
            success = false
            
            spawn(function()
                repeat
                    game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-33.94,66.47,6.76)
                    task.wait()
                until success == true
            end)
            
            for i, v in pairs(workspace:GetDescendants()) do
                if v:IsA("ProximityPrompt") and v.Parent:IsA("BasePart") and v.Parent.Parent.Name == "Candle" then
                    wait(0.3)
                    fireproximityprompt(v)
                end
            end
            
            success = true
            task.wait()
            game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(180.72, 46, -100.54)
    else
        Notify("Custom Prompt", "Not Supported")
    end
end)
Halloween.newLabel("Map 3")
Halloween.newButton("Auto Win", "Singleplayer", function()
    if not CustomFirePropmt then
        for i, v in pairs(workspace:GetDescendants()) do
            if v:IsA("ProximityPrompt") and v.Parent:IsA("BasePart") then
                game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = v.Parent.CFrame
                task.wait(0.3)
                fireproximityprompt(v)
                task.wait()
            end
        end
    else
        for i, v in pairs(workspace:GetDescendants()) do
            if v:IsA("ProximityPrompt") and v.Parent:IsA("BasePart") then
                game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = v.Parent.CFrame
                task.wait()
            end
        end
    end
end)
Halloween.newButton("Auto Win", "Mutiplayer", function()
    if not CustomFirePropmt then
        for i, v in pairs(Workspace:GetDescendants()) do
            if v:IsA("ProximityPrompt") and v.Parent:IsA("BasePart") and v.Parent.Name == "Core" then
                game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = v.Parent.CFrame
                task.wait(0.3)
                fireproximityprompt(v)
            end
        end
    else
        getgenv().Float = true
        for _,v in pairs(game.Players.LocalPlayer.Character:GetDescendants()) do
            if v:IsA('BasePart') and v.CanCollide and v.Name ~= floatName then
                v.CanCollide = false
            end
        end
        task.wait()
        for i, v in pairs(Workspace:GetDescendants()) do
            if v:IsA("ProximityPrompt") and v.Parent:IsA("BasePart") and v.Parent.Name == "Core" then
                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(v.Parent.Position.X, v.Parent.Position.Y + 5, v.Parent.Position.Z)
                task.wait(0.3)
                fireproximitypromptv2(v, 1, true)
            end
        end
        task.wait()
        getgenv().Float = false
        for _,v in pairs(game.Players.LocalPlayer.Character:GetDescendants()) do
            if v:IsA('BasePart') and v.CanCollide and v.Name ~= floatName then
                v.CanCollide = true
            end
        end
    end
end)
Halloween.newButton("Full Auto Win", "Mutiplayer", function()
    if not CustomFirePropmt then
        while task.wait() and not CustomFirePropmt do
            repeat
                game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(568.2, 500, -210.73)
                task.wait()
            until game.Players.LocalPlayer.PlayerGui.Timer.TextLabel.Text == "1:50"
            for i, v in pairs(Workspace:GetDescendants()) do
                if v:IsA("ProximityPrompt") and v.Parent:IsA("BasePart") and v.Parent.Name == "Core" then
                    game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = v.Parent.CFrame
                    wait(0.3)
                    fireproximityprompt(v)
                end
            end
            task.wait()
        end
    else
        while task.wait() and CustomFirePropmt do
            repeat
                game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(568.2, 500, -210.73)
                task.wait()
            until game.Players.LocalPlayer.PlayerGui.Timer.TextLabel.Text == "1:50"
            for i, v in pairs(Workspace:GetDescendants()) do
                if v:IsA("ProximityPrompt") and v.Parent:IsA("BasePart") and v.Parent.Name == "Core" then
                    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(v.Parent.Position.X, v.Parent.Position.Y + 5, v.Parent.Position.Z)
                    task.wait(0.3)
                    fireproximitypromptv2(v, 1, true)
                end
            end
            task.wait()
        end
    end
end)


--NMCS
local NMCS = DrRayLibrary.newTab("NMCS")
NMCS.newLabel("Tutorial")
NMCS.newButton("Read", "", function()
    
end)
NMCS.newLabel("Jukebox")
NMCS.newButton("Skip", "Then do the cards", function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = workspace.Section2.Cutscene.CutsceneMagician.WorldPivot
end)
NMCS.newButton("Enter Zone", "", function()
    Tp(-2568.51929, 36.4062042, 466.819244, nil)
end)
NMCS.newButton("Auto Win", "Custom Prompt Needed | Look up", function()
    getgenv().Float = true
    for i, v in pairs(Workspace:GetDescendants()) do
        if v.Name == "RootPart" and v.Parent.Name == "JackBox" then
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.CFrame * CFrame.new(0,-4,0)
            task.wait(1)
            keyPress(Enum.KeyCode.E, true)
            task.wait(7)
        end
    end
    task.wait(3)
    getgenv().Float = false
end)
NMCS.newLabel("Cards")
NMCS.newButton("Auto Cards", "", function()
    if not CustomFirePropmt then
        for i,v in pairs(game:GetService("Workspace"):GetChildren()) do 
            if v.Name == "stage" then 
                v:Destroy(true)
            end 
        end
        for i,v in pairs(Workspace:GetDescendants()) do
            if v.Parent.Name == "PassCode" then
                for x,c in pairs(Workspace:GetDescendants()) do
                    if c.Parent.Name == "Cards" then
                        if c.Order.SurfaceGui.TextLabel.Text == v.Name then
                            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(v.CFrame.Position)
                            repeat
                            fireproximityprompt(v.PROMPT)
                            task.wait(0.5)
                            until v[c.Name].Transparency == 0
                        end
                    end
                end
            end
        end
    else
        for i,v in pairs(game:GetService("Workspace"):GetChildren()) do 
            if v.Name == "stage" then 
                v:Destroy(true)
            end 
        end
        for i,v in pairs(Workspace:GetDescendants()) do
            if v.Parent.Name == "PassCode" then
                for x,c in pairs(Workspace:GetDescendants()) do
                    if c.Parent.Name == "Cards" then
                        if c.Order.SurfaceGui.TextLabel.Text == v.Name then
                            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(v.CFrame.Position)
                            repeat
                            fireproximitypromptv2(v.PROMPT, 1, true)
                            task.wait(0.5)
                            until v[c.Name].Transparency == 0
                        end
                    end
                end
            end
        end
    end
end)
NMCS.newButton("Reveal Cards", "", function()
    function createMenu()
        if not game.Players.LocalPlayer.PlayerGui:FindFirstChild("idk") then
            local idk = Instance.new("ScreenGui")
            local Frame = Instance.new("Frame")
            local UICorner = Instance.new("UICorner")
            local _2 = Instance.new("Frame")
            local UICorner_2 = Instance.new("UICorner")
            local ImageLabel = Instance.new("ImageLabel")
            local _6 = Instance.new("Frame")
            local UICorner_3 = Instance.new("UICorner")
            local ImageLabel_2 = Instance.new("ImageLabel")
            local _5 = Instance.new("Frame")
            local UICorner_4 = Instance.new("UICorner")
            local ImageLabel_3 = Instance.new("ImageLabel")
            local _3 = Instance.new("Frame")
            local UICorner_5 = Instance.new("UICorner")
            local ImageLabel_4 = Instance.new("ImageLabel")
            local _4 = Instance.new("Frame")
            local UICorner_6 = Instance.new("UICorner")
            local ImageLabel_5 = Instance.new("ImageLabel")
            local _1 = Instance.new("Frame")
            local UICorner_7 = Instance.new("UICorner")
            local ImageLabel_6 = Instance.new("ImageLabel")
            local _1t = Instance.new("TextLabel")
            local _2t = Instance.new("TextLabel")
            local _3t = Instance.new("TextLabel")
            local _4t = Instance.new("TextLabel")
            local _5t = Instance.new("TextLabel")
            local _6t = Instance.new("TextLabel")
            
            idk.Name = "idk"
            idk.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
            idk.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
            
            Frame.Parent = game.Players.LocalPlayer.PlayerGui.idk
            Frame.BackgroundColor3 = Color3.fromRGB(40, 40, 40)
            Frame.BorderColor3 = Color3.fromRGB(0, 0, 0)
            Frame.BorderSizePixel = 0
            Frame.Position = UDim2.new(0.00827690028, 0, 0.0244754981, 0)
            Frame.Size = UDim2.new(0, 590, 0, 156)
    
            UICorner.CornerRadius = UDim.new(0, 10)
            UICorner.Parent = Frame
    
            _2.Name = "2"
            _2.Parent = Frame
            _2.BackgroundColor3 = Color3.fromRGB(25, 25, 25)
            _2.BorderColor3 = Color3.fromRGB(0, 0, 0)
            _2.BorderSizePixel = 0
            _2.Position = UDim2.new(0.189877644, 0, 0.164706007, 0)
            _2.Size = UDim2.new(0, 75, 0, 118)
            _2.ZIndex = 6
    
            UICorner_2.CornerRadius = UDim.new(0, 10)
            UICorner_2.Parent = _2
    
            ImageLabel.Parent = _2
            ImageLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
            ImageLabel.BorderColor3 = Color3.fromRGB(0, 0, 0)
            ImageLabel.BorderSizePixel = 0
            ImageLabel.Position = UDim2.new(-1.0579427e-05, 0, 0, 0)
            ImageLabel.Size = UDim2.new(0, 75, 0, 118)
            ImageLabel.Image = "rbxasset://textures/ui/GuiImagePlaceholder.png"
    
            _6.Name = "6"
            _6.Parent = Frame
            _6.BackgroundColor3 = Color3.fromRGB(25, 25, 25)
            _6.BorderColor3 = Color3.fromRGB(0, 0, 0)
            _6.BorderSizePixel = 0
            _6.Position = UDim2.new(0.839581668, 0, 0.164706007, 0)
            _6.Size = UDim2.new(0, 75, 0, 118)
            _6.ZIndex = 3
    
            UICorner_3.CornerRadius = UDim.new(0, 10)
            UICorner_3.Parent = _6
    
            ImageLabel_2.Parent = _6
            ImageLabel_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
            ImageLabel_2.BorderColor3 = Color3.fromRGB(0, 0, 0)
            ImageLabel_2.BorderSizePixel = 0
            ImageLabel_2.Position = UDim2.new(-4.72005195e-05, 0, 0, 0)
            ImageLabel_2.Size = UDim2.new(0, 75, 0, 118)
            ImageLabel_2.Image = "rbxasset://textures/ui/GuiImagePlaceholder.png"
    
            _5.Name = "5"
            _5.Parent = Frame
            _5.BackgroundColor3 = Color3.fromRGB(25, 25, 25)
            _5.BorderColor3 = Color3.fromRGB(0, 0, 0)
            _5.BorderSizePixel = 0
            _5.Position = UDim2.new(0.680917144, 0, 0.164706007, 0)
            _5.Size = UDim2.new(0, 75, 0, 118)
            _5.ZIndex = 3
    
            UICorner_4.CornerRadius = UDim.new(0, 10)
            UICorner_4.Parent = _5
    
            ImageLabel_3.Parent = _5
            ImageLabel_3.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
            ImageLabel_3.BorderColor3 = Color3.fromRGB(0, 0, 0)
            ImageLabel_3.BorderSizePixel = 0
            ImageLabel_3.Position = UDim2.new(-3.82486978e-05, 0, 0, 0)
            ImageLabel_3.Size = UDim2.new(0, 75, 0, 118)
            ImageLabel_3.Image = "rbxasset://textures/ui/GuiImagePlaceholder.png"
    
            _3.Name = "3"
            _3.Parent = Frame
            _3.BackgroundColor3 = Color3.fromRGB(25, 25, 25)
            _3.BorderColor3 = Color3.fromRGB(0, 0, 0)
            _3.BorderSizePixel = 0
            _3.Position = UDim2.new(0.348542094, 0, 0.17058827, 0)
            _3.Size = UDim2.new(0, 75, 0, 118)
            _3.ZIndex = 6
    
            UICorner_5.CornerRadius = UDim.new(0, 10)
            UICorner_5.Parent = _3
    
            ImageLabel_4.Parent = _3
            ImageLabel_4.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
            ImageLabel_4.BorderColor3 = Color3.fromRGB(0, 0, 0)
            ImageLabel_4.BorderSizePixel = 0
            ImageLabel_4.Position = UDim2.new(-1.95312496e-05, 0, 0, 0)
            ImageLabel_4.Size = UDim2.new(0, 75, 0, 118)
            ImageLabel_4.Image = "rbxasset://textures/ui/GuiImagePlaceholder.png"
    
            _4.Name = "4"
            _4.Parent = Frame
            _4.BackgroundColor3 = Color3.fromRGB(25, 25, 25)
            _4.BorderColor3 = Color3.fromRGB(0, 0, 0)
            _4.BorderSizePixel = 0
            _4.Position = UDim2.new(0.513526142, 0, 0.171059042, 0)
            _4.Size = UDim2.new(0, 75, 0, 118)
            _4.ZIndex = 6
    
            UICorner_6.CornerRadius = UDim.new(0, 10)
            UICorner_6.Parent = _4
    
            ImageLabel_5.Parent = _4
            ImageLabel_5.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
            ImageLabel_5.BorderColor3 = Color3.fromRGB(0, 0, 0)
            ImageLabel_5.BorderSizePixel = 0
            ImageLabel_5.Position = UDim2.new(-2.76692717e-05, 0, 0, 0)
            ImageLabel_5.Size = UDim2.new(0, 75, 0, 118)
            ImageLabel_5.Image = "rbxasset://textures/ui/GuiImagePlaceholder.png"
    
            _1.Name = "1"
            _1.Parent = Frame
            _1.BackgroundColor3 = Color3.fromRGB(25, 25, 25)
            _1.BorderColor3 = Color3.fromRGB(0, 0, 0)
            _1.BorderSizePixel = 0
            _1.Position = UDim2.new(0.0312131681, 0, 0.164706007, 0)
            _1.Size = UDim2.new(0, 75, 0, 118)
            _1.ZIndex = 6
    
            UICorner_7.CornerRadius = UDim.new(0, 10)
            UICorner_7.Parent = _1
    
            ImageLabel_6.Parent = _1
            ImageLabel_6.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
            ImageLabel_6.BorderColor3 = Color3.fromRGB(0, 0, 0)
            ImageLabel_6.BorderSizePixel = 0
            ImageLabel_6.Position = UDim2.new(-1.72932948e-06, 0, 0, 0)
            ImageLabel_6.Size = UDim2.new(0, 75, 0, 118)
            ImageLabel_6.Image = "rbxasset://textures/ui/GuiImagePlaceholder.png"
    
            _1t.Name = "1t"
            _1t.Parent = Frame
            _1t.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
            _1t.BackgroundTransparency = 1.000
            _1t.BorderColor3 = Color3.fromRGB(0, 0, 0)
            _1t.BorderSizePixel = 0
            _1t.Position = UDim2.new(0.0312131681, 0, 5.50196724e-08, 0)
            _1t.Size = UDim2.new(0, 75, 0, 25)
            _1t.Font = Enum.Font.SourceSansBold
            _1t.Text = "1"
            _1t.TextColor3 = Color3.fromRGB(255, 255, 255)
            _1t.TextSize = 21.000
    
            _2t.Name = "2t"
            _2t.Parent = Frame
            _2t.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
            _2t.BackgroundTransparency = 1.000
            _2t.BorderColor3 = Color3.fromRGB(0, 0, 0)
            _2t.BorderSizePixel = 0
            _2t.Position = UDim2.new(0.188921273, 0, 5.50196724e-08, 0)
            _2t.Size = UDim2.new(0, 75, 0, 25)
            _2t.Font = Enum.Font.SourceSansBold
            _2t.Text = "2"
            _2t.TextColor3 = Color3.fromRGB(255, 255, 255)
            _2t.TextSize = 21.000
    
            _3t.Name = "3t"
            _3t.Parent = Frame
            _3t.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
            _3t.BackgroundTransparency = 1.000
            _3t.BorderColor3 = Color3.fromRGB(0, 0, 0)
            _3t.BorderSizePixel = 0
            _3t.Position = UDim2.new(0.348272145, 0, 0.00588241592, 0)
            _3t.Size = UDim2.new(0, 75, 0, 25)
            _3t.Font = Enum.Font.SourceSansBold
            _3t.Text = "3"
            _3t.TextColor3 = Color3.fromRGB(255, 255, 255)
            _3t.TextSize = 21.000
    
            _4t.Name = "4t"
            _4t.Parent = Frame
            _4t.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
            _4t.BackgroundTransparency = 1.000
            _4t.BorderColor3 = Color3.fromRGB(0, 0, 0)
            _4t.BorderSizePixel = 0
            _4t.Position = UDim2.new(0.512551308, 0, 0.00588241592, 0)
            _4t.Size = UDim2.new(0, 75, 0, 25)
            _4t.Font = Enum.Font.SourceSansBold
            _4t.Text = "4"
            _4t.TextColor3 = Color3.fromRGB(255, 255, 255)
            _4t.TextSize = 21.000
    
            _5t.Name = "5t"
            _5t.Parent = Frame
            _5t.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
            _5t.BackgroundTransparency = 1.000
            _5t.BorderColor3 = Color3.fromRGB(0, 0, 0)
            _5t.BorderSizePixel = 0
            _5t.Position = UDim2.new(0.680116177, 0, 0.00588241592, 0)
            _5t.Size = UDim2.new(0, 75, 0, 25)
            _5t.Font = Enum.Font.SourceSansBold
            _5t.Text = "5"
            _5t.TextColor3 = Color3.fromRGB(255, 255, 255)
            _5t.TextSize = 21.000
    
            _6t.Name = "6t"
            _6t.Parent = Frame
            _6t.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
            _6t.BackgroundTransparency = 1.000
            _6t.BorderColor3 = Color3.fromRGB(0, 0, 0)
            _6t.BorderSizePixel = 0
            _6t.Position = UDim2.new(0.839467049, 0, 5.50196724e-08, 0)
            _6t.Size = UDim2.new(0, 75, 0, 25)
            _6t.Font = Enum.Font.SourceSansBold
            _6t.Text = "6"
            _6t.TextColor3 = Color3.fromRGB(255, 255, 255)
            _6t.TextSize = 21.000
        end
    end
    for i,v in pairs(Workspace:GetDescendants()) do
        if v:FindFirstChild("card") and v:FindFirstChild("Order") then
            createMenu()
            if v.Order.SurfaceGui.TextLabel.Text == "1" then
                game.Players.LocalPlayer.PlayerGui.idk.Frame["1"].ImageLabel.Image = v.card.TextureID
            elseif v.Order.SurfaceGui.TextLabel.Text == "2" then
                game.Players.LocalPlayer.PlayerGui.idk.Frame["2"].ImageLabel.Image = v.card.TextureID
            elseif v.Order.SurfaceGui.TextLabel.Text == "3" then
                game.Players.LocalPlayer.PlayerGui.idk.Frame["3"].ImageLabel.Image = v.card.TextureID
            elseif v.Order.SurfaceGui.TextLabel.Text == "4" then
                game.Players.LocalPlayer.PlayerGui.idk.Frame["4"].ImageLabel.Image = v.card.TextureID
            elseif v.Order.SurfaceGui.TextLabel.Text == "5" then
                game.Players.LocalPlayer.PlayerGui.idk.Frame["5"].ImageLabel.Image = v.card.TextureID
            elseif v.Order.SurfaceGui.TextLabel.Text == "6" then
                game.Players.LocalPlayer.PlayerGui.idk.Frame["6"].ImageLabel.Image = v.card.TextureID
            end
        end
    end
end)
NMCS.newButton("Destroy stage", "so Ringmaster can't kill you during flip card'", function()
    for i,v in pairs(game:GetService("Workspace"):GetChildren()) do 
        if v.Name == "stage" then 
            v:Destroy(true)
        end 
    end
end)
NMCS.newLabel("Ringmaster | Boss")
NMCS.newButton("Auto Kill", "", function()
    if not CustomFirePropmt then
        getgenv().Float = true
        workspace.Section3.Boss.MagicianBoss.AnimationController.AnimationPlayed:Connect(function(anima)
            while true do
                if anima.Speed < 0.1 then
                    if Backpack:FindFirstChild("Knife") then
                        Backpack.Knife.Parent = char
                    elseif not Backpack:FindFirstChild("Knife") and not char:FindFirstChild("Knife") then
                        char.HumanoidRootPart.CFrame = CFrame.new(Workspace.Section3.Boss.WeaponGiver.WorldPivot.Position)
                        task.wait(0.3)
                        fireproximityprompt(Workspace.Section3.Boss.WeaponGiver.ProxPart.ProximityPrompt)
                        task.wait(0.3)
                    elseif not Backpack:FindFirstChild("Knife") and char:FindFirstChild("Knife") then
                        
                    else

                    end
                    if workspace.Section3.Boss.DamageParts.Combo1.Transparency == 0 then
                        char.HumanoidRootPart.CFrame = workspace.Section3.Boss.MagicianBoss.RightHitbox.CFrame
                        char.Knife:Activate()
                    elseif workspace.Section3.Boss.DamageParts.Combo2.Transparency == 0 or workspace.Section3.Boss.DamageParts.SlamAttack then
                        char.HumanoidRootPart.CFrame = workspace.Section3.Boss.MagicianBoss.LeftHitbox.CFrame
                        char.Knife:Activate()
                    else
    
                    end
                    task.wait()
                else
                    Tp(-1654.51294, 28.076046, -969.053711, nil)
                end
                wait(0.1)
            end
        end)
    else
        getgenv().Float = true
        workspace.Section3.Boss.MagicianBoss.AnimationController.AnimationPlayed:Connect(function(anima)
            while true do
                if anima.Speed < 0.1 then
                    if Backpack:FindFirstChild("Knife") then
                        Backpack.Knife.Parent = char
                    elseif not Backpack:FindFirstChild("Knife") and not char:FindFirstChild("Knife") then
                        char.HumanoidRootPart.CFrame = CFrame.new(Workspace.Section3.Boss.WeaponGiver.WorldPivot.Position)
                        task.wait(0.3)
                        fireproximitypromptv2(Workspace.Section3.Boss.WeaponGiver.ProxPart.ProximityPrompt, 1, true)
                        task.wait(0.3)
                    elseif not Backpack:FindFirstChild("Knife") and char:FindFirstChild("Knife") then
                        
                    else

                    end
                    if workspace.Section3.Boss.DamageParts.Combo1.Transparency == 0 then
                        char.HumanoidRootPart.CFrame = workspace.Section3.Boss.MagicianBoss.RightHitbox.CFrame
                        char.Knife:Activate()
                    elseif workspace.Section3.Boss.DamageParts.Combo2.Transparency == 0 or workspace.Section3.Boss.DamageParts.SlamAttack then
                        char.HumanoidRootPart.CFrame = workspace.Section3.Boss.MagicianBoss.LeftHitbox.CFrame
                        char.Knife:Activate()
                    else
    
                    end
                    task.wait()
                else
                    Tp(-1654.51294, 28.076046, -969.053711, nil)
                end
                wait(0.1)
            end
        end)
    end
end)
NMCS.newButton("No Dmg From Ringmaster", "90%", function()
    for _,v in pairs(workspace:GetDescendants()) do
        if v:IsA("Part") and v.Parent.Name == "MagicianBoss"or v:IsA("MeshPart") and v.Parent.Name == "MagicianBoss" then
            v.CanTouch = false
        end
    end
    for _,v in pairs(workspace:GetDescendants()) do
        if v:IsA("Part") and v.Parent.Name == "DamageParts" or v:IsA("MeshPart") and v.Parent.Name == "DamageParts" or v:IsA("UnionOperation") and v.Parent.Name == "DamageParts" then
            v.CanTouch = false
        end
    end
    for _,v in pairs(workspace:GetDescendants()) do
        if v:IsA("Part") and v.Parent.Name == "Pair" or v:IsA("MeshPart") and v.Parent.Name == "Pair" or v:IsA("UnionOperation") and v.Parent.Name == "Pair" then
            v.CanTouch = false
        end
    end
end)


--Jigoku Tab
local Jigoku = DrRayLibrary.newTab("Jigoku")
Jigoku.newLabel("Tutorial")
Jigoku.newButton("Read", "", function()
    
end)
Jigoku.newLabel("Teleport")
Jigoku.newButton("Teleport To Place", "", function()
    game:GetService("TeleportService"):Teleport(7618863566, player)
end)
Jigoku.newLabel("Jigoku")
Jigoku.newButton("Auto Win", "If custom prompt then look up", function()
    if not CustomFirePropmt then
        if FirstPressJigoku then
            Tp(607.54, 11.91, 1080, nil)
            Fluent:Notify({
                Title = "Error 00",
                Content = "WAITTT wait 11 second and it will teleport you ||||| DONT PRESS THE AUTO WIN AGAIN ||||| You can read tutorial for more information",
                Duration = 11
            })
            task.wait(11)
            for i, v in pairs(Workspace:GetDescendants()) do
                if v:IsA("ProximityPrompt") and v.Parent:IsA("BasePart")  then
                    game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = v.Parent.CFrame
                    task.wait(0.3)
                    fireproximityprompt(v)
                end
            end
        else
            for i, v in pairs(Workspace:GetDescendants()) do
                if v:IsA("ProximityPrompt") and v.Parent:IsA("BasePart")  then
                    game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = v.Parent.CFrame
                    task.wait(0.3)
                    fireproximityprompt(v)
                end
            end
        end
    else
        if FirstPressJigoku then
            Tp(607.54, 11.91, 1080, nil)
            Fluent:Notify({
                Title = "Error 00",
                Content = "WAITTT wait 11 second and it will teleport you ||||| DONT PRESS THE AUTO WIN AGAIN ||||| You can read tutorial for more information",
                Duration = 11
            })
            Fluent:Notify({
                Title = "Error 00",
                Content = "LOOK UP AFTER CUTSCENE, BE FAST",
                Duration = 11
            })
            getgenv().Float = true
            task.wait(11)
            for i, v in pairs(Workspace:GetDescendants()) do
                if v:IsA("ProximityPrompt") and v.Parent:IsA("BasePart")  then
                    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(v.Parent.Position.X, v.Parent.Position.Y + 2.7, v.Parent.Position.Z)
                    task.wait(0.3)
                    fireproximitypromptv2(v, 1, true)
                end
            end
            task.wait()
            getgenv().Float = false
        else
            getgenv().Float = true
            for _,v in pairs(game.Players.LocalPlayer.Character:GetDescendants()) do
                if v:IsA('BasePart') and v.CanCollide and v.Name ~= floatName then
                    v.CanCollide = false
                end
            end
            task.wait()
            for i, v in pairs(Workspace:GetDescendants()) do
                if v:IsA("ProximityPrompt") and v.Parent:IsA("BasePart")  then
                    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(v.Parent.Position.X, v.Parent.Position.Y - 8, v.Parent.Position.Z)
                    v.RequiresLineOfSight = false
                    v.MaxActivationDistance = 20
                    task.wait(0.3)
                    fireproximitypromptv2(v, 1, true)
                end
            end
            task.wait()
            getgenv().Float = false
            for _,v in pairs(game.Players.LocalPlayer.Character:GetDescendants()) do
                if v:IsA('BasePart') and v.CanCollide and v.Name ~= floatName then
                    v.CanCollide = true
                end
            end
        end
    end
end)

--Setting Tab
local Setting = DrRayLibrary.newTab("Settings")
Setting.newLabel("Main Settings")
Setting.newToggle("Hide/Show", "W A S D Buttons", false, function(Value)
    if Value then
        game.CoreGui["InputPcToMobile"].W.Visible = false
        game.CoreGui["InputPcToMobile"].A.Visible = false
        game.CoreGui["InputPcToMobile"].S.Visible = false
        game.CoreGui["InputPcToMobile"].D.Visible = false
    else
        game.CoreGui["InputPcToMobile"].W.Visible = true
        game.CoreGui["InputPcToMobile"].A.Visible = true
        game.CoreGui["InputPcToMobile"].S.Visible = true
        game.CoreGui["InputPcToMobile"].D.Visible = true
    end
end)
Setting.newToggle("Up/Down", "W A S D Buttons", true, function(Value)
    if Value then
        game.CoreGui["InputPcToMobile"].W.Position = UDim2.new(0.05, 0, 0.1, 0)
        game.CoreGui["InputPcToMobile"].A.Position = UDim2.new(0, 0, 0.2, 0)
        game.CoreGui["InputPcToMobile"].S.Position = UDim2.new(0.05, 0, 0.3, 0)
        game.CoreGui["InputPcToMobile"].D.Position = UDim2.new(0.1, 0, 0.2, 0)
    else
        game.CoreGui["InputPcToMobile"].W.Position = UDim2.new(0.05, 0, 0.7, 0)
        game.CoreGui["InputPcToMobile"].A.Position = UDim2.new(0, 0, 0.8, 0)
        game.CoreGui["InputPcToMobile"].S.Position = UDim2.new(0.05, 0, 0.9, 0)
        game.CoreGui["InputPcToMobile"].D.Position = UDim2.new(0.1, 0, 0.8, 0)
    end
end)
Setting.newToggle("Big/Small", "W A S D Buttons", false, function(Value)
    if Value then
        game.CoreGui["InputPcToMobile"].W.Size = UDim2.new(0.1, 0, 0.1, 0)
        game.CoreGui["InputPcToMobile"].A.Size = UDim2.new(0.1, 0, 0.1, 0)
        game.CoreGui["InputPcToMobile"].S.Size = UDim2.new(0.1, 0, 0.1, 0)
        game.CoreGui["InputPcToMobile"].D.Size = UDim2.new(0.1, 0, 0.1, 0)
    else
        game.CoreGui["InputPcToMobile"].W.Size = UDim2.new(0.05, 0, 0.05, 0)
        game.CoreGui["InputPcToMobile"].A.Size = UDim2.new(0.05, 0, 0.05, 0)
        game.CoreGui["InputPcToMobile"].S.Size = UDim2.new(0.05, 0, 0.05, 0)
        game.CoreGui["InputPcToMobile"].D.Size = UDim2.new(0.05, 0, 0.05, 0)
    end
end)
Setting.newToggle("Custom Prompt", "Method 2", true, function(Value)
    if Value then
        CustomFirePropmt = true
    else
        CustomFirePropmt = false
    end
end)


--Credits Tab
local Credits = DrRayLibrary.newTab("Credits")
Credits.newLabel("Developer - ttjy.")
Credits.newLabel("Bypasser - ttjy.")
Credits.newLabel("Bypasser - Bedol Hub")
Credits.newLabel("Bypasser - Poom Hub")
Credits.newLabel("Ui - ttjy.")
Credits.newLabel("Helper - Uranium Hub")
Credits.newLabel("Helper - Ktollt")
Credits.newLabel("Helper - Xvasx")





if game.CoreGui:FindFirstChild("TTJY HUB2") then
    game.CoreGui:FindFirstChild("TTJY HUB2"):Destroy()
end

local screenGui77 = Instance.new("ScreenGui")
screenGui77.Name = "TTJY HUB2"
screenGui77.Parent = game.CoreGui

local textButton77 = Instance.new("TextButton")
textButton77.Text = "Console"
textButton77.Size = UDim2.new(0, 100, 0, 50)
textButton77.Position = UDim2.new(0.6, -45, 0, -40)
textButton77.TextColor3 = Color3.new(1, 0, 0)
textButton77.BackgroundColor3 = Color3.new(0, 0, 0)
textButton77.BackgroundTransparency = 0.7
textButton77.Parent = screenGui77

local function onButtonClick2()
    gui.Enabled = not gui.Enabled
end

textButton77.MouseButton1Click:Connect(onButtonClick2)
finishload = true
