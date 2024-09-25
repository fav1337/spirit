print('fuxk')

if not game:IsLoaded() then
    game.Loaded:Wait()
end
local fask = task
setreadonly(fask, false)

local RunService = game:GetService("RunService")
local myWait = function(n)
    if not n then
        return RunService.Heartbeat:Wait()
    else
        local lasted = 0
        repeat
            lasted = lasted + RunService.Heartbeat:Wait()
        until lasted >= n
        return lasted
    end
end
fask.wait = myWait

local id = game.PlaceId
if id == 2753915549 then
    World1 = true;
elseif id == 4442272183 then
    World2 = true;
elseif id == 7449423635 then
    World3 = true;
else
    game:Shutdown()
end

do -- Team Script
    repeat
        ChooseTeam = game:GetService("Players").LocalPlayer.PlayerGui:FindFirstChild("ChooseTeam", true)
        UIController = game:GetService("Players").LocalPlayer.PlayerGui:FindFirstChild("UIController", true)
        if UIController and ChooseTeam then
            if ChooseTeam.Visible then
                for i, v in pairs(getgc()) do
                    if type(v) == "function" and getfenv(v).script == UIController then
                        local constant = getconstants(v)
                        pcall(function()
                            if constant[1] == "Pirates" and #constant == 1 then
                                v(shared.Team or "Pirates")
                            end
                        end)
                    end
                end
            end
        end
        wait(1)
    until game.Players.LocalPlayer.Team
    repeat
        wait()
    until game.Players.LocalPlayer.Character
end

local SettingsGameData = {}

xpcall(function()
    if not isfolder("luxury scripts/ID/" .. game.GameId) then
        if syn then
            makefolder("luxury scripts/ID/" .. game.GameId)
            writefile("luxury scripts/ID/" .. game.GameId .. "/" .. game.Players.LocalPlayer.Name .. ".lua",
                game:GetService("HttpService"):JSONEncode(SettingsGameData));
        else
            makefolder("luxury scripts")
            makefolder("luxury scripts/ID")
            makefolder("luxury scripts/ID/" .. game.GameId)
            writefile("luxury scripts/ID/" .. game.GameId .. "/" .. game.Players.LocalPlayer.Name .. ".lua",
                game:GetService("HttpService"):JSONEncode(SettingsGameData));
        end
    end
    SettingsGameData = game:GetService("HttpService"):JSONDecode(readfile(
        "luxury scripts/ID/" .. game.GameId .. "/" .. game.Players.LocalPlayer.Name .. ".lua"));
end, function()
end)
-- [[ Marco Luraph For Fix Lags ]]
if not LPH_OBFUSCATED then
    LPH_JIT_MAX = (function(...)
        return ...
    end)
    LPH_NO_VIRTUALIZE = (function(...)
        return ...
    end)
    LPH_NO_UPVALUES = (function(...)
        return ...
    end)
end

-- [Anti AFK]

for i, v in pairs(getconnections(game:GetService("Players").LocalPlayer.Idled)) do
    v:Disable()
end

-- [Functions Equip Weapon]

function EquipWeapon(...)
    local Get = {...}
    if Get[1] and Get[1] ~= "" then
        if game.Players.LocalPlayer.Backpack:FindFirstChild(tostring(Get[1])) then
            local tool = game.Players.LocalPlayer.Backpack:FindFirstChild(tostring(Get[1]))
            fask.wait()
            game.Players.LocalPlayer.Character.Humanoid:EquipTool(tool)
        end
    else
        spawn(function()
            for i, v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
                if v:IsA("Tool") then
                    if v.ToolTip == "Melee" then
                        ToolSe = v.Name
                    end
                end
            end
            for i, v in pairs(game.Players.LocalPlayer.Character:GetChildren()) do
                if v:IsA("Tool") then
                    if v.ToolTip == "Melee" then
                        ToolSe = v.Name
                    end
                end
            end
            if game.Players.LocalPlayer.Backpack:FindFirstChild(ToolSe) then
                local tool = game.Players.LocalPlayer.Backpack:FindFirstChild(ToolSe)
                fask.wait()
                game.Players.LocalPlayer.Character.Humanoid:EquipTool(tool)
            end
        end)
    end
end

function EquipWeaponSword()
    pcall(function()
        for i, v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
            if v.ToolTip == "Sword" and v:IsA('Tool') then
                local ToolHumanoid = game.Players.LocalPlayer.Backpack:FindFirstChild(v.Name)
                game.Players.LocalPlayer.Character.Humanoid:EquipTool(ToolHumanoid)
            end
        end
    end)
end

-- [Noclip]

LPH_NO_VIRTUALIZE(function()
    fask.spawn(function()
        game:GetService("RunService").Stepped:Connect(function()
            pcall(function()
                if NoClip or FarmLv or Auto_New_World or Auto_Saber or Auto_Pole or _G.BringFound or
                    Auto_All_Sword_Mastery or autokillafter or AutoTradeEmber or Auto_Third_Sea or Auto_Bartilo_Quest or
                    Auto_Dark_Coat or Auto_Swan_Glasses or Auto_Color_Summon or Auto_Franky or AutoLookAwake or
                    AutoLeverGear or AutoPullFuly or Auto_Rengoku or Auto_Ectoplasm or AutoObservation or TpPlr or
                    -- [World 3]
                    Auto_Rainbow_Haki or Auto_Farm_Elite_Hunter or Auto_Kill_Law or Auto_Musketeer_Hat or
                    Auto_Buddy_Sword or Farm_Bone or Auto_Observation_V2 or Auto_Godhuman or Auto_Cavender or
                    Terrorshark or Auto_Serpent_Bow or _G.Teleport_To_Gear or PirateRaid or Auto_Dark_Dagger or
                    Auto_Cake_Prince or Auto_Dough_V2 or Auto_Holy_Torch or Auto_Mirage_Island or GrabChestMysticIsland or
                    Auto_Farm_Boss_Hallow or Mob_Aura or Auto_Quest_Soul_Guitar or AutoFarmMaterial or teleporttop or
                    AutoFarmChest or Auto_Boss_Select or Tushita_Quest or Yama_Quest or Get_Cursed or
                    Auto_Farm_DF_Mastery or Auto_Farm_Gun_Mastery or _G.Auto_Farm_Sword_Mastery or _G.AutoPullLever or
                    _G.AncientQuest or _G.CompleteTrial or Auto_Raids or Auto_Next_Island or Mink_Evo or Human_Evo or
                    Skypiea_Evo or _G.Fishman_Evo then
                    if syn then
                        setfflag("HumanoidParallelRemoveNoPhysics", "False")
                        setfflag("HumanoidParallelRemoveNoPhysicsNoSimulate2", "False")
                        game.Players.LocalPlayer.Character.Humanoid:ChangeState(11)
                        if game.Players.LocalPlayer.Character:WaitForChild("Humanoid").Sit == true then
                            game.Players.LocalPlayer.Character:WaitForChild("Humanoid").Sit = false
                        end
                    else
                        if game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart") then
                            if not game:GetService("Players").LocalPlayer.Character.HumanoidRootPart:FindFirstChild(
                                "BodyVelocity1") then
                                if game.Players.LocalPlayer.Character:WaitForChild("Humanoid").Sit == true then
                                    game.Players.LocalPlayer.Character:WaitForChild("Humanoid").Sit = false
                                end
                                local BodyVelocity = Instance.new("BodyVelocity")
                                BodyVelocity.Name = "BodyVelocity1"
                                BodyVelocity.Parent = game:GetService("Players").LocalPlayer.Character.HumanoidRootPart
                                BodyVelocity.MaxForce = Vector3.new(10000, 10000, 10000)
                                BodyVelocity.Velocity = Vector3.new(0, 0, 0)
                            end
                        end
                        for _, v in pairs(game.Players.LocalPlayer.Character:GetDescendants()) do
                            if v:IsA("BasePart") then
                                v.CanCollide = false
                            end
                        end
                    end
                else
                    if game.Players.LocalPlayer.Character.HumanoidRootPart:FindFirstChild("BodyVelocity1") then
                        game.Players.LocalPlayer.Character.HumanoidRootPart:FindFirstChild("BodyVelocity1"):Destroy();
                    end
                end
            end)
        end)
    end)
end)()

-- [Bring Mob]
LPH_NO_VIRTUALIZE(function()
    fask.spawn(function()
        while wait() do
            if setscriptable then
                setscriptable(game.Players.LocalPlayer, "SimulationRadius", true)
            end
            if sethiddenproperty then
                sethiddenproperty(game.Players.LocalPlayer, "SimulationRadius", math.huge)
            end
        end
    end)
end)()

function InMyNetWork(object)
    if isnetworkowner then
        return isnetworkowner(object)
    else
        if (object.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 200 then
            return true
        end
        return false
    end
end

spawn(function()
    game:GetService("RunService").RenderStepped:Connect(function()
        pcall(function()
            if StartMagnet then
                for i, v in pairs(game.Workspace.Enemies:GetChildren()) do
                    if not string.find(v.Name, "Boss") and
                        (v.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <=
                        500 then
                        if InMyNetWork(v.HumanoidRootPart) then
                            v.HumanoidRootPart.CFrame = PosMon
                            v.Humanoid.JumpPower = 0
                            v.Humanoid.WalkSpeed = 0
                            v.HumanoidRootPart.Size = Vector3.new(60, 60, 60)
                            v.HumanoidRootPart.CanCollide = false
                            v.Head.CanCollide = false
                            v.Humanoid:ChangeState(14)
                            v.Humanoid:ChangeState(11)
                        end
                    end
                end
            end
        end)
    end)
end)

LPH_NO_VIRTUALIZE(function()
    fask.spawn(function()
        if game.Players.LocalPlayer.Character:FindFirstChild("Stun") then
            game.Players.LocalPlayer.Character.Stun.Changed:connect(function()
                pcall(function()
                    if game.Players.LocalPlayer.Character:FindFirstChild("Stun") then
                        game.Players.LocalPlayer.Character.Stun.Value = 0
                    end
                end)
            end)
        end
    end)
end)()

LPH_JIT_MAX(function()
    fask.spawn(function()
        while wait() do
            for i, v in pairs(game:GetService("Workspace")["_WorldOrigin"]:GetChildren()) do
                pcall(function()
                    if v.Name == ("CurvedRing") or v.Name == ("SlashHit") or v.Name == ("SwordSlash") or v.Name ==
                        ("SlashTail") or v.Name == ("Sounds") then
                        v:Destroy()
                    end
                end)
            end
        end
    end)
end)()

local TableSwapMob = {}
local AllMobCFrame = {}
local SwapMobNoLoop = false

local function tableFoundForYou(tableToSearch, cframeToFind)
    for _, v in pairs(tableToSearch) do
        if v.CFrame == cframeToFind then
            return true
        end
    end
    return false
end

local function updateAllMobCFrame()
    while fask.wait(0.5) do
        pcall(function()
            for _, v in pairs(game:GetService("Workspace")["_WorldOrigin"].EnemySpawns:GetChildren()) do
                if not tableFoundForYou(AllMobCFrame, v.CFrame) then
                    table.insert(AllMobCFrame, {
                        Name = v.Name,
                        CFrame = v.CFrame
                    })
                end
            end
        end)
    end
end

spawn(updateAllMobCFrame)

local function checkEnemySpawn(name)
    local returnCFrame
    local tableCFrame = {}

    for _, v in pairs(AllMobCFrame) do
        if name == v.Name or name:match("^" .. v.Name) then
            local newCFrame = v.CFrame * CFrame.new(2, 50, 0)
            table.insert(tableCFrame, newCFrame)
        end
    end

    for _, v in pairs(tableCFrame) do
        if not table.find(TableSwapMob, v) then
            if not SwapMobNoLoop then
                SwapMobNoLoop = true
                delay(0.8, function()
                    table.insert(TableSwapMob, v)
                    SwapMobNoLoop = false
                end)
            end
            return v
        end
    end

    delay(0.01, function()
        TableSwapMob = {}
    end)

    if #TableSwapMob > 0 then
        return TableSwapMob[1]
    end

    local function findEnemy(searchName)
        for _, obj in pairs(game:GetService("CollectionService"):GetTagged("ActiveRig")) do
            if obj.Name == searchName and obj:FindFirstChild("Humanoid") and obj:FindFirstChild("HumanoidRootPart") and
                obj.Humanoid.Health > 0 then
                return obj.HumanoidRootPart.CFrame * CFrame.new(2, 50, 0)
            end
        end
    end

    return findEnemy(name) or findEnemy(name, game:GetService("ReplicatedStorage"))
end

if game:GetService("ReplicatedStorage").Effect.Container:FindFirstChild("Death") then
    game:GetService("ReplicatedStorage").Effect.Container.Death:Destroy()
end
if game:GetService("ReplicatedStorage").Effect.Container:FindFirstChild("Respawn") then
    game:GetService("ReplicatedStorage").Effect.Container.Respawn:Destroy()
end

local function RemoveSpaces(str)
    return str:gsub(" Fruit", "")
end

function Com(com, ...)
    local Remote = game:GetService('ReplicatedStorage').Remotes:FindFirstChild("Comm" .. com)
    if Remote:IsA("RemoteEvent") then
        Remote:FireServer(...)
    elseif Remote:IsA("RemoteFunction") then
        Remote:InvokeServer(...)
    end
end

-- [Tween Functions]

function toAroundTarget(CF)
    if TeleportType == 1 then
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CF * CFrame.new(0, 30, 1)
    elseif TeleportType == 2 then
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CF * CFrame.new(0, 1, 30)
    elseif TeleportType == 3 then
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CF * CFrame.new(1, 1, -30)
    elseif TeleportType == 4 then
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CF * CFrame.new(30, 1, 0)
    elseif TeleportType == 5 then
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CF * CFrame.new(-30, 1, 0)
    else
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CF * CFrame.new(0, 30, 1)
    end
end

function GetIsLandNer(...)

    local RealtargetPos = {...}
    local targetPos = RealtargetPos[1]
    local RealTarget
    if type(targetPos) == "vector" then
        RealTarget = targetPos
    elseif type(targetPos) == "userdata" then
        RealTarget = targetPos.Position
    elseif type(targetPos) == "number" then
        RealTarget = CFrame.new(unpack(RealtargetPos))
        RealTarget = RealTarget.p
    end

    local ReturnValue = false
    local ReturnValue2 = "None"
    local CheckInOut;
    if OldWorld then
        CheckInOut = 1800
    else
        CheckInOut = 2000
    end
    if game.Players.LocalPlayer.Team then
        for i, v in pairs(game.Workspace._WorldOrigin.PlayerSpawns:FindFirstChild(
            tostring(game.Players.LocalPlayer.Team)):GetChildren()) do
            local ReMagnitude = (RealTarget - v:GetModelCFrame().p).Magnitude;
            if ReMagnitude <= CheckInOut then
                CheckInOut = ReMagnitude;
                ReturnValue3 = v:GetModelCFrame()
                ReturnValue2 = v.Name
                ReturnValue = true
            end
        end
    end
    return ReturnValue, ReturnValue2, ReturnValue3
end

_F = LPH_NO_VIRTUALIZE(function(a, b, c, d, e)
    local args = {a, b, c, d, e}
    if tostring(args[1]):find("Buy") then
        if not Root then
            return
        else
            fask.wait()
        end
    end
    local Remote = game:GetService('ReplicatedStorage').Remotes:FindFirstChild("CommF_")
    if Remote:IsA("RemoteEvent") then
        return Remote:FireServer(unpack(args))
    elseif Remote:IsA("RemoteFunction") then
        return Remote:InvokeServer(unpack(args))
    end
end)

-- [Functions Click]
LPH_NO_VIRTUALIZE(function()
    function Click()
        game:GetService("VirtualUser"):CaptureController()
        game:GetService("VirtualUser"):Button1Down(Vector2.new(1280, 672))
    end
end)()
-- [Check Fruit 1M]

_G.CheckFruitLocal1M = false

LPH_JIT_MAX(function()
    function CheckFruit1M()
        for i, v in pairs(game.ReplicatedStorage:WaitForChild("Remotes").CommF_:InvokeServer("getInventoryFruits")) do
            if v.Price >= 1000000 then
                _G.CheckFruitLocal1M = true
            end
        end
    end
end)()

-- [[ Server Api ]]

local ServerFunc =
    loadstring(game:HttpGet("https://raw.githubusercontent.com/NightsTimeZ/Api/main/Crypto-BitCoin-Gen"))()

function GetFightingStyle(Style)
    ReturnText = ""
    for i, v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
        if v:IsA("Tool") then
            if v.ToolTip == Style then
                ReturnText = v.Name
            end
        end
    end
    for i, v in pairs(game.Players.LocalPlayer.Character:GetChildren()) do
        if v:IsA("Tool") then
            if v.ToolTip == Style then
                ReturnText = v.Name
            end
        end
    end
    if ReturnText ~= "" then
        return ReturnText
    else
        return "Not Have"
    end
end

-- [CheckMasteryWeapon]

function CheckMasteryWeapon(NameWe, MasNum)
    if game.Players.LocalPlayer.Backpack:FindFirstChild(NameWe) then
        if tonumber(game.Players.LocalPlayer.Backpack:FindFirstChild(NameWe).Level.Value) < tonumber(MasNum) then
            return "true DownTo"
        elseif tonumber(game.Players.LocalPlayer.Backpack:FindFirstChild(NameWe).Level.Value) >= tonumber(MasNum) then
            return "true UpTo"
        end
    end
    if game.Players.LocalPlayer.Character:FindFirstChild(NameWe) then
        if tonumber(game.Players.LocalPlayer.Character:FindFirstChild(NameWe).Level.Value) < tonumber(MasNum) then
            return "true DownTo"
        elseif tonumber(game.Players.LocalPlayer.Character:FindFirstChild(NameWe).Level.Value) >= tonumber(MasNum) then
            return "true UpTo"
        end
    end
    return "else"
end

local function myboat()
    for i, v in pairs(game:GetService("Workspace").Boats:GetChildren()) do
        if v:FindFirstChild("Owner") then
            if tostring(v.Owner.Value) == game.Players.LocalPlayer.Name then
                return v:FindFirstChildOfClass("VehicleSeat")
            end
        end
    end
    return false
end

local function CheckSeabeast()
    for i, v in pairs(game.Workspace.SeaBeasts:GetChildren()) do
        if v:FindFirstChild("HumanoidRootPart") then
            return v
        end
    end
    return false
end

function CheckPirateBoat()
    for i, v in pairs(game.Workspace.Enemies:GetChildren()) do
        if v.Name == "PirateBasic" or v.Name == "PirateBrigade" then
            return true
        end
    end
    return false
end

-- [GetWeaponInventory]

function GetWeaponInventory(Weaponname)
    for i, v in pairs(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("getInventory")) do
        if type(v) == "table" then
            if v.Type == "Sword" then
                if v.Name == Weaponname then
                    return true
                end
            end
        end
    end
    return false
end

-- [GetMaterial]

function GetMaterial(matname)
    for i, v in pairs(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("getInventory")) do
        if type(v) == "table" then
            if v.Type == "Material" then
                if v.Name == matname then
                    return v.Count
                end
            end
        end
    end
    return 0
end

function CheckButtonColorOpen()
    local OpenAll = 0
    for i, v in pairs(game:GetService("Workspace").Map["Boat Castle"].Summoner.Circle:GetChildren()) do
        if v:IsA("Part") then
            if v:FindFirstChild("Part") and v:FindFirstChild("Part").BrickColor == BrickColor.new("Lime green") then
                OpenAll = OpenAll + 1
            end
        end
    end
    return OpenAll == 3
end

local function CheckHakiColor(NameColor)
    local args = {
        [1] = "getColors"
    }

    MyHakiColor = game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
    for i, v in pairs(MyHakiColor) do
        if (v.HiddenName):find(NameColor) then
            if v.Unlocked then
                return v.Unlocked
            end
        end
    end
    return false
end

local velocityHandlerName = "indq9pdnq0"
local gyroHandlerName = "Fpjq90pdfhipqdm"
local mfly1
local mfly2
RunService = game:GetService("RunService")
speaker = game.Players.LocalPlayer
vehicleflyspeed = 5
function getRoot(char)
    local rootPart = char:FindFirstChild('HumanoidRootPart') or char:FindFirstChild('Torso') or
                         char:FindFirstChild('UpperTorso')
    return rootPart
end
local unmobilefly = function(speaker)
    pcall(function()
        FLYING = false
        local root = getRoot(speaker.Character)
        root:FindFirstChild(velocityHandlerName):Destroy()
        root:FindFirstChild(gyroHandlerName):Destroy()
        speaker.Character:FindFirstChildWhichIsA("Humanoid").PlatformStand = false
        mfly1:Disconnect()
        mfly2:Disconnect()
    end)
end

local mobilefly = function(speaker, vfly)
    unmobilefly(speaker)
    FLYING = true

    local root = getRoot(speaker.Character)
    local camera = workspace.CurrentCamera
    local v3none = Vector3.new()
    local v3zero = Vector3.new(0, 0, 0)
    local v3inf = Vector3.new(9e9, 9e9, 9e9)

    local controlModule = require(speaker.PlayerScripts:WaitForChild("PlayerModule"):WaitForChild("ControlModule"))
    local bv = Instance.new("BodyVelocity")
    bv.Name = velocityHandlerName
    bv.Parent = root
    bv.MaxForce = v3zero
    bv.Velocity = v3zero

    local bg = Instance.new("BodyGyro")
    bg.Name = gyroHandlerName
    bg.Parent = root
    bg.MaxTorque = v3inf
    bg.P = 1000
    bg.D = 50

    mfly1 = speaker.CharacterAdded:Connect(function()
        local bv = Instance.new("BodyVelocity")
        bv.Name = velocityHandlerName
        bv.Parent = root
        bv.MaxForce = v3zero
        bv.Velocity = v3zero

        local bg = Instance.new("BodyGyro")
        bg.Name = gyroHandlerName
        bg.Parent = root
        bg.MaxTorque = v3inf
        bg.P = 1000
        bg.D = 50
    end)

    mfly2 = RunService.RenderStepped:Connect(function()
        root = getRoot(speaker.Character)
        camera = workspace.CurrentCamera
        if speaker.Character:FindFirstChildWhichIsA("Humanoid") and root and root:FindFirstChild(velocityHandlerName) and
            root:FindFirstChild(gyroHandlerName) then
            local humanoid = speaker.Character:FindFirstChildWhichIsA("Humanoid")
            local VelocityHandler = root:FindFirstChild(velocityHandlerName)
            local GyroHandler = root:FindFirstChild(gyroHandlerName)

            VelocityHandler.MaxForce = v3inf
            GyroHandler.MaxTorque = v3inf
            if not vfly then
                humanoid.PlatformStand = true
            end
            GyroHandler.CFrame = camera.CoordinateFrame
            VelocityHandler.Velocity = v3none

            local direction = controlModule:GetMoveVector()
            if direction.X > 0 then
                VelocityHandler.Velocity = VelocityHandler.Velocity + camera.CFrame.RightVector *
                                               (direction.X * ((vfly and vehicleflyspeed or iyflyspeed) * 50))
            end
            if direction.X < 0 then
                VelocityHandler.Velocity = VelocityHandler.Velocity + camera.CFrame.RightVector *
                                               (direction.X * ((vfly and vehicleflyspeed or iyflyspeed) * 50))
            end
            if direction.Z > 0 then
                VelocityHandler.Velocity = VelocityHandler.Velocity - camera.CFrame.LookVector *
                                               (direction.Z * ((vfly and vehicleflyspeed or iyflyspeed) * 50))
            end
            if direction.Z < 0 then
                VelocityHandler.Velocity = VelocityHandler.Velocity - camera.CFrame.LookVector *
                                               (direction.Z * ((vfly and vehicleflyspeed or iyflyspeed) * 50))
            end
        end
    end)
end

inmyselfss = LPH_JIT_MAX(function(name)
    if game:GetService("Players").LocalPlayer.Backpack:FindFirstChild(name) then
        return game:GetService("Players").LocalPlayer.Backpack:FindFirstChild(name)
    end
    local OutValue
    for i, v in pairs(game.Players.LocalPlayer.Character:GetChildren()) do
        if v:IsA("Tool") then
            if v.Name == name then
                OutValue = v
                break
            end
        end
    end
    return OutValue or game:GetService("Players").LocalPlayer.Character:FindFirstChild(name)
end)

local All_Materials
if World1 then
    All_Materials = {"Leather", "Scrap Metal", "Angel Wings", "Magma Ore", "Fish Tail"}
elseif World2 then
    All_Materials = {"Scrap Metal", "Radioactive Material", "Vampire Fang", "Mystic Droplet", "Magma Ore"}
elseif World3 then
    All_Materials = {"Gunpowder", "Mini Tusk", "Conjured Cocoa", "Fish Tail", "Scrap Metal", "Dragon Scale",
                     "Demonic Wisp"}
end

table.sort(All_Materials)

-- [CustomFindFirstChild]

local function CustomFindFirstChild(tablename)
    for i, v in pairs(tablename) do
        if game:GetService("Workspace").Enemies:FindFirstChild(v) then
            return true
        end
    end
    return false
end
-- [CheckMaterial]

local function CheckMaterial(v1)
    if World1 then
        if (v1 == "Magma Ore") then
            MaterialMob = {"Military Soldier [Lv. 300]", "Military Spy [Lv. 325]"};
            CFrameMon = CFrame.new(-5815, 84, 8820);
        elseif ((v1 == "Leather") or (v1 == "Scrap Metal")) then
            MaterialMob = {"Brute [Lv. 45]"};
            CFrameMon = CFrame.new(-1145, 15, 4350);
        elseif (v1 == "Angel Wings") then
            MaterialMob = {"God's Guard [Lv. 450]"};
            CFrameMon = CFrame.new(-4698, 845, -1912);
        elseif (v1 == "Fish Tail") then
            MaterialMob = {"Fishman Warrior [Lv. 375]", "Fishman Commando [Lv. 400]"};
            CFrameMon = CFrame.new(61123, 19, 1569);
        end
    end
    if World2 then
        if (v1 == "Magma Ore") then
            MaterialMob = {"Magma Ninja [Lv. 1175]"};
            CFrameMon = CFrame.new(-5428, 78, -5959);
        elseif (v1 == "Scrap Metal") then
            MaterialMob = {"Swan Pirate [Lv. 775]"};
            CFrameMon = CFrame.new(878, 122, 1235);
        elseif (v1 == "Radioactive Material") then
            MaterialMob = {"Factory Staff [Lv. 800]"};
            CFrameMon = CFrame.new(295, 73, -56);
        elseif (v1 == "Vampire Fang") then
            MaterialMob = {"Vampire [Lv. 975]"};
            CFrameMon = CFrame.new(-6033, 7, -1317);
        elseif (v1 == "Mystic Droplet") then
            MaterialMob = {"Water Fighter [Lv. 1450]", "Sea Soldier [Lv. 1425]"};
            CFrameMon = CFrame.new(-3385, 239, -10542);
        end
    end
    if World3 then
        if (v1 == "Mini Tusk") then
            MaterialMob = {"Mythological Pirate [Lv. 1850]"};
            CFrameMon = CFrame.new(-13545, 470, -6917);
        elseif (v1 == "Fish Tail") then
            MaterialMob = {"Fishman Raider [Lv. 1775]", "Fishman Captain [Lv. 1800]"};
            CFrameMon = CFrame.new(-10993, 332, -8940);
        elseif (v1 == "Scrap Metal") then
            MaterialMob = {"Jungle Pirate [Lv. 1900]"};
            CFrameMon = CFrame.new(-12107, 332, -10549);
        elseif (v1 == "Dragon Scale") then
            MaterialMob = {"Dragon Crew Archer [Lv. 1600]", "Dragon Crew Warrior [Lv. 1575]"};
            CFrameMon = CFrame.new(6594, 383, 139);
        elseif (v1 == "Conjured Cocoa") then
            MaterialMob = {"Cocoa Warrior [Lv. 2300]", "Chocolate Bar Battler [Lv. 2325]", "Sweet Thief [Lv. 2350]",
                           "Candy Rebel [Lv. 2375]"};
            CFrameMon = CFrame.new(620.6344604492188, 78.93644714355469, -12581.369140625);
        elseif (v1 == "Demonic Wisp") then
            MaterialMob = {"Demonic Soul [Lv. 2025]"};
            CFrameMon = CFrame.new(-9507, 172, 6158);
        elseif (v1 == "Gunpowder") then
            MaterialMob = {"Pistol Billionaire [Lv. 1525]"};
            CFrameMon = CFrame.new(-469, 74, 5904);
        end
    end
end

local questlib = loadstring(game:HttpGet("https://raw.githubusercontent.com/xZcAtliftz/Api/main/ApiQuest.lua"))();

CheckQuest = function()
    questlib.CheckQuest()

    CFrameMon = checkEnemySpawn(Name) or CFrameMyMon
end
CheckOldQuest = function(a)
    questlib.CheckOldQuest(a)

    CFrameMon = checkEnemySpawn(Name) or CFrameMyMon
end

function CheckBossQuest()
    if Select_Bosses == "Saber Expert [Lv. 200] [Boss]" then
        MsBoss = "Saber Expert [Lv. 200] [Boss]"
        NameBoss = "Saber Expert"
        CFrameBoss = CFrame.new(-1458.89502, 29.8870335, -50.633564, 0.858821094, 1.13848939e-08, 0.512275636,
            -4.85649254e-09, 1, -1.40823326e-08, -0.512275636, 9.6063415e-09, 0.858821094)
    elseif Select_Bosses == "The Saw [Lv. 100] [Boss]" then
        MsBoss = "The Saw [Lv. 100] [Boss]"
        NameBoss = "The Saw"
        CFrameBoss = CFrame.new(-683.519897, 13.8534927, 1610.87854, -0.290192783, 6.88365773e-08, 0.956968188,
            6.98413629e-08, 1, -5.07531119e-08, -0.956968188, 5.21077759e-08, -0.290192783)
    elseif Select_Bosses == "Greybeard [Lv. 750] [Raid Boss]" then
        MsBoss = "Greybeard [Lv. 750] [Raid Boss]"
        NameBoss = "Greybeard"
        CFrameBoss = CFrame.new(-4955.72949, 80.8163834, 4305.82666, -0.433646321, -1.03394289e-08, 0.901083171,
            -3.0443168e-08, 1, -3.17633075e-09, -0.901083171, -2.88092288e-08, -0.433646321)
    elseif Select_Bosses == "The Gorilla King [Lv. 25] [Boss]" then
        MsBoss = "The Gorilla King [Lv. 25] [Boss]"
        NameBoss = "The Gorilla King"
        NameQuestBoss = "JungleQuest"
        LevelQuestBoss = 3
        CFrameQuestBoss = CFrame.new(-1604.12012, 36.8521118, 154.23732, 0.0648873374, -4.70858913e-06, -0.997892559,
            1.41431883e-07, 1, -4.70933674e-06, 0.997892559, 1.64442184e-07, 0.0648873374)
        CFrameBoss = CFrame.new(-1223.52808, 6.27936459, -502.292664, 0.310949147, -5.66602516e-08, 0.950426519,
            -3.37275488e-08, 1, 7.06501808e-08, -0.950426519, -5.40241736e-08, 0.310949147)
    elseif Select_Bosses == "Bobby [Lv. 55] [Boss]" then
        MsBoss = "Bobby [Lv. 55] [Boss]"
        NameBoss = "Bobby"
        NameQuestBoss = "BuggyQuest1"
        LevelQuestBoss = 3
        CFrameQuestBoss = CFrame.new(-1139.59717, 4.75205183, 3825.16211, -0.959730506, -7.5857054e-09, 0.280922383,
            -4.06310328e-08, 1, -1.11807175e-07, -0.280922383, -1.18718916e-07, -0.959730506)
        CFrameBoss = CFrame.new(-1147.65173, 32.5966301, 4156.02588, 0.956680477, -1.77109952e-10, -0.29113996,
            5.16530874e-10, 1, 1.08897802e-09, 0.29113996, -1.19218679e-09, 0.956680477)
    elseif Select_Bosses == "Yeti [Lv. 110] [Boss]" then
        MsBoss = "Yeti [Lv. 110] [Boss]"
        NameBoss = "Yeti"
        NameQuestBoss = "SnowQuest"
        LevelQuestBoss = 3
        CFrameQuestBoss = CFrame.new(1384.90247, 87.3078308, -1296.6825, 0.280209213, 2.72035177e-08, -0.959938943,
            -6.75690828e-08, 1, 8.6151708e-09, 0.959938943, 6.24481444e-08, 0.280209213)
        CFrameBoss = CFrame.new(1221.7356, 138.046906, -1488.84082, 0.349343032, -9.49245944e-08, 0.936994851,
            6.29478194e-08, 1, 7.7838429e-08, -0.936994851, 3.17894653e-08, 0.349343032)
    elseif Select_Bosses == "Mob Leader [Lv. 120] [Boss]" then
        MsBoss = "Mob Leader [Lv. 120] [Boss]"
        NameBoss = "Mob Leader"
        CFrameBoss = CFrame.new(-2848.59399, 7.4272871, 5342.44043, -0.928248107, -8.7248246e-08, 0.371961564,
            -7.61816636e-08, 1, 4.44474857e-08, -0.371961564, 1.29216433e-08, -0.92824)
    elseif Select_Bosses == "Vice Admiral [Lv. 130] [Boss]" then
        MsBoss = "Vice Admiral [Lv. 130] [Boss]"
        NameBoss = "Vice Admiral"
        NameQuestBoss = "MarineQuest2"
        LevelQuestBoss = 2
        CFrameQuestBoss = CFrame.new(-5035.42285, 28.6520386, 4324.50293, -0.0611100644, -8.08395768e-08, 0.998130739,
            -1.57416586e-08, 1, 8.00271849e-08, -0.998130739, -1.08217701e-08, -0.0611100644)
        CFrameBoss = CFrame.new(-5078.45898, 99.6520691, 4402.1665, -0.555574954, -9.88630566e-11, 0.831466436,
            -6.35508286e-08, 1, -4.23449258e-08, -0.831466436, -7.63661632e-08, -0.555574954)
    elseif Select_Bosses == "Warden [Lv. 175] [Boss]" then
        MsBoss = "Warden [Lv. 175] [Boss]"
        NameBoss = "Warden"
        NameQuestBoss = "ImpelQuest"
        LevelQuestBoss = 1
        CFrameQuestBoss = CFrame.new(4851.35059, 5.68744135, 743.251282, -0.538484037, -6.68303741e-08, -0.842635691,
            1.38001752e-08, 1, -8.81300792e-08, 0.842635691, -5.90851599e-08, -0.538484037)
        CFrameBoss = CFrame.new(5232.5625, 5.26856995, 747.506897, 0.943829298, -4.5439414e-08, 0.330433697,
            3.47818627e-08, 1, 3.81658154e-08, -0.330433697, -2.45289105e-08, 0.943829298)
    elseif Select_Bosses == "Chief Warden [Lv. 200] [Boss]" then
        MsBoss = "Chief Warden [Lv. 200] [Boss]"
        NameBoss = "Chief Warden"
        NameQuestBoss = "ImpelQuest"
        LevelQuestBoss = 2
        CFrameQuestBoss = CFrame.new(4851.35059, 5.68744135, 743.251282, -0.538484037, -6.68303741e-08, -0.842635691,
            1.38001752e-08, 1, -8.81300792e-08, 0.842635691, -5.90851599e-08, -0.538484037)
        CFrameBoss = CFrame.new(5232.5625, 5.26856995, 747.506897, 0.943829298, -4.5439414e-08, 0.330433697,
            3.47818627e-08, 1, 3.81658154e-08, -0.330433697, -2.45289105e-08, 0.943829298)
    elseif Select_Bosses == "Swan [Lv. 225] [Boss]" then
        MsBoss = "Swan [Lv. 225] [Boss]"
        NameBoss = "Swan"
        NameQuestBoss = "ImpelQuest"
        LevelQuestBoss = 3
        CFrameQuestBoss = CFrame.new(4851.35059, 5.68744135, 743.251282, -0.538484037, -6.68303741e-08, -0.842635691,
            1.38001752e-08, 1, -8.81300792e-08, 0.842635691, -5.90851599e-08, -0.538484037)
        CFrameBoss = CFrame.new(5232.5625, 5.26856995, 747.506897, 0.943829298, -4.5439414e-08, 0.330433697,
            3.47818627e-08, 1, 3.81658154e-08, -0.330433697, -2.45289105e-08, 0.943829298)
    elseif Select_Bosses == "Magma Admiral [Lv. 350] [Boss]" then
        MsBoss = "Magma Admiral [Lv. 350] [Boss]"
        NameBoss = "Magma Admiral"
        NameQuestBoss = "MagmaQuest"
        LevelQuestBoss = 3
        CFrameQuestBoss = CFrame.new(-5317.07666, 12.2721891, 8517.41699, 0.51175487, -2.65508806e-08, -0.859131515,
            -3.91131572e-08, 1, -5.42026761e-08, 0.859131515, 6.13418294e-08, 0.51175487)
        CFrameBoss = CFrame.new(-5530.12646, 22.8769703, 8859.91309, 0.857838571, 2.23414389e-08, 0.513919294,
            1.53689133e-08, 1, -6.91265853e-08, -0.513919294, 6.71978384e-08, 0.857838571)
    elseif Select_Bosses == "Fishman Lord [Lv. 425] [Boss]" then
        MsBoss = "Fishman Lord [Lv. 425] [Boss]"
        NameBoss = "Fishman Lord"
        NameQuestBoss = "FishmanQuest"
        LevelQuestBoss = 3
        CFrameQuestBoss = CFrame.new(61123.0859, 18.5066795, 1570.18018, 0.927145958, 1.0624845e-07, 0.374700129,
            -6.98219367e-08, 1, -1.10790765e-07, -0.374700129, 7.65569368e-08, 0.927145958)
        CFrameBoss = CFrame.new(61351.7773, 31.0306778, 1113.31409, 0.999974668, 0, -0.00714713801, 0, 1.00000012, 0,
            0.00714714266, 0, 0.999974549)
    elseif Select_Bosses == "Wysper [Lv. 500] [Boss]" then
        MsBoss = "Wysper [Lv. 500] [Boss]"
        NameBoss = "Wysper"
        NameQuestBoss = "SkyExp1Quest"
        LevelQuestBoss = 3
        CFrameQuestBoss = CFrame.new(-7862.94629, 5545.52832, -379.833954, 0.462944925, 1.45838088e-08, -0.886386991,
            1.0534996e-08, 1, 2.19553424e-08, 0.886386991, -1.95022007e-08, 0.462944925)
        CFrameBoss = CFrame.new(-7925.48389, 5550.76074, -636.178345, 0.716468513, -1.22915289e-09, 0.697619379,
            3.37381434e-09, 1, -1.70304748e-09, -0.697619379, 3.57381835e-09, 0.716468513)
    elseif Select_Bosses == "Thunder God [Lv. 575] [Boss]" then
        MsBoss = "Thunder God [Lv. 575] [Boss]"
        NameBoss = "Thunder God"
        NameQuestBoss = "SkyExp2Quest"
        LevelQuestBoss = 3
        CFrameQuestBoss = CFrame.new(-7902.78613, 5635.99902, -1411.98706, -0.0361216255, -1.16895912e-07, 0.999347389,
            1.44533963e-09, 1, 1.17024491e-07, -0.999347389, 5.6715117e-09, -0.0361216255)
        CFrameBoss = CFrame.new(-7917.53613, 5616.61377, -2277.78564, 0.965189934, 4.80563429e-08, -0.261550069,
            -6.73089886e-08, 1, -6.46515304e-08, 0.261550069, 8.00056768e-08, 0.965189934)
    elseif Select_Bosses == "Cyborg [Lv. 675] [Boss]" then
        MsBoss = "Cyborg [Lv. 675] [Boss]"
        NameBoss = "Cyborg"
        NameQuestBoss = "FountainQuest"
        LevelQuestBoss = 3
        CFrameQuestBoss = CFrame.new(5253.54834, 38.5361786, 4050.45166, -0.0112687312, -9.93677887e-08, -0.999936521,
            2.55291371e-10, 1, -9.93769547e-08, 0.999936521, -1.37512213e-09, -0.0112687312)
        CFrameBoss = CFrame.new(6041.82813, 52.7112198, 3907.45142, -0.563162148, 1.73805248e-09, -0.826346457,
            -5.94632716e-08, 1, 4.26280238e-08, 0.826346457, 7.31437524e-08, -0.563162148)
        -- New World
    elseif Select_Bosses == "Diamond [Lv. 750] [Boss]" then
        MsBoss = "Diamond [Lv. 750] [Boss]"
        NameBoss = "Diamond"
        NameQuestBoss = "Area1Quest"
        LevelQuestBoss = 3
        CFrameQuestBoss = CFrame.new(-424.080078, 73.0055847, 1836.91589, 0.253544956, -1.42165932e-08, 0.967323601,
            -6.00147771e-08, 1, 3.04272909e-08, -0.967323601, -6.5768397e-08, 0.253544956)
        CFrameBoss = CFrame.new(-1736.26587, 198.627731, -236.412857, -0.997808516, 0, -0.0661673471, 0, 1, 0,
            0.0661673471, 0, -0.997808516)
    elseif Select_Bosses == "Jeremy [Lv. 850] [Boss]" then
        MsBoss = "Jeremy [Lv. 850] [Boss]"
        NameBoss = "Jeremy"
        NameQuestBoss = "Area2Quest"
        LevelQuestBoss = 3
        CFrameQuestBoss = CFrame.new(632.698608, 73.1055908, 918.666321, -0.0319722369, 8.96074881e-10, -0.999488771,
            1.36326533e-10, 1, 8.92172336e-10, 0.999488771, -1.07732087e-10, -0.0319722369)
        CFrameBoss = CFrame.new(2203.76953, 448.966034, 752.731079, -0.0217453763, 0, -0.999763548, 0, 1, 0,
            0.999763548, 0, -0.0217453763)
    elseif Select_Bosses == "Fajita [Lv. 925] [Boss]" then
        MsBoss = "Fajita [Lv. 925] [Boss]"
        NameBoss = "Fajita"
        NameQuestBoss = "MarineQuest3"
        LevelQuestBoss = 3
        CFrameQuestBoss = CFrame.new(-2442.65015, 73.0511475, -3219.11523, -0.873540044, 4.2329841e-08, -0.486752301,
            5.64383384e-08, 1, -1.43220786e-08, 0.486752301, -3.99823996e-08, -0.873540044)
        CFrameBoss = CFrame.new(-2297.40332, 115.449463, -3946.53833, 0.961227536, -1.46645796e-09, -0.275756449,
            -2.3212845e-09, 1, -1.34094433e-08, 0.275756449, 1.35296352e-08, 0.961227536)
    elseif Select_Bosses == "Don Swan [Lv. 1000] [Boss]" then
        MsBoss = "Don Swan [Lv. 1000] [Boss]"
        NameBoss = "Don Swan"
        CFrameBoss = CFrame.new(2288.802, 15.1870775, 863.034607, 0.99974072, -8.41247214e-08, -0.0227668174,
            8.4774733e-08, 1, 2.75850098e-08, 0.0227668174, -2.95079072e-08, 0.99974072)
    elseif Select_Bosses == "Smoke Admiral [Lv. 1150] [Boss]" then
        MsBoss = "Smoke Admiral [Lv. 1150] [Boss]"
        NameBoss = "Smoke Admiral"
        NameQuestBoss = "IceSideQuest"
        LevelQuestBoss = 3
        CFrameQuestBoss = CFrame.new(-6059.96191, 15.9868021, -4904.7373, -0.444992423, -3.0874483e-09, 0.895534337,
            -3.64098796e-08, 1, -1.4644522e-08, -0.895534337, -3.91229982e-08, -0.444992423)
        CFrameBoss = CFrame.new(-5115.72754, 23.7664986, -5338.2207, 0.251453817, 1.48345061e-08, -0.967869282,
            4.02796978e-08, 1, 2.57916977e-08, 0.967869282, -4.54708946e-08, 0.251453817)
    elseif Select_Bosses == "Cursed Captain [Lv. 1325] [Raid Boss]" then
        MsBoss = "Cursed Captain [Lv. 1325] [Raid Boss]"
        NameBoss = "Cursed Captain"
        CFrameBoss = CFrame.new(916.928589, 181.092773, 33422, -0.999505103, 9.26310495e-09, 0.0314563364,
            8.42916226e-09, 1, -2.6643713e-08, -0.0314563364, -2.63653774e-08, -0.999505103)
    elseif Select_Bosses == "Darkbeard [Lv. 1000] [Raid Boss]" then
        MsBoss = "Darkbeard [Lv. 1000] [Raid Boss]"
        NameBoss = "Darkbeard"
        CFrameBoss = CFrame.new(3876.00366, 24.6882591, -3820.21777, -0.976951957, 4.97356325e-08, 0.213458836,
            4.57335361e-08, 1, -2.36868622e-08, -0.213458836, -1.33787044e-08, -0.976951957)
    elseif Select_Bosses == "Order [Lv. 1250] [Raid Boss]" then
        MsBoss = "Order [Lv. 1250] [Raid Boss]"
        NameBoss = "Order"
        CFrameBoss = CFrame.new(-6221.15039, 16.2351036, -5045.23584, -0.380726993, 7.41463495e-08, 0.924687505,
            5.85604774e-08, 1, -5.60738549e-08, -0.924687505, 3.28013137e-08, -0.380726993)
    elseif Select_Bosses == "Awakened Ice Admiral [Lv. 1400] [Boss]" then
        MsBoss = "Awakened Ice Admiral [Lv. 1400] [Boss]"
        NameBoss = "Awakened Ice Admiral"
        NameQuestBoss = "FrostQuest"
        LevelQuestBoss = 3
        CFrameQuestBoss = CFrame.new(5669.33203, 28.2118053, -6481.55908, 0.921275556, -1.25320829e-08, 0.388910472,
            4.72230788e-08, 1, -7.96414241e-08, -0.388910472, 9.17372489e-08, 0.921275556)
        CFrameBoss = CFrame.new(6407.33936, 340.223785, -6892.521, 0.49051559, -5.25310213e-08, -0.871432424,
            -2.76146022e-08, 1, -7.58250565e-08, 0.871432424, 6.12576301e-08, 0.49051559)
    elseif Select_Bosses == "Tide Keeper [Lv. 1475] [Boss]" then
        MsBoss = "Tide Keeper [Lv. 1475] [Boss]"
        NameBoss = "Tide Keeper"
        NameQuestBoss = "ForgottenQuest"
        LevelQuestBoss = 3
        CFrameQuestBoss = CFrame.new(-3053.89648, 236.881363, -10148.2324, -0.985987961, -3.58504737e-09, 0.16681771,
            -3.07832915e-09, 1, 3.29612559e-09, -0.16681771, 2.73641976e-09, -0.985987961)
        CFrameBoss = CFrame.new(-3570.18652, 123.328949, -11555.9072, 0.465199202, -1.3857326e-08, 0.885206044,
            4.0332897e-09, 1, 1.35347511e-08, -0.885206044, -2.72606271e-09, 0.465199202)
        -- Thire World
    elseif Select_Bosses == "Stone [Lv. 1550] [Boss]" then
        MsBoss = "Stone [Lv. 1550] [Boss]"
        NameBoss = "Stone"
        NameQuestBoss = "PiratePortQuest"
        LevelQuestBoss = 3
        CFrameQuestBoss = CFrame.new(-290, 44, 5577)
        CFrameBoss = CFrame.new(-1085, 40, 6779)
    elseif Select_Bosses == "Island Empress [Lv. 1675] [Boss]" then
        MsBoss = "Island Empress [Lv. 1675] [Boss]"
        NameBoss = "Island Empress"
        NameQuestBoss = "AmazonQuest2"
        LevelQuestBoss = 3
        CFrameQuestBoss = CFrame.new(5443, 602, 752)
        CFrameBoss = CFrame.new(5659, 602, 244)
    elseif Select_Bosses == "Kilo Admiral [Lv. 1750] [Boss]" then
        MsBoss = "Kilo Admiral [Lv. 1750] [Boss]"
        NameBoss = "Kilo Admiral"
        NameQuestBoss = "MarineTreeIsland"
        LevelQuestBoss = 3
        CFrameQuestBoss = CFrame.new(2178, 29, -6737)
        CFrameBoss = CFrame.new(2846, 433, -7100)
    elseif Select_Bosses == "Captain Elephant [Lv. 1875] [Boss]" then
        MsBoss = "Captain Elephant [Lv. 1875] [Boss]"
        NameBoss = "Captain Elephant"
        NameQuestBoss = "DeepForestIsland"
        LevelQuestBoss = 3
        CFrameQuestBoss = CFrame.new(-13232, 333, -7631)
        CFrameBoss = CFrame.new(-13221, 325, -8405)
    elseif Select_Bosses == "Beautiful Pirate [Lv. 1950] [Boss]" then
        MsBoss = "Beautiful Pirate [Lv. 1950] [Boss]"
        NameBoss = "Beautiful Pirate"
        NameQuestBoss = "DeepForestIsland2"
        LevelQuestBoss = 3
        CFrameQuestBoss = CFrame.new(-12686, 391, -9902)
        CFrameBoss = CFrame.new(5182, 23, -20)
    elseif Select_Bosses == "Cake Queen [Lv. 2175] [Boss]" then
        MsBoss = "Cake Queen [Lv. 2175] [Boss]"
        NameBoss = "Cake Queen"
        NameQuestBoss = "IceCreamIslandQuest"
        LevelQuestBoss = 3
        CFrameQuestBoss = CFrame.new(-716, 382, -11010)
        CFrameBoss = CFrame.new(-821, 66, -10965)
    elseif Select_Bosses == "rip_indra True Form [Lv. 5000] [Raid Boss]" then
        MsBoss = "rip_indra True Form [Lv. 5000] [Raid Boss]"
        NameBoss = "rip_indra True Form"
        CFrameBoss = CFrame.new(-5359, 424, -2735)
    elseif Select_Bosses == "Longma [Lv. 2000] [Boss]" then
        MsBoss = "Longma [Lv. 2000] [Boss]"
        NameBoss = "Longma"
        CFrameBoss = CFrame.new(-10248.3936, 353.79129, -9306.34473)
    elseif Select_Bosses == "Soul Reaper [Lv. 2100] [Raid Boss]" then
        MsBoss = "Soul Reaper [Lv. 2100] [Raid Boss]"
        NameBoss = "Soul Reaper"
        CFrameBoss = CFrame.new(-9515.62109, 315.925537, 6691.12012)
    end
end

local Notification = loadstring(game:HttpGet(
    "https://raw.githubusercontent.com/Jxereas/UI-Libraries/main/notification_gui_library.lua", true))()

local Luxury = loadstring(game:HttpGet(
    "https://raw.githubusercontent.com/NguyenLam2504/pearcathub.lua/main/FluentAhihi.lua"))()
local SaveManager = loadstring(game:HttpGet(
    "https://raw.githubusercontent.com/dawid-scripts/Fluent/master/Addons/SaveManager.lua"))()
local InterfaceManager = loadstring(game:HttpGet(
    "https://raw.githubusercontent.com/dawid-scripts/Fluent/master/Addons/InterfaceManager.lua"))()

local Window = Luxury:CreateWindow({
    Title = "Luxury Hub | Premium",
    SubTitle = "by xZc",
    TabWidth = 160,
    Size = UDim2.fromOffset(580, 460),
    Acrylic = true, -- The blur may be detectable, setting this to false disables blur entirely
    Theme = "Light",
    MinimizeKey = Enum.KeyCode.LeftControl -- Used when theres no MinimizeKeybind
})

local Tabs = {
    Main = Window:AddTab({
        Title = "Main",
        Icon = ""
    }),
    Stats = Window:AddTab({
        Title = "Stats",
        Icon = ""
    }),

    FindFirst = Window:AddTab({
        Title = "First Sea",
        Icon = ""
    }),
    FindSec = Window:AddTab({
        Title = "Second Sea",
        Icon = ""
    }),
    FindThird = Window:AddTab({
        Title = "Third Sea",
        Icon = ""
    }),

    FullMirage = Window:AddTab({
        Title = "Full Moon",
        Icon = ""
    }),
    V4Race = Window:AddTab({
        Title = "Race",
        Icon = ""
    }),
    SeaEvent = Window:AddTab({
        Title = "Sea Event",
        Icon = ""
    }),

    Players = Window:AddTab({
        Title = "Players",
        Icon = ""
    }),
    Visuals = Window:AddTab({
        Title = "Visuals",
        Icon = ""
    }),
    Shop = Window:AddTab({
        Title = "Shop",
        Icon = ""
    }),

    Misc = Window:AddTab({
        Title = "Misc",
        Icon = ""
    }),

    Settings = Window:AddTab({
        Title = "Settings",
        Icon = "settings"
    })
}

local Settings = Luxury.Options

Tabs.Main:AddParagraph({
    Title = "Main",
    Content = "Main Tabs Scripts Can Use Farm Level and More."
})

-------------------------------------------------------------------------------------------------------------

local FarmLevel = Tabs.Main:AddToggle("Auto_Farm_Level", {
    Title = "Auto Farm Level",
    Default = FarmLv
})

FarmLevel:OnChanged(function(value)
    FarmLv = value
    Auto_Farm_Level = value
    if value == false then
        toTarget(game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame)
    end
    Save()
end)

local DBQ = Tabs.Main:AddToggle("Double_Quest", {
    Title = "Double Quest",
    Default = Double_Quest
})

DBQ:OnChanged(function(value)
    Double_Quest = value
    Save()
end)

if World1 then

    local FFM = Tabs.Main:AddToggle("Fast_Farm_Mode", {
        Title = "Fast Farm Mode",
        Default = Fast_Farm_Mode
    })

    FFM:OnChanged(function(value)
        Fast_Farm_Mode = value
        Save()
    end)

    local ANW1 = Tabs.Main:AddToggle("Auto_New_World", {
        Title = "Auto New World",
        Default = Auto_New_World
    })

    ANW1:OnChanged(function(value)
        Auto_New_World = value
        if value == false then
            toTarget(game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame)
        end
        Save()
        fask.spawn(LPH_JIT_MAX(function()
            while wait() do
                pcall(function()
                    if Auto_New_World then
                        if game.Players.LocalPlayer.Data.Level.Value >= 700 then
                            if Auto_Farm_Level then
                                FarmLv = false
                            end
                            if game.Workspace.Map.Ice.Door.CanCollide == true and
                                game.Workspace.Map.Ice.Door.Transparency == 0 then
                                wait(.5)
                                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(
                                    "DressrosaQuestProgress", "Detective")
                                EquipWeapon("Key")
                                repeat
                                    wait()
                                    toTarget(CFrame.new(1347.7124, 37.3751602, -1325.6488))
                                until (CFrame.new(1347.7124, 37.3751602, -1325.6488).Position -
                                    game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <=
                                    3 or not Auto_New_World
                                wait(3)
                            elseif game.Workspace.Map.Ice.Door.CanCollide == false and
                                game.Workspace.Map.Ice.Door.Transparency == 1 then
                                if game:GetService("Workspace").Enemies:FindFirstChild("Ice Admiral [Lv. 700] [Boss]") then
                                    for i, v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                                        if v.Name == "Ice Admiral [Lv. 700] [Boss]" and v.Humanoid.Health > 0 then
                                            repeat
                                                wait()
                                                if Auto_Haki then
                                                    if not game.Players.LocalPlayer.Character:FindFirstChild("HasBuso") then
                                                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(
                                                            "Buso")
                                                    end
                                                end
                                                if not game.Players.LocalPlayer.Character:FindFirstChild(
                                                    Selected_Weapons) then
                                                    wait()
                                                    EquipWeapon(Selected_Weapons)
                                                end
                                                toTarget(v.HumanoidRootPart.CFrame *
                                                             CFrame.new(0, Distance_Auto_Farm, 0))
                                                NeedAttacking = true
                                                if not Fast_Attack then
                                                    game:GetService 'VirtualUser':CaptureController()
                                                    game:GetService 'VirtualUser':Button1Down(Vector2.new(1280, 672))
                                                end
                                                v.HumanoidRootPart.Size = Vector3.new(60, 60, 60)
                                                v.HumanoidRootPart.Transparency = 1
                                                v.Humanoid.JumpPower = 0
                                                v.Humanoid.WalkSpeed = 0
                                                v.HumanoidRootPart.CanCollide = false
                                                v.Humanoid:ChangeState(11)
                                                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(
                                                    "TravelDressrosa")
                                            until v.Humanoid.Health <= 0 or not v.Parent
                                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(
                                                "TravelDressrosa")
                                        end
                                    end
                                else
                                    toTarget(CFrame.new(1347.7124, 37.3751602, -1325.6488))
                                end
                            else
                                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("TravelDressrosa")
                            end
                        end
                    end
                end)
            end
        end))

    end);

end

if World2 then
    local ANW2 = Tabs.Main:AddToggle("Auto_New_World", {
        Title = "Auto New World",
        Default = Auto_New_World
    })

    ANW2:OnChanged(function(value)
        Auto_Third_Sea = value
        if value == false then
            toTarget(game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame)
        end
        Save()
        fask.spawn(LPH_JIT_MAX(function()
            while wait() do
                pcall(function()
                    if Auto_Third_Sea then
                        if game.Players.LocalPlayer.Data.Level.Value >= 1500 then
                            if Auto_Farm_Level then
                                FarmLv = false
                            end
                            if game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BartiloQuestProgress",
                                "Bartilo") == 3 then
                                if game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("GetUnlockables")
                                    .FlamingoAccess ~= nil then
                                    Com("F_", "TravelZou")
                                    if game:GetService("ReplicatedStorage").Remotes["CommF_"]:InvokeServer(
                                        "ZQuestProgress", "Check") == 0 then
                                        if game.Workspace.Enemies:FindFirstChild("rip_indra [Lv. 1500] [Boss]") then
                                            for i, v in pairs(game.Workspace.Enemies:GetChildren()) do
                                                if v.Name == "rip_indra [Lv. 1500] [Boss]" and
                                                    v:FindFirstChild("Humanoid") and
                                                    v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
                                                    repeat
                                                        wait()
                                                        if (v.HumanoidRootPart.Position -
                                                            game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude >
                                                            300 then
                                                            Farmtween =
                                                                toTarget(v.HumanoidRootPart.Position,
                                                                    v.HumanoidRootPart.CFrame)
                                                        elseif (v.HumanoidRootPart.Position -
                                                            game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude <=
                                                            300 then
                                                            if Farmtween then
                                                                Farmtween:Stop()
                                                            end
                                                            NeedAttacking = true
                                                            if Auto_Haki then
                                                                if not game.Players.LocalPlayer.Character:FindFirstChild(
                                                                    "HasBuso") then
                                                                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(
                                                                        "Buso")
                                                                end
                                                            end
                                                            if not game.Players.LocalPlayer.Character:FindFirstChild(
                                                                Selected_Weapons) then
                                                                wait()
                                                                EquipWeapon(Selected_Weapons)
                                                            end
                                                            PosMon = v.HumanoidRootPart.CFrame
                                                            if not Fast_Attack then
                                                                game:GetService 'VirtualUser':CaptureController()
                                                                game:GetService 'VirtualUser':Button1Down(Vector2.new(
                                                                    1280, 672))
                                                            end
                                                            v.HumanoidRootPart.Size = Vector3.new(60, 60, 60)
                                                            v.HumanoidRootPart.Transparency = 1
                                                            v.Humanoid.JumpPower = 0
                                                            v.Humanoid.WalkSpeed = 0
                                                            v.HumanoidRootPart.CanCollide = false
                                                            v.Humanoid:ChangeState(11)
                                                            toTarget(v.HumanoidRootPart.CFrame *
                                                                         CFrame.new(0, Distance_Auto_Farm, 0))
                                                        end
                                                    until not Auto_Third_Sea or not v.Parent or v.Humanoid.Health <= 0
                                                    wait(.5)
                                                    Check = 2
                                                    repeat
                                                        wait()
                                                        Com("F_", "TravelZou")
                                                    until Check == 1
                                                    NeedAttacking = false
                                                end
                                            end
                                        else
                                            Com("F_", "ZQuestProgress", "Check")
                                            Com("F_", "ZQuestProgress", "Begin")
                                        end
                                    elseif game:GetService("ReplicatedStorage").Remotes["CommF_"]:InvokeServer(
                                        "ZQuestProgress", "Check") == 1 then
                                        Com("F_", "TravelZou")
                                    else
                                        if game.Workspace.Enemies:FindFirstChild("Don Swan [Lv. 1000] [Boss]") then
                                            for i, v in pairs(game.Workspace.Enemies:GetChildren()) do
                                                if v.Name == "Don Swan [Lv. 1000] [Boss]" and
                                                    v:FindFirstChild("Humanoid") and
                                                    v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
                                                    repeat
                                                        wait()
                                                        if (v.HumanoidRootPart.Position -
                                                            game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude >
                                                            300 then
                                                            Farmtween =
                                                                toTarget(v.HumanoidRootPart.Position,
                                                                    v.HumanoidRootPart.CFrame)
                                                        elseif (v.HumanoidRootPart.Position -
                                                            game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude <=
                                                            300 then
                                                            if Farmtween then
                                                                Farmtween:Stop()
                                                            end
                                                            NeedAttacking = true
                                                            if Auto_Haki then
                                                                if not game.Players.LocalPlayer.Character:FindFirstChild(
                                                                    "HasBuso") then
                                                                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(
                                                                        "Buso")
                                                                end
                                                            end
                                                            if not game.Players.LocalPlayer.Character:FindFirstChild(
                                                                Selected_Weapons) then
                                                                wait()
                                                                EquipWeapon(Selected_Weapons)
                                                            end
                                                            PosMon = v.HumanoidRootPart.CFrame
                                                            if not Fast_Attack then
                                                                game:GetService 'VirtualUser':CaptureController()
                                                                game:GetService 'VirtualUser':Button1Down(Vector2.new(
                                                                    1280, 672))
                                                            end
                                                            v.HumanoidRootPart.Size = Vector3.new(60, 60, 60)
                                                            v.HumanoidRootPart.Transparency = 1
                                                            v.Humanoid.JumpPower = 0
                                                            v.Humanoid.WalkSpeed = 0
                                                            v.HumanoidRootPart.CanCollide = false
                                                            v.Humanoid:ChangeState(11)
                                                            toTarget(v.HumanoidRootPart.CFrame *
                                                                         CFrame.new(0, Distance_Auto_Farm, 0))
                                                        end
                                                    until not Auto_Third_Sea or not v.Parent or v.Humanoid.Health <= 0
                                                    NeedAttacking = false
                                                end
                                            end
                                        else
                                            TweenDonSwanthireworld = toTarget(
                                                CFrame.new(2288.802, 15.1870775, 863.034607).Position,
                                                CFrame.new(2288.802, 15.1870775, 863.034607))
                                            if (CFrame.new(2288.802, 15.1870775, 863.034607).Position -
                                                game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude <=
                                                300 then
                                                if TweenDonSwanthireworld then
                                                    TweenDonSwanthireworld:Stop()
                                                    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame =
                                                        CFrame.new(2288.802, 15.1870775, 863.034607)
                                                end
                                            end
                                        end
                                    end
                                else
                                    if game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("GetUnlockables")
                                        .FlamingoAccess == nil then
                                        TabelDevilFruitStore = {}
                                        TabelDevilFruitOpen = {}

                                        for i, v in pairs(
                                            game:GetService("ReplicatedStorage").Remotes["CommF_"]:InvokeServer(
                                                "getInventoryFruits")) do
                                            for i1, v1 in pairs(v) do
                                                if i1 == "Name" then
                                                    table.insert(TabelDevilFruitStore, v1)
                                                end
                                            end
                                        end

                                        for i, v in next,
                                            game.ReplicatedStorage:WaitForChild("Remotes").CommF_:InvokeServer(
                                                "GetFruits") do
                                            if v.Price >= 1000000 then
                                                table.insert(TabelDevilFruitOpen, v.Name)
                                            end
                                        end

                                        for i, DevilFruitOpenDoor in pairs(TabelDevilFruitOpen) do
                                            for i1, DevilFruitStore in pairs(TabelDevilFruitStore) do
                                                if DevilFruitOpenDoor == DevilFruitStore and
                                                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(
                                                        "GetUnlockables").FlamingoAccess == nil then
                                                    if not game.Players.LocalPlayer.Backpack:FindFirstChild(
                                                        DevilFruitStore) then
                                                        Com("F_", "LoadFruit", DevilFruitStore)
                                                    else
                                                        Com("F_", "TalkTrevor", "1")
                                                        Com("F_", "TalkTrevor", "2")
                                                        Com("F_", "TalkTrevor", "3")
                                                    end
                                                end
                                            end
                                        end

                                        Com("F_", "TalkTrevor", "1")
                                        Com("F_", "TalkTrevor", "2")
                                        Com("F_", "TalkTrevor", "3")
                                    end
                                end
                            else
                                if game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(
                                    "BartiloQuestProgress", "Bartilo") == 0 then
                                    if string.find(game.Players.LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle
                                                       .Title.Text, "Swan Pirates") and
                                        string.find(
                                            game.Players.LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title
                                                .Text, "50") and game.Players.LocalPlayer.PlayerGui.Main.Quest.Visible ==
                                        true then
                                        if game.Workspace.Enemies:FindFirstChild("Swan Pirate [Lv. 775]") then
                                            for i, v in pairs(game.Workspace.Enemies:GetChildren()) do
                                                if v.Name == "Swan Pirate [Lv. 775]" then
                                                    pcall(function()
                                                        repeat
                                                            wait()
                                                            if (v.HumanoidRootPart.Position -
                                                                game.Players.LocalPlayer.Character.HumanoidRootPart
                                                                    .Position).magnitude > 300 then
                                                                Farmtween =
                                                                    toTarget(v.HumanoidRootPart.Position,
                                                                        v.HumanoidRootPart.CFrame)
                                                            elseif (v.HumanoidRootPart.Position -
                                                                game.Players.LocalPlayer.Character.HumanoidRootPart
                                                                    .Position).magnitude <= 300 then
                                                                if Farmtween then
                                                                    Farmtween:Stop()
                                                                end
                                                                NeedAttacking = true
                                                                StartMagnet = true
                                                                if Auto_Haki then
                                                                    if not game.Players.LocalPlayer.Character:FindFirstChild(
                                                                        "HasBuso") then
                                                                        game:GetService("ReplicatedStorage").Remotes
                                                                            .CommF_:InvokeServer("Buso")
                                                                    end
                                                                end
                                                                if not game.Players.LocalPlayer.Character:FindFirstChild(
                                                                    Selected_Weapons) then
                                                                    wait()
                                                                    EquipWeapon(Selected_Weapons)
                                                                end
                                                                PosMon = v.HumanoidRootPart.CFrame
                                                                if not Fast_Attack then
                                                                    game:GetService 'VirtualUser':CaptureController()
                                                                    game:GetService 'VirtualUser':Button1Down(
                                                                        Vector2.new(1280, 672))
                                                                end
                                                                v.HumanoidRootPart.Size = Vector3.new(60, 60, 60)
                                                                v.HumanoidRootPart.Transparency = 1
                                                                v.Humanoid.JumpPower = 0
                                                                v.Humanoid.WalkSpeed = 0
                                                                v.HumanoidRootPart.CanCollide = false
                                                                v.Humanoid:ChangeState(11)
                                                                toTarget(v.HumanoidRootPart.CFrame *
                                                                             CFrame.new(0, Distance_Auto_Farm, 0))
                                                            end
                                                        until not v.Parent or v.Humanoid.Health <= 0 or Auto_Third_Sea ==
                                                            false or
                                                            game.Players.LocalPlayer.PlayerGui.Main.Quest.Visible ==
                                                            false
                                                        NeedAttacking = false
                                                        StartMagnet = false
                                                    end)
                                                end
                                            end
                                        else
                                            Questtween = toTarget(
                                                CFrame.new(1057.92761, 137.614319, 1242.08069).Position,
                                                CFrame.new(1057.92761, 137.614319, 1242.08069))
                                            if (CFrame.new(1057.92761, 137.614319, 1242.08069).Position -
                                                game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude <=
                                                300 then
                                                if Bartilotween then
                                                    Bartilotween:Stop()
                                                end
                                                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(
                                                    1057.92761, 137.614319, 1242.08069)
                                            end
                                        end
                                    else
                                        Bartilotween = toTarget(CFrame.new(-456.28952, 73.0200958, 299.895966).Position,
                                            CFrame.new(-456.28952, 73.0200958, 299.895966))
                                        if (CFrame.new(-456.28952, 73.0200958, 299.895966).Position -
                                            game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude <=
                                            300 then
                                            if Bartilotween then
                                                Bartilotween:Stop()
                                            end
                                            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(
                                                -456.28952, 73.0200958, 299.895966)
                                            Com("F_", "StartQuest", "BartiloQuest", 1)
                                        end
                                    end
                                elseif game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(
                                    "BartiloQuestProgress", "Bartilo") == 1 then
                                    if game.Workspace.Enemies:FindFirstChild("Jeremy [Lv. 850] [Boss]") then
                                        for i, v in pairs(game.Workspace.Enemies:GetChildren()) do
                                            if v.Name == "Jeremy [Lv. 850] [Boss]" then
                                                repeat
                                                    wait()
                                                    if (v.HumanoidRootPart.Position -
                                                        game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude >
                                                        300 then
                                                        Farmtween =
                                                            toTarget(v.HumanoidRootPart.Position,
                                                                v.HumanoidRootPart.CFrame)
                                                    elseif (v.HumanoidRootPart.Position -
                                                        game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude <=
                                                        300 then
                                                        if Farmtween then
                                                            Farmtween:Stop()
                                                        end
                                                        NeedAttacking = true
                                                        if Auto_Haki then
                                                            if not game.Players.LocalPlayer.Character:FindFirstChild(
                                                                "HasBuso") then
                                                                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(
                                                                    "Buso")
                                                            end
                                                        end
                                                        if not game.Players.LocalPlayer.Character:FindFirstChild(
                                                            Selected_Weapons) then
                                                            wait()
                                                            EquipWeapon(Selected_Weapons)
                                                        end
                                                        PosMon = v.HumanoidRootPart.CFrame
                                                        if not Fast_Attack then
                                                            game:GetService 'VirtualUser':CaptureController()
                                                            game:GetService 'VirtualUser':Button1Down(Vector2.new(1280,
                                                                672))
                                                        end
                                                        v.HumanoidRootPart.Size = Vector3.new(60, 60, 60)
                                                        v.HumanoidRootPart.Transparency = 1
                                                        v.Humanoid.JumpPower = 0
                                                        v.Humanoid.WalkSpeed = 0
                                                        v.HumanoidRootPart.CanCollide = false
                                                        v.Humanoid:ChangeState(11)
                                                        toTarget(v.HumanoidRootPart.CFrame *
                                                                     CFrame.new(0, Distance_Auto_Farm, 0))
                                                    end
                                                until not v.Parent or v.Humanoid.Health <= 0 or Auto_Third_Sea == false
                                                NeedAttacking = false
                                            end
                                        end
                                    else
                                        Bartilotween = toTarget(CFrame.new(2099.88159, 448.931, 648.997375).Position,
                                            CFrame.new(2099.88159, 448.931, 648.997375))
                                        if (CFrame.new(2099.88159, 448.931, 648.997375).Position -
                                            game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude <=
                                            300 then
                                            if Bartilotween then
                                                Bartilotween:Stop()
                                            end
                                            game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame =
                                                CFrame.new(2099.88159, 448.931, 648.997375)
                                        end
                                    end
                                elseif game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(
                                    "BartiloQuestProgress", "Bartilo") == 2 then
                                    if (CFrame.new(-1836, 11, 1714).Position -
                                        game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude > 300 then
                                        Bartilotween = toTarget(CFrame.new(-1836, 11, 1714).Position,
                                            CFrame.new(-1836, 11, 1714))
                                    elseif (CFrame.new(-1836, 11, 1714).Position -
                                        game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude <= 300 then
                                        if Bartilotween then
                                            Bartilotween:Stop()
                                        end
                                        game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame =
                                            CFrame.new(-1836, 11, 1714)
                                        wait(.5)
                                        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(
                                            -1850.49329, 13.1789551, 1750.89685)
                                        wait(.1)
                                        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(
                                            -1858.87305, 19.3777466, 1712.01807)
                                        wait(.1)
                                        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(
                                            -1803.94324, 16.5789185, 1750.89685)
                                        wait(.1)
                                        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(
                                            -1858.55835, 16.8604317, 1724.79541)
                                        wait(.1)
                                        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(
                                            -1869.54224, 15.987854, 1681.00659)
                                        wait(.1)
                                        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(
                                            -1800.0979, 16.4978027, 1684.52368)
                                        wait(.1)
                                        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(
                                            -1819.26343, 14.795166, 1717.90625)
                                        wait(.1)
                                        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(
                                            -1813.51843, 14.8604736, 1724.79541)
                                    end
                                end
                            end
                        end
                    end
                end)
            end
        end))

    end);

end

AttackRandomType = 1
LPH_NO_VIRTUALIZE(function()
    fask.spawn(function()
        while wait() do
            AttackRandomType = math.random(1, 5)
            wait(0.3)
        end
    end)
end)()

LPH_JIT_MAX(function()
    function AutoFarmLevel()
        GetQuestTitle = game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title
        GetQuest = game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest
        local MyLevel = game.Players.LocalPlayer.Data.Level.Value
        if Fast_Farm_Mode and (MyLevel >= 15 and MyLevel <= 300) then
            if Auto_Haki then
                if not game.Players.LocalPlayer.Character:FindFirstChild("HasBuso") then
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Buso")
                end
            end
            if MyLevel >= 15 and MyLevel <= 70 then
                local CFrameMon = CFrame.new(-7793.02978515625, 5700.880859375, -1277.950439453125)
                if game:GetService("Workspace").Enemies:FindFirstChild("Royal Squad [Lv. 525]") or
                    game:GetService("Workspace").Enemies:FindFirstChild("Royal Soldier [Lv. 550]") or
                    game:GetService("Workspace").Enemies:FindFirstChild("Shanda [Lv. 475]") then
                    for i, v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                        if Fast_Farm_Mode and v.Name == "Royal Squad [Lv. 525]" or v.Name == "Royal Soldier [Lv. 550]" or
                            v.Name == "Shanda [Lv. 475]" and v:FindFirstChild("HumanoidRootPart") and
                            v:FindFirstChild("Humanoid") and v.Humanoid.Health > 0 then
                            repeat
                                fask.wait()
                                FarmtoTarget = toTarget(v.HumanoidRootPart.CFrame * CFrame.new(0, 30, 1))
                                if v:FindFirstChild("HumanoidRootPart") and v:FindFirstChild("Humanoid") and
                                    (v.HumanoidRootPart.Position -
                                        game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude <= 300 then
                                    if FarmtoTarget then
                                        FarmtoTarget:Stop()
                                    end
                                    for i2, v2 in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                                        if Fast_Farm_Mode and v2.Name == "Royal Squad [Lv. 525]" or v2.Name ==
                                            "Royal Soldier [Lv. 550]" or v2.Name == "Shanda [Lv. 475]" and
                                            v2:FindFirstChild("HumanoidRootPart") and v2:FindFirstChild("Humanoid") and
                                            v2.Humanoid.Health > 0 then
                                            if InMyNetWork(v2.HumanoidRootPart) then
                                                v2.HumanoidRootPart.CFrame = v.HumanoidRootPart.CFrame
                                                v2.Humanoid.JumpPower = 0
                                                v2.Humanoid.WalkSpeed = 0
                                                v2.HumanoidRootPart.CanCollide = false
                                                if v.Humanoid:FindFirstChild("Animator") then
                                                    v.Humanoid.Animator:Destroy()
                                                end
                                                v2.Humanoid:ChangeState(14)
                                                v2.Humanoid:ChangeState(11)
                                                v2.HumanoidRootPart.Size = Vector3.new(55, 55, 55)
                                            end
                                        end
                                    end
                                    if game.Players.LocalPlayer.Character:FindFirstChild("Black Leg") and
                                        game.Players.LocalPlayer.Character:FindFirstChild("Black Leg").Level.Value >=
                                        150 then
                                        game:service('VirtualInputManager'):SendKeyEvent(true, "V", false, game)
                                        game:service('VirtualInputManager'):SendKeyEvent(false, "V", false, game)
                                    end
                                    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.HumanoidRootPart
                                                                                                     .CFrame *
                                                                                                     CFrame.new(0,
                                            Distance_Auto_Farm, 1)
                                    NeedAttacking = true
                                    EquipWeapon(Selected_Weapons)
                                end
                            until not (game:GetService("Workspace").Enemies:FindFirstChild("Royal Squad [Lv. 525]") or
                                game:GetService("Workspace").Enemies:FindFirstChild("Royal Soldier [Lv. 550]") or
                                game:GetService("Workspace").Enemies:FindFirstChild("Shanda [Lv. 475]")) or
                                not (Fast_Farm_Mode or FarmLv) or v.Humanoid.Health <= 0 or not v.Parent
                            NeedAttacking = false
                        end
                    end
                else
                    Modstween = toTarget(CFrameMon)
                    if World1 and
                        (CFrameMon.Position -
                            game:GetService("Players").LocalPlayer.Character:WaitForChild("HumanoidRootPart").Position).magnitude >
                        1500 then
                        if Modstween then
                            Modstween:Stop()
                        end
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance", Vector3.new(
                            -7894.6176757813, 5547.1416015625, -380.29119873047))
                    elseif (CFrameMon.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude <=
                        150 then
                        if Modstween then
                            Modstween:Stop()
                        end
                        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrameMon
                    end
                end
            elseif MyLevel >= 70 and MyLevel <= 300 then
                if GetQuest.Visible == false then
                    if not tostring(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("PlayerHunter")):find(
                        "We heard some") then
                        local CFrameMon = CFrame.new(-4698, 845, -1912)
                        if game:GetService("Workspace").Enemies:FindFirstChild("God's Guard [Lv. 450]") then
                            for i, v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                                if Fast_Farm_Mode and v.Name == "God's Guard [Lv. 450]" and
                                    v:FindFirstChild("HumanoidRootPart") and v:FindFirstChild("Humanoid") and
                                    v.Humanoid.Health > 0 then
                                    repeat
                                        fask.wait()
                                        FarmtoTarget = toTarget(v.HumanoidRootPart.CFrame * CFrame.new(0, 30, 1))
                                        if v:FindFirstChild("HumanoidRootPart") and v:FindFirstChild("Humanoid") and
                                            (v.HumanoidRootPart.Position -
                                                game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude <=
                                            300 then
                                            if FarmtoTarget then
                                                FarmtoTarget:Stop()
                                            end
                                            for i2, v2 in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                                                if Fast_Farm_Mode and v2.Name == "God's Guard [Lv. 450]" and
                                                    v2:FindFirstChild("HumanoidRootPart") and
                                                    v2:FindFirstChild("Humanoid") and v2.Humanoid.Health > 0 then
                                                    if InMyNetWork(v2.HumanoidRootPart) then
                                                        v2.HumanoidRootPart.CFrame = v.HumanoidRootPart.CFrame
                                                        v2.Humanoid.JumpPower = 0
                                                        v2.Humanoid.WalkSpeed = 0
                                                        v2.HumanoidRootPart.CanCollide = false
                                                        v2.Humanoid:ChangeState(14)
                                                        v2.Humanoid:ChangeState(11)
                                                        v2.HumanoidRootPart.Size = Vector3.new(55, 55, 55)
                                                    end
                                                end
                                            end
                                            if game.Players.LocalPlayer.Character:FindFirstChild("Black Leg") and
                                                game.Players.LocalPlayer.Character:FindFirstChild("Black Leg").Level
                                                    .Value >= 150 then
                                                game:service('VirtualInputManager'):SendKeyEvent(true, "V", false, game)
                                                game:service('VirtualInputManager')
                                                    :SendKeyEvent(false, "V", false, game)
                                            end
                                            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame =
                                                v.HumanoidRootPart.CFrame * CFrame.new(0, Distance_Auto_Farm, 1)
                                            NeedAttacking = true
                                            EquipWeapon(Selected_Weapons)
                                        end
                                    until not (game:GetService("Workspace").Enemies:FindFirstChild(
                                        "God's Guard [Lv. 450]")) or not (Fast_Farm_Mode or FarmLv) or v.Humanoid.Health <=
                                        0 or not v.Parent
                                    NeedAttacking = false
                                end
                            end
                        else
                            Modstween = toTarget(CFrameMon)
                            if World1 and
                                (CFrameMon.Position -
                                    game:GetService("Players").LocalPlayer.Character:WaitForChild("HumanoidRootPart")
                                        .Position).magnitude > 1500 then
                                if Modstween then
                                    Modstween:Stop()
                                end
                                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",
                                    Vector3.new(-4607.8227539063, 872.54248046875, -1667.5568847656))
                            elseif (CFrameMon.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude <=
                                150 then
                                if Modstween then
                                    Modstween:Stop()
                                end
                                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrameMon
                            end
                        end
                    end
                elseif GetQuest.Visible == true then
                    local AllPlayersTableSkipFarm = {}
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyHaki", "Buso")
                    for i, v in pairs(game:GetService("Workspace").Characters:GetChildren()) do
                        table.insert(AllPlayersTableSkipFarm, v.Name)
                    end
                    if table.find(AllPlayersTableSkipFarm, GetQuestTitle.Text:split(" ")[2]) then
                        for i, v in pairs(game:GetService("Workspace").Characters:GetChildren()) do
                            if string.find(game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container
                                               .QuestTitle.Title.Text, v.Name) then
                                if FarmLv and Fast_Farm_Mode and v.Name == GetQuestTitle.Text:split(" ")[2] and
                                    v:FindFirstChild("HumanoidRootPart") and v:FindFirstChild("Humanoid") and
                                    v.Humanoid.Health > 0 then
                                    repeat
                                        fask.wait()
                                        if World1 and
                                            (Vector3.new(61163.8515625, 11.6796875, 1819.7841796875) -
                                                v.HumanoidRootPart.Position).magnitude < 5000 then
                                            if FarmtoTarget then
                                                FarmtoTarget:Stop()
                                            end
                                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(
                                                "requestEntrance",
                                                Vector3.new(61163.8515625, 11.6796875, 1819.7841796875))
                                        elseif (v.HumanoidRootPart.Position -
                                            game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude >
                                            150 then
                                            FarmtoTarget = toTarget(v.HumanoidRootPart.CFrame)
                                        elseif v:FindFirstChild("HumanoidRootPart") and v:FindFirstChild("Humanoid") and
                                            (v.HumanoidRootPart.Position -
                                                game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude <=
                                            150 then
                                            if FarmtoTarget then
                                                FarmtoTarget:Stop()
                                            end
                                            if game:GetService("Players")["LocalPlayer"].PlayerGui.Main.PvpDisabled
                                                .Visible == true then
                                                local args = {
                                                    [1] = "EnablePvp"
                                                }

                                                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(
                                                    args))
                                            end
                                            if not game.Players.LocalPlayer.Character:FindFirstChild("HasBuso") then
                                                local args = {
                                                    [1] = "Buso"
                                                }
                                                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(
                                                    args))
                                            end
                                            -- game:GetService('VirtualUser'):CaptureController()
                                            -- game:GetService('VirtualUser'):ClickButton1(Vector2.new(851, 158), game:GetService("Workspace").Camera.CFrame)
                                            -- if CombatFrameworkR.activeController.hitboxMagnitude ~= 55 and CombatFrameworkR.activeController and CombatFrameworkR.activeController.equipped then
                                            --     CombatFrameworkR.activeController.hitboxMagnitude = 55
                                            -- end
                                            if game.Players.LocalPlayer.Character:FindFirstChild("Black Leg") and
                                                game.Players.LocalPlayer.Character:FindFirstChild("Black Leg").Level
                                                    .Value >= 150 then
                                                game:service('VirtualInputManager'):SendKeyEvent(true, "V", false, game)
                                                game:service('VirtualInputManager')
                                                    :SendKeyEvent(false, "V", false, game)
                                            end
                                            if AttackRandomType == 1 then
                                                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame =
                                                    v.HumanoidRootPart.CFrame * CFrame.new(0, 7, 1)
                                            elseif AttackRandomType == 2 then
                                                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame =
                                                    v.HumanoidRootPart.CFrame * CFrame.new(0, 1, 7)
                                            elseif AttackRandomType == 3 then
                                                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame =
                                                    v.HumanoidRootPart.CFrame * CFrame.new(1, 1, -7)
                                            elseif AttackRandomType == 4 then
                                                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame =
                                                    v.HumanoidRootPart.CFrame * CFrame.new(7, 1, 0)
                                            elseif AttackRandomType == 5 then
                                                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame =
                                                    v.HumanoidRootPart.CFrame * CFrame.new(-7, 1, 0)
                                            else
                                                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame =
                                                    v.HumanoidRootPart.CFrame * CFrame.new(0, 7, 1)
                                            end
                                            EquipWeapon(Selected_Weapons)
                                            NeedAttacking = true
                                            wait(.1)
                                            -- game:service('VirtualInputManager'):SendKeyEvent(true, "Z", false, game)
                                            -- game:service('VirtualInputManager'):SendKeyEvent(false, "Z", false, game)
                                            game:service('VirtualInputManager'):SendKeyEvent(true, "X", false, game)
                                            game:service('VirtualInputManager'):SendKeyEvent(false, "X", false, game)
                                        end
                                    until not FarmLv or
                                        not string.find(
                                            game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container
                                                .QuestTitle.Title.Text, v.Name) or v.Humanoid.Health <= 0 or
                                        not v.Parent or GetQuest.Visible == false
                                    NeedAttacking = false
                                end
                            end
                        end
                    else
                        if game:GetService("Workspace").Enemies:FindFirstChild(Name) then
                            for i, v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                                if FarmLv and v.Name == Name and v:FindFirstChild("HumanoidRootPart") and
                                    v:FindFirstChild("Humanoid") and v.Humanoid.Health > 0 then
                                    if string.find(GetQuestTitle.Text, QuestName) then
                                        repeat
                                            fask.wait()
                                            if (v.HumanoidRootPart.Position -
                                                game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude >
                                                150 then
                                                FarmtoTarget =
                                                    toTarget(v.HumanoidRootPart.CFrame * CFrame.new(0, 30, 1))
                                            elseif v:FindFirstChild("HumanoidRootPart") and v:FindFirstChild("Humanoid") and
                                                (v.HumanoidRootPart.Position -
                                                    game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude <=
                                                150 then
                                                if FarmtoTarget then
                                                    FarmtoTarget:Stop()
                                                end
                                                StartMagnet = true
                                                PosMon = v.HumanoidRootPart.CFrame
                                                if game.Players.LocalPlayer.Character:FindFirstChild("Black Leg") and
                                                    game.Players.LocalPlayer.Character:FindFirstChild("Black Leg").Level
                                                        .Value >= 150 then
                                                    game:service('VirtualInputManager'):SendKeyEvent(true, "V", false,
                                                        game)
                                                    game:service('VirtualInputManager'):SendKeyEvent(false, "V", false,
                                                        game)
                                                end
                                                if AttackRandomType == 1 then
                                                    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame =
                                                        v.HumanoidRootPart.CFrame * CFrame.new(0, 30, 1)
                                                elseif AttackRandomType == 2 then
                                                    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame =
                                                        v.HumanoidRootPart.CFrame * CFrame.new(0, 1, 30)
                                                elseif AttackRandomType == 3 then
                                                    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame =
                                                        v.HumanoidRootPart.CFrame * CFrame.new(1, 1, -30)
                                                elseif AttackRandomType == 4 then
                                                    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame =
                                                        v.HumanoidRootPart.CFrame * CFrame.new(30, 1, 0)
                                                elseif AttackRandomType == 5 then
                                                    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame =
                                                        v.HumanoidRootPart.CFrame * CFrame.new(-30, 1, 0)
                                                else
                                                    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame =
                                                        v.HumanoidRootPart.CFrame * CFrame.new(0, 30, 1)
                                                end
                                                NeedAttacking = true
                                                EquipWeapon(Selected_Weapons)
                                            end
                                        until not game:GetService("Workspace").Enemies:FindFirstChild(Name) or
                                            not FarmLv or not string.find(GetQuestTitle.Text, QuestName) or
                                            v.Humanoid.Health <= 0 or not v.Parent or GetQuest.Visible == false
                                        NeedAttacking = false
                                        StartMagnet = false
                                    else
                                        Com("F_", "AbandonQuest");
                                    end
                                end
                            end
                        else
                            StartMagnet = false
                            if not string.find(GetQuestTitle.Text, NameCheckQuest) then
                                Com("F_", "AbandonQuest");
                            end
                            Modstween = toTarget(CFrameMon)
                            if World1 and (Name == "Fishman Commando [Lv. 400]" or Name == "Fishman Warrior [Lv. 375]") and
                                (CFrameQuest.Position -
                                    game:GetService("Players").LocalPlayer.Character:WaitForChild("HumanoidRootPart")
                                        .Position).magnitude > 50000 then
                                if Questtween then
                                    Questtween:Stop()
                                end
                                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",
                                    Vector3.new(61163.8515625, 11.6796875, 1819.7841796875))
                            elseif World1 and
                                not (Name == "Fishman Commando [Lv. 400]" or Name == "Fishman Warrior [Lv. 375]") and
                                (CFrameQuest.Position -
                                    game:GetService("Players").LocalPlayer.Character:WaitForChild("HumanoidRootPart")
                                        .Position).magnitude > 50000 then
                                if Questtween then
                                    Questtween:Stop()
                                end
                                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",
                                    Vector3.new(3864.8515625, 6.6796875, -1926.7841796875))
                            elseif World2 and string.find(Name, "Ship") and
                                (CFrameQuest.Position -
                                    game:GetService("Players").LocalPlayer.Character:WaitForChild("HumanoidRootPart")
                                        .Position).magnitude > 30000 then
                                if Questtween then
                                    Questtween:Stop()
                                end
                                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",
                                    Vector3.new(923.21252441406, 126.9760055542, 32852.83203125))
                            elseif World2 and not string.find(Name, "Ship") and
                                (CFrameQuest.Position -
                                    game:GetService("Players").LocalPlayer.Character:WaitForChild("HumanoidRootPart")
                                        .Position).magnitude > 30000 then
                                if Questtween then
                                    Questtween:Stop()
                                end
                                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",
                                    Vector3.new(-6508.5581054688, 89.034996032715, -132.83953857422))
                            elseif (CFrameMon.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude <=
                                150 then
                                if Modstween then
                                    Modstween:Stop()
                                end
                                toTarget(CFrameMon)
                            end
                        end
                    end
                end
            end
        else
            if not string.find(GetQuestTitle.Text, NameMon) then
                game.ReplicatedStorage:WaitForChild("Remotes").CommF_:InvokeServer("AbandonQuest");
            end
            if GetQuest.Visible == false then
                StartMagnet = false
                NeedAttacking = false
                -- [[ Default Get Quest]] --
                Questtween = toTarget(CFrameQuest.Position, CFrameQuest)
                if World1 and (Name == "Fishman Commando [Lv. 400]" or Name == "Fishman Warrior [Lv. 375]") and
                    (CFrameQuest.Position -
                        game:GetService("Players").LocalPlayer.Character:WaitForChild("HumanoidRootPart").Position).magnitude >
                    50000 then
                    if Questtween then
                        Questtween:Stop()
                    end
                    wait(.5)
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance", Vector3.new(
                        61163.8515625, 11.6796875, 1819.7841796875))
                elseif World1 and not (Name == "Fishman Commando [Lv. 400]" or Name == "Fishman Warrior [Lv. 375]") and
                    (CFrameQuest.Position -
                        game:GetService("Players").LocalPlayer.Character:WaitForChild("HumanoidRootPart").Position).magnitude >
                    50000 then
                    if Questtween then
                        Questtween:Stop()
                    end
                    wait(.5)
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance", Vector3.new(
                        3864.8515625, 6.6796875, -1926.7841796875))
                elseif World2 and string.find(Name, "Ship") and
                    (CFrameQuest.Position -
                        game:GetService("Players").LocalPlayer.Character:WaitForChild("HumanoidRootPart").Position).magnitude >
                    30000 then
                    if Questtween then
                        Questtween:Stop()
                    end
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance", Vector3.new(
                        923.21252441406, 126.9760055542, 32852.83203125))
                elseif World2 and not string.find(Name, "Ship") and
                    (CFrameQuest.Position -
                        game:GetService("Players").LocalPlayer.Character:WaitForChild("HumanoidRootPart").Position).magnitude >
                    30000 then
                    if Questtween then
                        Questtween:Stop()
                    end
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance", Vector3.new(
                        -6508.5581054688, 89.034996032715, -132.83953857422))
                elseif (CFrameQuest.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude <=
                    250 then
                    if Questtween then
                        Questtween:Stop()
                    end
                    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrameQuest
                    wait(.5)
                    if game:GetService("Players").LocalPlayer.Character:WaitForChild("Humanoid").Health > 0 then
                        Com("F_", "StartQuest", QuestName, LevelQuest)
                        Com("F_", "SetSpawnPoint")
                    end
                end
                -- [[ Fast Get Quest ]] --
                --[[
                                    Com("F_","StartQuest", QuestName, LevelQuest)
                                    Com("F_","SetSpawnPoint")
                                ]] --
            elseif GetQuest.Visible == true then
                if game:GetService("Workspace").Enemies:FindFirstChild(Name) then
                    for i, v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                        if FarmLv and v.Name == Name and v:FindFirstChild("HumanoidRootPart") and
                            v:FindFirstChild("Humanoid") and v.Humanoid.Health > 0 then
                            if string.find(GetQuestTitle.Text, NameMon) then
                                repeat
                                    fask.wait()
                                    FarmtoTarget = toTarget(v.HumanoidRootPart.CFrame *
                                                                CFrame.new(0, Distance_Auto_Farm, 0))
                                    if v:FindFirstChild("HumanoidRootPart") and v:FindFirstChild("Humanoid") and
                                        (v.HumanoidRootPart.Position -
                                            game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude <=
                                        250 then
                                        if FarmtoTarget then
                                            FarmtoTarget:Stop()
                                        end
                                        if Auto_Haki then
                                            if not game.Players.LocalPlayer.Character:FindFirstChild("HasBuso") then
                                                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Buso")
                                            end
                                        end
                                        if not game.Players.LocalPlayer.Character:FindFirstChild(Selected_Weapons) then
                                            wait()
                                            EquipWeapon(Selected_Weapons)
                                        end
                                        StartMagnet = true
                                        NeedAttacking = true
                                        if not Fast_Attack then
                                            game:GetService 'VirtualUser':CaptureController()
                                            game:GetService 'VirtualUser':Button1Down(Vector2.new(1280, 672))
                                        end
                                        v.HumanoidRootPart.Size = Vector3.new(60, 60, 60)
                                        v.HumanoidRootPart.Transparency = 1
                                        v.Humanoid.JumpPower = 0
                                        v.Humanoid.WalkSpeed = 0
                                        v.HumanoidRootPart.CanCollide = false
                                        v.Humanoid:ChangeState(11)
                                        v.Humanoid:ChangeState(14)
                                        PosMon = v.HumanoidRootPart.CFrame
                                        if game.Players.LocalPlayer.Character:FindFirstChild("Black Leg") and
                                            game.Players.LocalPlayer.Character:FindFirstChild("Black Leg").Level.Value >=
                                            150 then
                                            game:service('VirtualInputManager'):SendKeyEvent(true, "V", false, game)
                                            game:service('VirtualInputManager'):SendKeyEvent(false, "V", false, game)
                                        end
                                        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.HumanoidRootPart
                                                                                                         .CFrame *
                                                                                                         CFrame.new(0,
                                                Distance_Auto_Farm, 0)
                                    end
                                until not game:GetService("Workspace").Enemies:FindFirstChild(Name) or not FarmLv or
                                    not string.find(GetQuestTitle.Text, NameMon) or v.Humanoid.Health <= 0 or
                                    not v.Parent or GetQuest.Visible == false
                                StartMagnet = false
                                NeedAttacking = false
                            else
                                Com("F_", "AbandonQuest");
                            end
                        end
                    end
                else
                    StartMagnet = false
                    NeedAttacking = false
                    if not string.find(GetQuestTitle.Text, NameMon) then
                        Com("F_", "AbandonQuest");
                    end
                    Modstween = toTarget(CFrameMon.Position, CFrameMon)
                    if World1 and (Name == "Fishman Commando [Lv. 400]" or Name == "Fishman Warrior [Lv. 375]") and
                        (CFrameQuest.Position -
                            game:GetService("Players").LocalPlayer.Character:WaitForChild("HumanoidRootPart").Position).magnitude >
                        50000 then
                        if Modstween then
                            Modstween:Stop()
                        end
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance", Vector3.new(
                            61163.8515625, 11.6796875, 1819.7841796875))
                    elseif World1 and not (Name == "Fishman Commando [Lv. 400]" or Name == "Fishman Warrior [Lv. 375]") and
                        (CFrameQuest.Position -
                            game:GetService("Players").LocalPlayer.Character:WaitForChild("HumanoidRootPart").Position).magnitude >
                        50000 then
                        if Modstween then
                            Modstween:Stop()
                        end
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance", Vector3.new(
                            3864.8515625, 6.6796875, -1926.7841796875))
                    elseif World2 and string.find(Name, "Ship") and
                        (CFrameQuest.Position -
                            game:GetService("Players").LocalPlayer.Character:WaitForChild("HumanoidRootPart").Position).magnitude >
                        30000 then
                        if Modstween then
                            Modstween:Stop()
                        end
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance", Vector3.new(
                            923.21252441406, 126.9760055542, 32852.83203125))
                    elseif World2 and not string.find(Name, "Ship") and
                        (CFrameQuest.Position -
                            game:GetService("Players").LocalPlayer.Character:WaitForChild("HumanoidRootPart").Position).magnitude >
                        30000 then
                        if Modstween then
                            Modstween:Stop()
                        end
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance", Vector3.new(
                            -6508.5581054688, 89.034996032715, -132.83953857422))
                    elseif (CFrameMon.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude <=
                        250 then
                        if Modstween then
                            Modstween:Stop()
                        end
                        toTarget(CFrameMon)
                    end
                end
            end
        end
    end
end)()

-- [Check Notification]
LPH_JIT_MAX(function()
    function CheckNotifyComplete()
        for i, v in pairs(game:GetService("Players")["LocalPlayer"].PlayerGui:FindFirstChild("Notifications")
            :GetChildren()) do
            if v.Name == "NotificationTemplate" then
                if string.lower(v.Text):find("quest completed") then
                    pcall(function()
                        v:Destroy()
                    end)
                    return true
                end
            end
        end
        return false
    end
end)()

local NoLoopDuplicate = false
local SubQuest = false
local oldmob = Name
local oldcheckquest = NameMon

LPH_JIT_MAX(function()
    fask.spawn(function()
        while wait() do
            pcall(function()
                if FarmLv then
                    if Double_Quest then
                        if SubQuest == true then
                            if LevelFarm then
                                if tonumber(LevelFarm - 1) ~= 0 then
                                    CheckOldQuest(tonumber(LevelFarm - 1))
                                end
                            end
                        else
                            CheckQuest()
                            oldmob = Name
                            oldcheckquest = NameMon
                            spawn(function()
                                pcall(function()
                                    if NoLoopDuplicate == false then
                                        if CheckNotifyComplete() and FarmLv then
                                            NoLoopDuplicate = true
                                            while wait() do
                                                SubQuest = true
                                                if CheckNotifyComplete() or FarmLv == false then
                                                    break
                                                end
                                            end
                                            SubQuest = false
                                            NoLoopDuplicate = false
                                        end
                                    end
                                end)
                            end)
                            if SubQuest == true then
                                if LevelFarm then
                                    if tonumber(LevelFarm - 1) ~= 0 then
                                        CheckOldQuest(tonumber(LevelFarm - 1))
                                    end
                                end
                            end
                        end
                    else
                        CheckQuest()
                    end
                    AutoFarmLevel()
                end
            end)
        end
    end)
end)()

Weapon = {}
for i, v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
    if v:IsA("Tool") then
        table.insert(Weapon, v.Name)
    end
end
for i, v in pairs(game.Players.LocalPlayer.Character:GetChildren()) do
    if v:IsA("Tool") then
        table.insert(Weapon, v.Name)
    end
end

Tabs.Main:AddParagraph({
    Title = "Settings",
    Content = "Select Weapons For Use Auto Find Items And More.!"
})

local Selected_Weaponssss = Tabs.Main:AddDropdown("Selected_Weaponssss", {
    Title = "Selected Weapons",
    Values = Weapon,
    Multi = false,
    Default = 1
})

Selected_Weaponssss:OnChanged(function(value)
    Selected_Weapons = value
    Save()
end)

-- Page2:Button("Refresh Weapons", function()
-- 	Refresh_Weapon:Clear()
-- 	for i,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
-- 		if v:IsA("Tool") then
-- 			Refresh_Weapon:Add(v.Name)
-- 		end
-- 	end
-- 	for i,v in pairs(game.Players.LocalPlayer.Character:GetChildren()) do
-- 		if v:IsA("Tool") then
-- 			Refresh_Weapon:Add(v.Name)
-- 		end
-- 	end
-- end)

Tabs.Main:AddButton({
    Title = "Disabled Notification",
    Description = "Remove Notification Text",
    Callback = function()
        game:GetService("Players")["LocalPlayer"].PlayerGui:FindFirstChild("Notifications"):Destroy()
    end
})

local SelectFastAttackMode = (SelectFastAttackMode or "Fast Super Fast Attack")

SelectedFastAttackMode = {"Normal Attack", "Fast Attack", "Super Fast Attack"}

local function ChangeModeFastAttack(SelectFastAttackMode)
    if SelectFastAttackMode == "Normal Attack" then
        FireCooldown = 0.1
    elseif SelectFastAttackMode == "Fast Attack" then
        FireCooldown = 0.07
    elseif SelectFastAttackMode == "Super Fast Attack" then
        FireCooldown = 0.04
    end
end

local SelectedFastAttackModes = Tabs.Main:AddDropdown("SelectedFastAttackModes", {
    Title = "Fast Attack Mode",
    Values = SelectedFastAttackMode,
    Multi = false,
    Default = 3
})

SelectedFastAttackModes:OnChanged(function(value)
    SelectFastAttackMode = value
    ChangeModeFastAttack(SelectFastAttackMode)
    Save()
end)

local FASTAT = Tabs.Main:AddToggle("Fast_Attack", {
    Title = "Fast Attack",
    Default = true
})
local DMGAU = Tabs.Main:AddToggle("Damage_Aura", {
    Title = "Damage Aura",
    Default = DamageAura
})
local ClickNoCooldowns = Tabs.Main:AddToggle("ClickNoCooldown", {
    Title = "Click No Cooldown",
    Default = ClickNoCooldown
})
local NoAtNim = Tabs.Main:AddToggle("ClickNoCooldown", {
    Title = "No Attack Animation & Dmg",
    Default = true
})
FASTAT:OnChanged(function(value)
    Fast_Attack = value
    Save()
end)
DMGAU:OnChanged(function(value)
    DamageAura = value
end)
ClickNoCooldowns:OnChanged(function(value)
    ClickNoCooldown = value
    Save()
end)
NoAtNim:OnChanged(function(value)
    NoAttackAnimation = value
    DmgAttack.Enabled = not value
end)

local Mouse = game:GetService("Players").LocalPlayer:GetMouse()
Mouse.Button1Down:Connect(function()
    if ClickNoCooldown then
        local ac = CombatFrameworkR.activeController
        if ac and ac.equipped then
            ac.hitboxMagnitude = 55
            pcall(AttackFunction, 3)
        end
    end
end)

Tabs.Main:AddButton({
    Title = "Redeem All Code Exp x2",
    Description = "Redeem Code BF",
    Callback = function()
        function UseCode(Text)
            game:GetService("ReplicatedStorage").Remotes.Redeem:InvokeServer(Text)
        end
        UseCode("Enyo_is_Pro")
        UseCode("Magicbus")
        UseCode("JCWK")
        UseCode("Starcodeheo")
        UseCode("Bluxxy")
        UseCode("fudd10_v2")
        UseCode("3BVISITS")
        UseCode("FUDD10")
        UseCode("BIGNEWS")
        UseCode("Sub2OfficialNoobie")
        UseCode("SUB2GAMERROBOT_EXP1")
        UseCode("StrawHatMaine")
        UseCode("SUB2NOOBMASTER123")
        UseCode("Sub2Daigrock")
        UseCode("Axiore")
        UseCode("TantaiGaming")
        UseCode("STRAWHATMAINE")
        UseCode("kittgaming")
        UseCode("Enyu_is_Pro")
        UseCode("Sub2Fer999")
        UseCode("THEGREATACE")
        UseCode("GAMERROBOT_YT")
        UseCode("SECRET_ADMIN")
    end
})

Tabs.Main:AddParagraph({
    Title = "Bosses Farm"
})

local BossTable = {}
for i, v in pairs(game:GetService("ReplicatedStorage"):GetChildren()) do
    if string.find(v.Name, "Boss") then
        if v.Name == "Ice Admiral [Lv. 700] [Boss]" then

        else
            table.insert(BossTable, v.Name)
        end
    end
end

local Boss_Dropdown = Tabs.Main:AddDropdown("Boss_Dropdown", {
    Title = "Select Bosses Farm",
    Values = BossTable,
    Multi = false,
    Default = 1
})

Boss_Dropdown:OnChanged(function(value)
    Select_Bosses = value
    Save()
end)

-- Page1:Button("Refresh Bosses",function()
-- 	Boss_Dropdown:Clear();
-- 	local BossTable = {}   
-- 	for i, v in pairs(game:GetService("ReplicatedStorage"):GetChildren()) do
-- 		if string.find(v.Name, "Boss") then
-- 			if v.Name == "Ice Admiral [Lv. 700] [Boss]" then

-- 			else
-- 				Boss_Dropdown:Add(v.Name)
-- 			end
-- 		end
-- 	end
-- end)

local FBSSS = Tabs.Main:AddToggle("Auto_Farm_Bosses", {
    Title = "Auto Farm Bosses",
    Default = Auto_Boss_Select
})

FBSSS:OnChanged(function(value)
    Auto_Boss_Select = value
    if value == false then
        toTarget(game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame)
    end
    Save()
end)

local QBSS = Tabs.Main:AddToggle("Auto_Quest_Bosses", {
    Title = "Auto Quest Bosses",
    Default = Auto_Quest_Bosses
})

QBSS:OnChanged(function(value)
    Auto_Quest_Bosses = value
    Save()
end)

fask.spawn(LPH_JIT_MAX(function()
    while wait() do
        if Auto_Boss_Select then
            pcall(function()
                CheckBossQuest()
                if MsBoss == "Soul Reaper [Lv. 2100] [Raid Boss]" or MsBoss == "Longma [Lv. 2000] [Boss]" or MsBoss ==
                    "Don Swan [Lv. 1000] [Boss]" or MsBoss == "Cursed Captain [Lv. 1325] [Raid Boss]" or MsBoss ==
                    "Order [Lv. 1250] [Raid Boss]" or MsBoss == "rip_indra True Form [Lv. 5000] [Raid Boss]" then
                    if game:GetService("Workspace").Enemies:FindFirstChild(MsBoss) then
                        for i, v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                            if v.Name == MsBoss then
                                repeat
                                    wait()
                                    if Auto_Haki then
                                        if not game.Players.LocalPlayer.Character:FindFirstChild("HasBuso") then
                                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Buso")
                                        end
                                    end
                                    if not game.Players.LocalPlayer.Character:FindFirstChild(Selected_Weapons) then
                                        wait()
                                        EquipWeapon(Selected_Weapons)
                                    end
                                    StartMagnet = true
                                    NeedAttacking = true
                                    toTarget(v.HumanoidRootPart.CFrame * CFrame.new(1, 30, 0))
                                    PosMon = v.HumanoidRootPart.CFrame
                                    v.HumanoidRootPart.Size = Vector3.new(60, 60, 60)
                                    v.Humanoid.JumpPower = 0
                                    v.Humanoid.WalkSpeed = 0
                                    v.HumanoidRootPart.CanCollide = false
                                    v.Humanoid:ChangeState(11)
                                until Auto_Boss_Select == false or not v.Parent or v.Humanoid.Health <= 0
                            end
                        end
                    else
                        toTarget(CFrameBoss)
                    end
                else
                    if Auto_Boss_Select then
                        CheckBossQuest()
                        if not string.find(game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container
                                               .QuestTitle.Title.Text, NameBoss) then
                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("AbandonQuest")
                        end
                        if game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == false then
                            repeat
                                wait()
                                toTarget(CFrameQuestBoss)
                            until (CFrameQuestBoss.Position -
                                game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <=
                                3 or not Auto_Boss_Select
                            if (CFrameQuestBoss.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <=
                                4 then
                                wait(1.1)
                                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StartQuest",
                                    NameQuestBoss, LevelQuestBoss)
                            end
                        elseif game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == true then
                            if game:GetService("Workspace").Enemies:FindFirstChild(MsBoss) then
                                for i, v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                                    if v.Name == MsBoss then
                                        repeat
                                            wait()
                                            if string.find(game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest
                                                               .Container.QuestTitle.Title.Text, NameBoss) then
                                                if Auto_Haki then
                                                    if not game.Players.LocalPlayer.Character:FindFirstChild("HasBuso") then
                                                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(
                                                            "Buso")
                                                    end
                                                end
                                                if not game.Players.LocalPlayer.Character:FindFirstChild(
                                                    Selected_Weapons) then
                                                    wait()
                                                    EquipWeapon(Selected_Weapons)
                                                end
                                                StartMagnet = true
                                                NeedAttacking = true
                                                toTarget(v.HumanoidRootPart.CFrame * CFrame.new(1, 30, 0))
                                                PosMon = v.HumanoidRootPart.CFrame
                                                v.HumanoidRootPart.Size = Vector3.new(60, 60, 60)
                                                v.Humanoid.JumpPower = 0
                                                v.Humanoid.WalkSpeed = 0
                                                v.HumanoidRootPart.CanCollide = false
                                                v.Humanoid:ChangeState(11)
                                            else
                                                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(
                                                    "AbandonQuest")
                                            end
                                        until Auto_Boss_Select == false or not v.Parent or v.Humanoid.Health <= 0
                                    end
                                end
                            else
                                toTarget(CFrameBoss)
                            end
                        end
                    else
                        if game:GetService("Workspace").Enemies:FindFirstChild(MsBoss) then
                            for i, v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                                if v.Name == MsBoss then
                                    repeat
                                        wait()
                                        if Auto_Haki then
                                            if not game.Players.LocalPlayer.Character:FindFirstChild("HasBuso") then
                                                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Buso")
                                            end
                                        end
                                        if not game.Players.LocalPlayer.Character:FindFirstChild(Selected_Weapons) then
                                            wait()
                                            EquipWeapon(Selected_Weapons)
                                        end
                                        StartMagnet = true
                                        NeedAttacking = true
                                        toTarget(v.HumanoidRootPart.CFrame * CFrame.new(1, 30, 0))
                                        PosMon = v.HumanoidRootPart.CFrame
                                        v.HumanoidRootPart.Size = Vector3.new(60, 60, 60)
                                        v.Humanoid.JumpPower = 0
                                        v.Humanoid.WalkSpeed = 0
                                        v.HumanoidRootPart.CanCollide = false
                                        v.Humanoid:ChangeState(11)
                                    until Auto_Boss_Select == false or not v.Parent or v.Humanoid.Health <= 0
                                end
                            end
                        else
                            toTarget(CFrameBoss)
                        end
                    end
                end
            end)
        end
    end
end))

-- Make_Melee

local SupComplete = false
local EClawComplete = false
local TalComplete = false
local SharkComplete = false
local DeathComplete = false
local GodComplete = false

function GetAllMeleeFarm()
    if SupComplete == false then
        local args = {
            [1] = "BuySuperhuman"
        }
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
        if CheckMasteryWeapon("Superhuman", 400) == "true UpTo" then
            SupComplete = true
        end
    end
    wait(.5)
    if EClawComplete == false then
        local string_1 = "BuyElectricClaw";
        local Target = game:GetService("ReplicatedStorage").Remotes["CommF_"];
        Target:InvokeServer(string_1);

        if CheckMasteryWeapon("Electric Claw", 400) == "true UpTo" then
            EClawComplete = true
        end
    end
    wait(.5)
    if TalComplete == false then
        game.ReplicatedStorage.Remotes.CommF_:InvokeServer("BuyDragonTalon")

        if CheckMasteryWeapon("Dragon Talon", 400) == "true UpTo" then
            TalComplete = true
        end
    end
    wait(.5)
    if SharkComplete == false then
        local args = {
            [1] = "BuySharkmanKarate"
        }
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))

        if CheckMasteryWeapon("Sharkman Karate", 400) == "true UpTo" then
            SharkComplete = true
        end
    end
    wait(.5)
    if DeathComplete == false then
        local args = {
            [1] = "BuyDeathStep"
        }
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))

        if CheckMasteryWeapon("Death Step", 400) == "true UpTo" then
            DeathComplete = true
        end
    end
    if GodComplete == false then
        local args = {
            [1] = "BuyGodhuman"
        }
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))

        if CheckMasteryWeapon("Godhuman", 350) == "true UpTo" then
            GodComplete = true
        end
    end
end

Tabs.Main:AddParagraph({
    Title = "Fighting Style",
    Content = "This is a Fighting Style. Can use ;>!"
})

local Supahumun = Tabs.Main:AddToggle("Auto_Superhuman", {
    Title = "Auto Superhuman",
    Default = Auto_Superhuman
})

Supahumun:OnChanged(function(value)
    Auto_Superhuman = value
    Save()
    fask.spawn(function()
        while wait() do
            pcall(function()
                if Auto_Superhuman then
                    if game.Players.LocalPlayer:FindFirstChild("WeaponAssetCache") then
                        if not game.Players.LocalPlayer.Backpack:FindFirstChild("Combat") and
                            not game.Players.LocalPlayer.Character:FindFirstChild("Combat") then
                            if not game.Players.LocalPlayer.Backpack:FindFirstChild("Black Leg") and
                                not game.Players.LocalPlayer.Character:FindFirstChild("Black Leg") then
                                if not game.Players.LocalPlayer.Backpack:FindFirstChild("Electro") and
                                    not game.Players.LocalPlayer.Character:FindFirstChild("Electro") then
                                    if not game.Players.LocalPlayer.Backpack:FindFirstChild("Fishman Karate") and
                                        not game.Players.LocalPlayer.Character:FindFirstChild("Fishman Karate") then
                                        if not game.Players.LocalPlayer.Backpack:FindFirstChild("Dragon Claw") and
                                            not game.Players.LocalPlayer.Character:FindFirstChild("Dragon Claw") then
                                            if not game.Players.LocalPlayer.Backpack:FindFirstChild("Superhuman") and
                                                not game.Players.LocalPlayer.Character:FindFirstChild("Superhuman") then
                                                local args = {
                                                    [1] = "BuyElectro"
                                                }
                                                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(
                                                    args))
                                            end
                                        end
                                    end
                                end
                            end
                        end

                        Selected_Weapons = GetFightingStyle("Melee")

                        if game.Players.LocalPlayer.Backpack:FindFirstChild("Combat") or
                            game.Players.LocalPlayer.Character:FindFirstChild("Combat") then
                            local args = {
                                [1] = "BuyElectro"
                            }
                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
                        end
                        if game.Players.LocalPlayer.Backpack:FindFirstChild("Electro") and
                            game.Players.LocalPlayer.Backpack:FindFirstChild("Electro").Level.Value >= 300 then
                            local args = {
                                [1] = "BuyBlackLeg"
                            }
                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
                        end
                        if game.Players.LocalPlayer.Character:FindFirstChild("Electro") and
                            game.Players.LocalPlayer.Character:FindFirstChild("Electro").Level.Value >= 300 then
                            local args = {
                                [1] = "BuyBlackLeg"
                            }
                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
                        end
                        if game.Players.LocalPlayer.Backpack:FindFirstChild("Black Leg") and
                            game.Players.LocalPlayer.Backpack:FindFirstChild("Black Leg").Level.Value >= 300 then
                            local args = {
                                [1] = "BuyFishmanKarate"
                            }
                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
                        end
                        if game.Players.LocalPlayer.Character:FindFirstChild("Black Leg") and
                            game.Players.LocalPlayer.Character:FindFirstChild("Black Leg").Level.Value >= 300 then
                            local args = {
                                [1] = "BuyFishmanKarate"
                            }
                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
                        end
                        if game.Players.LocalPlayer.Backpack:FindFirstChild("Fishman Karate") and
                            game.Players.LocalPlayer.Backpack:FindFirstChild("Fishman Karate").Level.Value >= 300 then
                            local args = {
                                [1] = "BlackbeardReward",
                                [2] = "DragonClaw",
                                [3] = "2"
                            }
                            HaveDragonClaw = game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(
                                args))
                            if Auto_Superhuman and game.Players.LocalPlayer.Data.Fragments.Value <= 1500 and
                                HaveDragonClaw == 0 then
                                if game.Players.LocalPlayer.Data.Level.Value > 1100 then
                                    Select_Raids = "Flame"
                                    Auto_Raids = true
                                    if Auto_Farm_Level then
                                        FarmLv = false
                                    end
                                end
                            else
                                Auto_Raids = false
                                if Auto_Farm_Level then
                                    FarmLv = true
                                end
                                local args = {
                                    [1] = "BlackbeardReward",
                                    [2] = "DragonClaw",
                                    [3] = "2"
                                }
                                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
                                Auto_Raids = false
                                if Auto_Farm_Level then
                                    FarmLv = true
                                end
                            end
                        end
                        if game.Players.LocalPlayer.Character:FindFirstChild("Fishman Karate") and
                            game.Players.LocalPlayer.Character:FindFirstChild("Fishman Karate").Level.Value >= 300 then
                            local args = {
                                [1] = "BlackbeardReward",
                                [2] = "DragonClaw",
                                [3] = "2"
                            }
                            HaveDragonClaw = game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(
                                args))
                            if Auto_Superhuman and game.Players.LocalPlayer.Data.Fragments.Value <= 1500 and
                                HaveDragonClaw == 0 then
                                if game.Players.LocalPlayer.Data.Level.Value > 1100 then
                                    Select_Raids = "Flame"
                                    Auto_Raids = true
                                    if Auto_Farm_Level then
                                        FarmLv = false
                                    end
                                end
                            else
                                Auto_Raids = false
                                if Auto_Farm_Level then
                                    FarmLv = true
                                end
                                local args = {
                                    [1] = "BlackbeardReward",
                                    [2] = "DragonClaw",
                                    [3] = "2"
                                }
                                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
                                Auto_Raids = false
                                if Auto_Farm_Level then
                                    FarmLv = true
                                end
                            end
                        end

                        if game.Players.LocalPlayer.Backpack:FindFirstChild("Dragon Claw") and
                            game.Players.LocalPlayer.Backpack:FindFirstChild("Dragon Claw").Level.Value >= 300 then
                            Auto_Farm_Level = FarmLv
                            local args = {
                                [1] = "BuySuperhuman"
                            }
                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
                        end
                        if game.Players.LocalPlayer.Character:FindFirstChild("Dragon Claw") and
                            game.Players.LocalPlayer.Character:FindFirstChild("Dragon Claw").Level.Value >= 300 then
                            Auto_Farm_Level = FarmLv
                            local args = {
                                [1] = "BuySuperhuman"
                            }
                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
                        end
                    end
                end
            end)
        end
    end)
end);

local Electric_Claw = Tabs.Main:AddToggle("Auto_Electric_Claw", {
    Title = "Auto Electric Claw",
    Default = Auto_Electric_Claw
})

Electric_Claw:OnChanged(function(value)
    Auto_Electric_Claw = value
    Save()
    fask.spawn(function()
        while wait() do
            pcall(function()
                if Auto_Electric_Claw then
                    if game.Players.LocalPlayer:FindFirstChild("WeaponAssetCache") then
                        if game.Players.LocalPlayer.Backpack:FindFirstChild("Electro") and
                            game.Players.LocalPlayer.Backpack:FindFirstChild("Electro").Level.Value < 400 then
                            Selected_Weapons = "Electro"
                        end
                        if game.Players.LocalPlayer.Character:FindFirstChild("Electro") and
                            game.Players.LocalPlayer.Character:FindFirstChild("Electro").Level.Value < 400 then
                            Selected_Weapons = "Electro"
                        end
                        if game.Players.LocalPlayer.Backpack:FindFirstChild("Electro") and
                            game.Players.LocalPlayer.Backpack:FindFirstChild("Electro").Level.Value >= 400 then
                            local v175 = game.ReplicatedStorage.Remotes.CommF_:InvokeServer("BuyElectricClaw", true);
                            if v175 == 4 then
                                local v176 = game.ReplicatedStorage.Remotes.CommF_:InvokeServer("BuyElectricClaw",
                                    "Start");
                                if v176 == nil then
                                    game.Players.localPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-12548, 337,
                                        -7481)
                                end
                            else
                                local string_1 = "BuyElectricClaw";
                                local Target = game:GetService("ReplicatedStorage").Remotes["CommF_"];
                                Target:InvokeServer(string_1);
                            end
                        end
                        if game.Players.LocalPlayer.Character:FindFirstChild("Electro") and
                            game.Players.LocalPlayer.Character:FindFirstChild("Electro").Level.Value >= 400 then
                            local v175 = game.ReplicatedStorage.Remotes.CommF_:InvokeServer("BuyElectricClaw", true);
                            if v175 == 4 then
                                local v176 = game.ReplicatedStorage.Remotes.CommF_:InvokeServer("BuyElectricClaw",
                                    "Start");
                                if v176 == nil then
                                    game.Players.localPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-12548, 337,
                                        -7481)
                                end
                            else
                                local string_1 = "BuyElectricClaw";
                                local Target = game:GetService("ReplicatedStorage").Remotes["CommF_"];
                                Target:InvokeServer(string_1);
                            end
                        end
                    end
                end
            end)
        end
    end)
end);

local Death_Step = Tabs.Main:AddToggle("Auto_Death_Step", {
    Title = "Auto Death Step",
    Default = Auto_Death_Step
})

Death_Step:OnChanged(function(value)
    Auto_Death_Step = value
    Save()
    fask.spawn(function()
        while wait() do
            pcall(function()
                if Auto_Death_Step then
                    if game.Players.LocalPlayer:FindFirstChild("WeaponAssetCache") then
                        if game.Players.LocalPlayer.Backpack:FindFirstChild("Black Leg") and
                            game.Players.LocalPlayer.Backpack:FindFirstChild("Black Leg").Level.Value >= 400 then
                            local args = {
                                [1] = "BuyDeathStep"
                            }
                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
                            Selected_Weapons = "Death Step"
                        end
                        if game.Players.LocalPlayer.Character:FindFirstChild("Black Leg") and
                            game.Players.LocalPlayer.Character:FindFirstChild("Black Leg").Level.Value >= 400 then
                            local args = {
                                [1] = "BuyDeathStep"
                            }
                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))

                            Selected_Weapons = "Death Step"
                        end
                        if game.Players.LocalPlayer.Backpack:FindFirstChild("Black Leg") and
                            game.Players.LocalPlayer.Backpack:FindFirstChild("Black Leg").Level.Value < 400 then
                            Selected_Weapons = "Black Leg"
                        end
                    end
                end
            end)
        end
    end)
end);

local Sharkman_Karate = Tabs.Main:AddToggle("Auto_Sharkman_Karate", {
    Title = "Auto Sharkman Karate",
    Default = Auto_Sharkman_Karate
})

Sharkman_Karate:OnChanged(function(value)
    Auto_Sharkman_Karate = value
    Save()
    fask.spawn(function()
        while wait() do
            pcall(function()
                if Auto_Sharkman_Karate then
                    if game.Players.LocalPlayer:FindFirstChild("WeaponAssetCache") then
                        if game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Fishman Karate") or
                            game:GetService("Players").LocalPlayer.Character:FindFirstChild("Fishman Karate") or
                            game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Sharkman Karate") or
                            game:GetService("Players").LocalPlayer.Character:FindFirstChild("Sharkman Karate") then
                            if game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Fishman Karate") and
                                game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Fishman Karate").Level
                                    .Value >= 400 then
                                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuySharkmanKarate")
                                Selected_Weapons = "Sharkman Karate"
                            end
                            if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Fishman Karate") and
                                game:GetService("Players").LocalPlayer.Character:FindFirstChild("Fishman Karate").Level
                                    .Value >= 400 then
                                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuySharkmanKarate")
                                Selected_Weapons = "Sharkman Karate"
                            end
                            if game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Fishman Karate") and
                                game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Fishman Karate").Level
                                    .Value <= 400 then
                                Selected_Weapons = "Fishman Karate"
                            end
                        else
                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyFishmanKarate")
                        end
                    end
                end
            end)
        end
    end)
end);

local Dragon_Talon = Tabs.Main:AddToggle("Auto_Sharkman_Karate", {
    Title = "Auto Dragon Talon",
    Default = Auto_Dragon_Talon
})

Dragon_Talon:OnChanged(function(value)
    Auto_Dragon_Talon = value
    if Auto_Dragon_Talon then
        Com("F_", "BlackbeardReward", "DragonClaw", "2")
    end
    Save()
    fask.spawn(function()
        while wait() do
            pcall(function()
                if Auto_Dragon_Talon then
                    if game.Players.LocalPlayer:FindFirstChild("WeaponAssetCache") then
                        if game.Players.LocalPlayer.Backpack:FindFirstChild("Dragon Claw") and
                            game.Players.LocalPlayer.Backpack:FindFirstChild("Dragon Claw").Level.Value <= 399 and
                            game.Players.LocalPlayer.Character.Humanoid.Health > 0 then
                            Selected_Weapons = "Dragon Claw"
                        end
                        if game.Players.LocalPlayer.Character:FindFirstChild("Dragon Claw") and
                            game.Players.LocalPlayer.Character:FindFirstChild("Dragon Claw").Level.Value <= 399 and
                            game.Players.LocalPlayer.Character.Humanoid.Health > 0 then
                            Selected_Weapons = "Dragon Claw"
                        end

                        if game.Players.LocalPlayer.Backpack:FindFirstChild("Dragon Claw") and
                            game.Players.LocalPlayer.Backpack:FindFirstChild("Dragon Claw").Level.Value >= 400 and
                            game.Players.LocalPlayer.Character.Humanoid.Health > 0 then
                            Selected_Weapons = "Dragon Claw"
                            if game.ReplicatedStorage.Remotes.CommF_:InvokeServer("BuyDragonTalon", true) == 3 then
                                local string_1 = "Bones";
                                local string_2 = "Buy";
                                local number_1 = 1;
                                local number_2 = 1;
                                local Target = game:GetService("ReplicatedStorage").Remotes["CommF_"];
                                Target:InvokeServer(string_1, string_2, number_1, number_2);

                                local string_1 = "BuyDragonTalon";
                                local bool_1 = true;
                                local Target = game:GetService("ReplicatedStorage").Remotes["CommF_"];
                                Target:InvokeServer(string_1, bool_1);
                            elseif game.ReplicatedStorage.Remotes.CommF_:InvokeServer("BuyDragonTalon", true) == 1 then
                                game.ReplicatedStorage.Remotes.CommF_:InvokeServer("BuyDragonTalon")
                            else
                                local string_1 = "BuyDragonTalon";
                                local bool_1 = true;
                                local Target = game:GetService("ReplicatedStorage").Remotes["CommF_"];
                                Target:InvokeServer(string_1, bool_1);
                                local string_1 = "BuyDragonTalon";
                                local Target = game:GetService("ReplicatedStorage").Remotes["CommF_"];
                                Target:InvokeServer(string_1);
                            end
                        end

                        if game.Players.LocalPlayer.Character:FindFirstChild("Dragon Claw") and
                            game.Players.LocalPlayer.Character:FindFirstChild("Dragon Claw").Level.Value >= 400 and
                            game.Players.LocalPlayer.Character.Humanoid.Health > 0 then
                            Selected_Weapons = "Dragon Claw"
                            if game.ReplicatedStorage.Remotes.CommF_:InvokeServer("BuyDragonTalon", true) == 3 then
                                local string_1 = "Bones";
                                local string_2 = "Buy";
                                local number_1 = 1;
                                local number_2 = 1;
                                local Target = game:GetService("ReplicatedStorage").Remotes["CommF_"];
                                Target:InvokeServer(string_1, string_2, number_1, number_2);

                                local string_1 = "BuyDragonTalon";
                                local bool_1 = true;
                                local Target = game:GetService("ReplicatedStorage").Remotes["CommF_"];
                                Target:InvokeServer(string_1, bool_1);
                            elseif game.ReplicatedStorage.Remotes.CommF_:InvokeServer("BuyDragonTalon", true) == 1 then
                                game.ReplicatedStorage.Remotes.CommF_:InvokeServer("BuyDragonTalon")
                            else
                                local string_1 = "BuyDragonTalon";
                                local bool_1 = true;
                                local Target = game:GetService("ReplicatedStorage").Remotes["CommF_"];
                                Target:InvokeServer(string_1, bool_1);
                                local string_1 = "BuyDragonTalon";
                                local Target = game:GetService("ReplicatedStorage").Remotes["CommF_"];
                                Target:InvokeServer(string_1);
                            end
                        end
                    end
                end
            end)
        end
    end)
end);

local Godhumanez = Tabs.Main:AddToggle("Auto_Godhuman", {
    Title = "Auto God Human",
    Default = Auto_Godhuman
})

Godhumanez:OnChanged(function(value)
    Auto_Godhuman = value
    BuyGodhuman = tonumber(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyGodhuman", true))
    if BuyGodhuman then
        if BuyGodhuman ~= 1 then
            GetAllMeleeFarm()
        end
    end
    Save()
end)

fask.spawn(function()
    while wait() do
        pcall(function()
            if Auto_Godhuman then
                BuyGodhuman = tonumber(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyGodhuman",
                    true))
                if BuyGodhuman then
                    if BuyGodhuman == 1 then
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyGodhuman")
                        Auto_Godhuman = false
                    end
                end
                if not HasTalon then
                    BuyDragonTalon = tonumber(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(
                        "BuyDragonTalon", true))

                    if BuyDragonTalon then
                        if BuyDragonTalon == 1 then
                            HasTalon = true
                        end
                    end
                end
                if not HasSuperhuman then
                    BuySuperhuman = tonumber(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(
                        "BuySuperhuman", true))

                    if BuySuperhuman then
                        if BuySuperhuman == 1 then
                            HasSuperhuman = true
                        end
                    end
                end
                if not HasKarate then
                    BuySharkmanKarate = tonumber(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(
                        "BuySharkmanKarate", true))

                    if BuySharkmanKarate then
                        if BuySharkmanKarate == 1 then
                            HasKarate = true
                        end
                    end
                end
                if not HasDeathStep then
                    BuyDeathStep = tonumber(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(
                        "BuyDeathStep", true))

                    if BuyDeathStep then
                        if BuyDeathStep == 1 then
                            HasDeathStep = true
                        end
                    end
                end
                if not HasElectricClaw then
                    BuyElectricClaw = tonumber(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(
                        "BuyElectricClaw", true))
                    if BuyElectricClaw then
                        if BuyElectricClaw == 1 then
                            HasElectricClaw = true
                        end
                    end
                end

                if not HasSuperhuman then
                    if game.Players.LocalPlayer:FindFirstChild("WeaponAssetCache") then
                        if not game.Players.LocalPlayer.Backpack:FindFirstChild("Combat") and
                            not game.Players.LocalPlayer.Character:FindFirstChild("Combat") then
                            if not game.Players.LocalPlayer.Backpack:FindFirstChild("Black Leg") and
                                not game.Players.LocalPlayer.Character:FindFirstChild("Black Leg") then
                                if not game.Players.LocalPlayer.Backpack:FindFirstChild("Electro") and
                                    not game.Players.LocalPlayer.Character:FindFirstChild("Electro") then
                                    if not game.Players.LocalPlayer.Backpack:FindFirstChild("Fishman Karate") and
                                        not game.Players.LocalPlayer.Character:FindFirstChild("Fishman Karate") then
                                        if not game.Players.LocalPlayer.Backpack:FindFirstChild("Dragon Claw") and
                                            not game.Players.LocalPlayer.Character:FindFirstChild("Dragon Claw") then
                                            if not game.Players.LocalPlayer.Backpack:FindFirstChild("Superhuman") and
                                                not game.Players.LocalPlayer.Character:FindFirstChild("Superhuman") then
                                                local args = {
                                                    [1] = "BuyElectro"
                                                }
                                                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(
                                                    args))
                                            end
                                        end
                                    end
                                end
                            end
                        end
                        Selected_Weapons = GetFightingStyle("Melee")

                        if game.Players.LocalPlayer.Backpack:FindFirstChild("Combat") or
                            game.Players.LocalPlayer.Character:FindFirstChild("Combat") then
                            local args = {
                                [1] = "BuyElectro"
                            }
                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
                        end
                        if game.Players.LocalPlayer.Backpack:FindFirstChild("Electro") and
                            game.Players.LocalPlayer.Backpack:FindFirstChild("Electro").Level.Value >= 300 then
                            local args = {
                                [1] = "BuyBlackLeg"
                            }
                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
                        end
                        if game.Players.LocalPlayer.Character:FindFirstChild("Electro") and
                            game.Players.LocalPlayer.Character:FindFirstChild("Electro").Level.Value >= 300 then
                            local args = {
                                [1] = "BuyBlackLeg"
                            }
                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
                        end
                        if game.Players.LocalPlayer.Backpack:FindFirstChild("Black Leg") and
                            game.Players.LocalPlayer.Backpack:FindFirstChild("Black Leg").Level.Value >= 300 then
                            local args = {
                                [1] = "BuyFishmanKarate"
                            }
                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
                        end
                        if game.Players.LocalPlayer.Character:FindFirstChild("Black Leg") and
                            game.Players.LocalPlayer.Character:FindFirstChild("Black Leg").Level.Value >= 300 then
                            local args = {
                                [1] = "BuyFishmanKarate"
                            }
                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
                        end
                        if game.Players.LocalPlayer.Backpack:FindFirstChild("Fishman Karate") and
                            game.Players.LocalPlayer.Backpack:FindFirstChild("Fishman Karate").Level.Value >= 300 then
                            local args = {
                                [1] = "BlackbeardReward",
                                [2] = "DragonClaw",
                                [3] = "2"
                            }
                            HaveDragonClaw = game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(
                                args))
                            if Auto_Godhuman and game.Players.LocalPlayer.Data.Fragments.Value <= 1500 and
                                HaveDragonClaw == 0 then
                                if game.Players.LocalPlayer.Data.Level.Value > 1100 then
                                    if Auto_Farm_Level then
                                        FarmLv = false
                                    end
                                end
                            else
                                if Auto_Farm_Level then
                                    FarmLv = true
                                end
                                local args = {
                                    [1] = "BlackbeardReward",
                                    [2] = "DragonClaw",
                                    [3] = "2"
                                }
                                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
                            end
                        end
                        if game.Players.LocalPlayer.Character:FindFirstChild("Fishman Karate") and
                            game.Players.LocalPlayer.Character:FindFirstChild("Fishman Karate").Level.Value >= 300 then
                            local args = {
                                [1] = "BlackbeardReward",
                                [2] = "DragonClaw",
                                [3] = "2"
                            }
                            HaveDragonClaw = game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(
                                args))
                            if Auto_Godhuman and game.Players.LocalPlayer.Data.Fragments.Value <= 1500 and
                                HaveDragonClaw == 0 then
                                if game.Players.LocalPlayer.Data.Level.Value > 1100 then
                                    if Auto_Farm_Level then
                                        FarmLv = false
                                    end
                                end
                            else
                                if Auto_Farm_Level then
                                    FarmLv = true
                                end
                                local args = {
                                    [1] = "BlackbeardReward",
                                    [2] = "DragonClaw",
                                    [3] = "2"
                                }
                                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
                                if Auto_Farm_Level then
                                    FarmLv = true
                                end
                            end
                        end

                        if game.Players.LocalPlayer.Backpack:FindFirstChild("Dragon Claw") and
                            game.Players.LocalPlayer.Backpack:FindFirstChild("Dragon Claw").Level.Value >= 300 then
                            if Auto_Farm_Level then
                                FarmLv = true
                            end
                            local args = {
                                [1] = "BuySuperhuman"
                            }
                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
                        end
                        if game.Players.LocalPlayer.Character:FindFirstChild("Dragon Claw") and
                            game.Players.LocalPlayer.Character:FindFirstChild("Dragon Claw").Level.Value >= 300 then
                            if Auto_Farm_Level then
                                FarmLv = true
                            end
                            local args = {
                                [1] = "BuySuperhuman"
                            }
                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
                        end
                    end
                elseif not HasKarate then
                    if game.Players.LocalPlayer:FindFirstChild("WeaponAssetCache") then
                        if not game.Players.LocalPlayer.Backpack:FindFirstChild("Fishman Karate") and
                            not game.Players.LocalPlayer.Character:FindFirstChild("Fishman Karate") then
                            if not game.Players.LocalPlayer.Backpack:FindFirstChild("Sharkman Karate") and
                                not game.Players.LocalPlayer.Character:FindFirstChild("Sharkman Karate") then
                                local args = {
                                    [1] = "BuyFishmanKarate"
                                }
                                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
                            end
                        end

                        if game.Players.LocalPlayer.Backpack:FindFirstChild("Fishman Karate") and
                            game.Players.LocalPlayer.Backpack:FindFirstChild("Fishman Karate").Level.Value >= 400 then
                            if game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuySharkmanKarate",
                                true) == "I lost my house keys, could you help me find them? Thanks." and
                                not game.Players.LocalPlayer.Character:FindFirstChild("Water Key") and
                                not game.Players.LocalPlayer.Backpack:FindFirstChild("Water Key") then
                                if World2 then
                                    KillSharkMan = true
                                    if Auto_Farm_Level then
                                        FarmLv = false
                                    end
                                else
                                    KillSharkMan = false
                                    if Auto_Farm_Level then
                                        FarmLv = true
                                    end
                                end
                            elseif tonumber(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(
                                "BuySharkmanKarate", true)) == 1 then
                                KillSharkMan = false
                                if Auto_Farm_Level then
                                    FarmLv = true
                                end
                                local args = {
                                    [1] = "BuySharkmanKarate"
                                }
                                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
                            elseif game.Players.LocalPlayer.Character:FindFirstChild("Water Key") or
                                game.Players.LocalPlayer.Backpack:FindFirstChild("Water Key") then
                                KillSharkMan = false
                                if Auto_Farm_Level then
                                    FarmLv = true
                                end
                                local args = {
                                    [1] = "BuySharkmanKarate"
                                }
                                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
                            end
                        end

                        if game.Players.LocalPlayer.Character:FindFirstChild("Fishman Karate") and
                            game.Players.LocalPlayer.Character:FindFirstChild("Fishman Karate").Level.Value >= 400 then
                            if game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuySharkmanKarate",
                                true) == "I lost my house keys, could you help me find them? Thanks." and
                                not game.Players.LocalPlayer.Character:FindFirstChild("Water Key") and
                                not game.Players.LocalPlayer.Backpack:FindFirstChild("Water Key") then
                                if World2 then
                                    KillSharkMan = true
                                    if Auto_Farm_Level then
                                        FarmLv = false
                                    end
                                else
                                    if Auto_Farm_Level then
                                        FarmLv = true
                                    end
                                    KillSharkMan = false
                                end
                            elseif tonumber(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(
                                "BuySharkmanKarate", true)) == 1 then
                                KillSharkMan = false
                                if Auto_Farm_Level then
                                    FarmLv = true
                                end
                                local args = {
                                    [1] = "BuySharkmanKarate"
                                }
                                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
                            elseif game.Players.LocalPlayer.Character:FindFirstChild("Water Key") or
                                game.Players.LocalPlayer.Backpack:FindFirstChild("Water Key") then
                                KillSharkMan = false
                                if Auto_Farm_Level then
                                    FarmLv = true
                                end
                                local args = {
                                    [1] = "BuySharkmanKarate"
                                }
                                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
                            end
                        end
                        Selected_Weapons = GetFightingStyle("Melee")
                    end
                elseif not HasDeathStep then
                    if game.Players.LocalPlayer:FindFirstChild("WeaponAssetCache") then
                        if game.Players.LocalPlayer.Backpack:FindFirstChild("Black Leg") and
                            game.Players.LocalPlayer.Backpack:FindFirstChild("Black Leg").Level.Value >= 400 then
                            local args = {
                                [1] = "BuyDeathStep"
                            }
                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))

                        end
                        if game.Players.LocalPlayer.Character:FindFirstChild("Black Leg") and
                            game.Players.LocalPlayer.Character:FindFirstChild("Black Leg").Level.Value >= 400 then
                            local args = {
                                [1] = "BuyDeathStep"
                            }
                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))

                        end
                        Selected_Weapons = GetFightingStyle("Melee")
                    end
                elseif not HasTalon then
                    if game.Players.LocalPlayer:FindFirstChild("WeaponAssetCache") then
                        Selected_Weapons = GetFightingStyle("Melee")

                        if game.Players.LocalPlayer.Backpack:FindFirstChild("Dragon Claw") and
                            game.Players.LocalPlayer.Backpack:FindFirstChild("Dragon Claw").Level.Value >= 400 and
                            game.Players.LocalPlayer.Character:WaitForChild("Humanoid").Health > 0 then
                            if game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyDragonTalon", true) ==
                                3 then
                                local string_1 = "Bones";
                                local string_2 = "Buy";
                                local number_1 = 1;
                                local number_2 = 1;
                                local Target = game:GetService("ReplicatedStorage").Remotes["CommF_"];
                                Target:InvokeServer(string_1, string_2, number_1, number_2);

                                local string_1 = "BuyDragonTalon";
                                local bool_1 = true;
                                local Target = game:GetService("ReplicatedStorage").Remotes["CommF_"];
                                Target:InvokeServer(string_1, bool_1);
                            elseif game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyDragonTalon",
                                true) == 1 then
                                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyDragonTalon")
                            else
                                local string_1 = "Bones";
                                local string_2 = "Buy";
                                local number_1 = 1;
                                local number_2 = 1;
                                local Target = game:GetService("ReplicatedStorage").Remotes["CommF_"];
                                Target:InvokeServer(string_1, string_2, number_1, number_2);
                            end
                        end

                        if game.Players.LocalPlayer.Character:FindFirstChild("Dragon Claw") and
                            game.Players.LocalPlayer.Character:FindFirstChild("Dragon Claw").Level.Value >= 400 and
                            game.Players.LocalPlayer.Character:WaitForChild("Humanoid").Health > 0 then
                            if game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyDragonTalon", true) ==
                                3 then
                                local string_1 = "Bones";
                                local string_2 = "Buy";
                                local number_1 = 1;
                                local number_2 = 1;
                                local Target = game:GetService("ReplicatedStorage").Remotes["CommF_"];
                                Target:InvokeServer(string_1, string_2, number_1, number_2);

                                local string_1 = "BuyDragonTalon";
                                local bool_1 = true;
                                local Target = game:GetService("ReplicatedStorage").Remotes["CommF_"];
                                Target:InvokeServer(string_1, bool_1);
                            elseif game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyDragonTalon",
                                true) == 1 then
                                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyDragonTalon")
                            else
                                local string_1 = "Bones";
                                local string_2 = "Buy";
                                local number_1 = 1;
                                local number_2 = 1;
                                local Target = game:GetService("ReplicatedStorage").Remotes["CommF_"];
                                Target:InvokeServer(string_1, string_2, number_1, number_2);
                            end
                        end
                    end
                elseif not HasElectricClaw then
                    if game.Players.LocalPlayer:FindFirstChild("WeaponAssetCache") then
                        Selected_Weapons = GetFightingStyle("Melee")
                        if game.Players.LocalPlayer.Backpack:FindFirstChild("Electro") and
                            game.Players.LocalPlayer.Backpack:FindFirstChild("Electro").Level.Value >= 400 then
                            local v175 = game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(
                                "BuyElectricClaw", true);
                            if v175 == 4 then
                                local v176 = game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(
                                    "BuyElectricClaw", "Start");
                                if v176 == nil then
                                    game.Players.localPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-12548, 337,
                                        -7481)
                                end
                            else
                                local string_1 = "BuyElectricClaw";
                                local Target = game:GetService("ReplicatedStorage").Remotes["CommF_"];
                                Target:InvokeServer(string_1);
                            end
                        end

                        if game.Players.LocalPlayer.Character:FindFirstChild("Electro") and
                            game.Players.LocalPlayer.Character:FindFirstChild("Electro").Level.Value >= 400 then
                            local v175 = game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(
                                "BuyElectricClaw", true);
                            if v175 == 4 then
                                local v176 = game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(
                                    "BuyElectricClaw", "Start");
                                if v176 == nil then
                                    game.Players.localPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-12548, 337,
                                        -7481)
                                end
                            else
                                local string_1 = "BuyElectricClaw";
                                local Target = game:GetService("ReplicatedStorage").Remotes["CommF_"];
                                Target:InvokeServer(string_1);
                            end
                        end
                    end
                end
                if BuyGodhuman ~= 1 and HasSuperhuman and HasTalon and HasKarate and HasDeathStep and HasElectricClaw then
                    if HasSuperhuman and not SupComplete then
                        local args = {
                            [1] = "BuySuperhuman"
                        }
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
                        wait(0.2)
                        if CheckMasteryWeapon("Superhuman", 400) == "true UpTo" or CheckMasteryWeapon("Superhuman", 400) ==
                            "true" and SupComplete == false then
                            SupComplete = true
                        end
                    elseif HasTalon and not TalComplete then
                        local args = {
                            [1] = "BuyDragonTalon"
                        }
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
                        wait(0.2)
                        if CheckMasteryWeapon("Dragon Talon", 400) == "true UpTo" or
                            CheckMasteryWeapon("Superhuman", 400) == "true" and TalComplete == false then
                            TalComplete = true
                        end
                    elseif HasKarate and not SharkComplete then
                        local args = {
                            [1] = "BuySharkmanKarate"
                        }
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
                        wait(0.2)
                        if CheckMasteryWeapon("Sharkman Karate", 400) == "true UpTo" or
                            CheckMasteryWeapon("Superhuman", 400) == "true" and SharkComplete == false then
                            SharkComplete = true
                        end
                    elseif HasDeathStep and not DeathComplete then
                        local args = {
                            [1] = "BuyDeathStep"
                        }
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
                        wait(0.2)
                        if CheckMasteryWeapon("Death Step", 400) == "true UpTo" or CheckMasteryWeapon("Superhuman", 400) ==
                            "true" and DeathComplete == false then
                            DeathComplete = true
                        end
                    elseif HasElectricClaw and not EClawComplete then
                        local args = {
                            [1] = "BuyElectricClaw"
                        }
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
                        wait(0.2)
                        if CheckMasteryWeapon("Electric Claw", 400) == "true UpTo" or
                            CheckMasteryWeapon("Superhuman", 400) == "true" and EClawComplete == false then
                            EClawComplete = true
                        end
                    end
                end

                if BuyGodhuman ~= 1 and SupComplete and EClawComplete and TalComplete and SharkComplete and
                    DeathComplete and (not game.Players.LocalPlayer.Character:FindFirstChild("Godhuman") or
                    not game.Players.LocalPlayer.Backpack:FindFirstChild("Godhuman")) then
                    if GetMaterial("Fish Tail") >= 20 then
                        if GetMaterial("Magma Ore") >= 20 then
                            if GetMaterial("Dragon Scale") >= 10 then
                                if GetMaterial("Mystic Droplet") >= 10 then
                                    Com("F_", "BuyGodhuman")
                                    BuyGodhuman = tonumber(
                                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyGodhuman",
                                            true))

                                    if BuyGodhuman then
                                        if BuyGodhuman == 1 then
                                            Auto_Godhuman = false
                                        end
                                    end
                                    if Auto_Farm_Level then
                                        FarmLv = true
                                    end
                                elseif not World2 then
                                    Com("F_", "TravelDressrosa")
                                elseif World2 then
                                    if Auto_Farm_Level then
                                        FarmLv = false
                                    end
                                    CheckMaterial("Mystic Droplet")
                                    if CustomFindFirstChild(MaterialMob) then
                                        for i, v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                                            if Auto_Godhuman and table.find(MaterialMob, v.Name) and
                                                v:FindFirstChild("HumanoidRootPart") and v:FindFirstChild("Humanoid") and
                                                v.Humanoid.Health > 0 then
                                                repeat
                                                    wait()
                                                    FarmtoTarget =
                                                        toTarget(v.HumanoidRootPart.CFrame * CFrame.new(0, 30, 1))
                                                    if v:FindFirstChild("HumanoidRootPart") and
                                                        v:FindFirstChild("Humanoid") and
                                                        (v.HumanoidRootPart.Position -
                                                            game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude <=
                                                        150 then
                                                        if FarmtoTarget then
                                                            FarmtoTarget:Stop()
                                                        end
                                                        NeedAttacking = true
                                                        EquipWeapon(Selected_Weapons)
                                                        spawn(function()
                                                            for i, v2 in pairs(
                                                                game:GetService("Workspace").Enemies:GetChildren()) do
                                                                if v2.Name == v.Name then
                                                                    spawn(function()
                                                                        if InMyNetWork(v2.HumanoidRootPart) then
                                                                            v2.HumanoidRootPart.CFrame =
                                                                                v.HumanoidRootPart.CFrame
                                                                            v2.Humanoid.JumpPower = 0
                                                                            v2.Humanoid.WalkSpeed = 0
                                                                            v2.HumanoidRootPart.CanCollide = false
                                                                            v2.Humanoid:ChangeState(11)
                                                                            v2.HumanoidRootPart.Size = Vector3.new(80,
                                                                                80, 80)
                                                                        end
                                                                    end)
                                                                end
                                                            end
                                                        end)
                                                        if game.Players.LocalPlayer.Character:FindFirstChild("Black Leg") and
                                                            game.Players.LocalPlayer.Character:FindFirstChild(
                                                                "Black Leg").Level.Value >= 150 then
                                                            game:service('VirtualInputManager'):SendKeyEvent(true, "V",
                                                                false, game)
                                                            game:service('VirtualInputManager'):SendKeyEvent(false, "V",
                                                                false, game)
                                                        end
                                                        toTarget(v.HumanoidRootPart.CFrame *
                                                                     CFrame.new(0, Distance_Auto_Farm, 0))
                                                    end
                                                until not CustomFindFirstChild(MaterialMob) or not Auto_Godhuman or
                                                    v.Humanoid.Health <= 0 or not v.Parent
                                                NeedAttacking = false
                                            end
                                        end
                                    else
                                        NeedAttacking = false
                                        Modstween = toTarget(CFrameMon.Position, CFrameMon)
                                        if World1 and (table.find(MaterialMob, "Fishman Commando [Lv. 400]")) and
                                            (CFrameMon.Position -
                                                game:GetService("Players").LocalPlayer.Character:WaitForChild(
                                                    "HumanoidRootPart").Position).magnitude > 50000 then
                                            if Modstween then
                                                Modstween:Stop()
                                            end
                                            wait(.5)
                                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(
                                                "requestEntrance",
                                                Vector3.new(61163.8515625, 11.6796875, 1819.7841796875))
                                        elseif World1 and not (table.find(MaterialMob, "Fishman Commando [Lv. 400]")) and
                                            (CFrameMon.Position -
                                                game:GetService("Players").LocalPlayer.Character:WaitForChild(
                                                    "HumanoidRootPart").Position).magnitude > 50000 then
                                            if Modstween then
                                                Modstween:Stop()
                                            end
                                            wait(.5)
                                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(
                                                "requestEntrance",
                                                Vector3.new(3864.8515625, 6.6796875, -1926.7841796875))
                                        elseif World1 and (table.find(MaterialMob, "God's Guard [Lv. 450]")) and
                                            (CFrameMon.Position -
                                                game:GetService("Players").LocalPlayer.Character:WaitForChild(
                                                    "HumanoidRootPart").Position).magnitude > 3000 then
                                            if Modstween then
                                                Modstween:Stop()
                                            end
                                            wait(.5)
                                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(
                                                "requestEntrance",
                                                Vector3.new(-4607.8227539063, 872.54248046875, -1667.5568847656))
                                        elseif (CFrameMon.Position -
                                            game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude <=
                                            150 then
                                            if Modstween then
                                                Modstween:Stop()
                                            end
                                            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrameMon
                                        end
                                    end
                                end
                            elseif not World3 then
                                Com("F_", "TravelZou")
                            elseif World3 then
                                if Auto_Farm_Level then
                                    FarmLv = false
                                end
                                CheckMaterial("Dragon Scale")
                                if CustomFindFirstChild(MaterialMob) then
                                    for i, v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                                        if Auto_Godhuman and table.find(MaterialMob, v.Name) and
                                            v:FindFirstChild("HumanoidRootPart") and v:FindFirstChild("Humanoid") and
                                            v.Humanoid.Health > 0 then
                                            repeat
                                                wait()
                                                FarmtoTarget =
                                                    toTarget(v.HumanoidRootPart.CFrame *
                                                                 CFrame.new(0, Distance_Auto_Farm, 0))
                                                if v:FindFirstChild("HumanoidRootPart") and v:FindFirstChild("Humanoid") and
                                                    (v.HumanoidRootPart.Position -
                                                        game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude <=
                                                    150 then
                                                    if FarmtoTarget then
                                                        FarmtoTarget:Stop()
                                                    end
                                                    NeedAttacking = true
                                                    EquipWeapon(Selected_Weapons)
                                                    spawn(function()
                                                        for i, v2 in pairs(
                                                            game:GetService("Workspace").Enemies:GetChildren()) do
                                                            if v2.Name == v.Name then
                                                                spawn(function()
                                                                    if InMyNetWork(v2.HumanoidRootPart) then
                                                                        v2.HumanoidRootPart.CFrame = v.HumanoidRootPart
                                                                                                         .CFrame
                                                                        v2.Humanoid.JumpPower = 0
                                                                        v2.Humanoid.WalkSpeed = 0
                                                                        v2.HumanoidRootPart.CanCollide = false
                                                                        v2.Humanoid:ChangeState(11)
                                                                        v2.HumanoidRootPart.Size = Vector3.new(80, 80,
                                                                            80)
                                                                    end
                                                                end)
                                                            end
                                                        end
                                                    end)
                                                    if game.Players.LocalPlayer.Character:FindFirstChild("Black Leg") and
                                                        game.Players.LocalPlayer.Character:FindFirstChild("Black Leg")
                                                            .Level.Value >= 150 then
                                                        game:service('VirtualInputManager'):SendKeyEvent(true, "V",
                                                            false, game)
                                                        game:service('VirtualInputManager'):SendKeyEvent(false, "V",
                                                            false, game)
                                                    end
                                                    toTarget(v.HumanoidRootPart.CFrame *
                                                                 CFrame.new(0, Distance_Auto_Farm, 0))
                                                end
                                            until not CustomFindFirstChild(MaterialMob) or not Auto_Godhuman or
                                                v.Humanoid.Health <= 0 or not v.Parent
                                            NeedAttacking = false
                                        end
                                    end
                                else
                                    NeedAttacking = false
                                    Modstween = toTarget(CFrameMon.Position, CFrameMon)
                                    if World1 and (table.find(MaterialMob, "Fishman Commando [Lv. 400]")) and
                                        (CFrameMon.Position -
                                            game:GetService("Players").LocalPlayer.Character:WaitForChild(
                                                "HumanoidRootPart").Position).magnitude > 50000 then
                                        if Modstween then
                                            Modstween:Stop()
                                        end
                                        wait(.5)
                                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(
                                            "requestEntrance", Vector3.new(61163.8515625, 11.6796875, 1819.7841796875))
                                    elseif World1 and not (table.find(MaterialMob, "Fishman Commando [Lv. 400]")) and
                                        (CFrameMon.Position -
                                            game:GetService("Players").LocalPlayer.Character:WaitForChild(
                                                "HumanoidRootPart").Position).magnitude > 50000 then
                                        if Modstween then
                                            Modstween:Stop()
                                        end
                                        wait(.5)
                                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(
                                            "requestEntrance", Vector3.new(3864.8515625, 6.6796875, -1926.7841796875))
                                    elseif World1 and (table.find(MaterialMob, "God's Guard [Lv. 450]")) and
                                        (CFrameMon.Position -
                                            game:GetService("Players").LocalPlayer.Character:WaitForChild(
                                                "HumanoidRootPart").Position).magnitude > 3000 then
                                        if Modstween then
                                            Modstween:Stop()
                                        end
                                        wait(.5)
                                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(
                                            "requestEntrance",
                                            Vector3.new(-4607.8227539063, 872.54248046875, -1667.5568847656))
                                    elseif (CFrameMon.Position -
                                        game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude <= 150 then
                                        if Modstween then
                                            Modstween:Stop()
                                        end
                                        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrameMon
                                    end
                                end
                            end
                        elseif not World1 then
                            Com("F_", "TravelMain")
                        elseif World1 then
                            if Auto_Farm_Level then
                                FarmLv = false
                            end
                            CheckMaterial("Magma Ore")
                            if CustomFindFirstChild(MaterialMob) then
                                for i, v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                                    if Auto_Godhuman and table.find(MaterialMob, v.Name) and
                                        v:FindFirstChild("HumanoidRootPart") and v:FindFirstChild("Humanoid") and
                                        v.Humanoid.Health > 0 then
                                        repeat
                                            wait()
                                            FarmtoTarget = toTarget(v.HumanoidRootPart.CFrame *
                                                                        CFrame.new(0, Distance_Auto_Farm, 0))
                                            if v:FindFirstChild("HumanoidRootPart") and v:FindFirstChild("Humanoid") and
                                                (v.HumanoidRootPart.Position -
                                                    game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude <=
                                                150 then
                                                if FarmtoTarget then
                                                    FarmtoTarget:Stop()
                                                end
                                                NeedAttacking = true
                                                EquipWeapon(Selected_Weapons)
                                                spawn(function()
                                                    for i, v2 in pairs(
                                                        game:GetService("Workspace").Enemies:GetChildren()) do
                                                        if v2.Name == v.Name then
                                                            spawn(function()
                                                                if InMyNetWork(v2.HumanoidRootPart) then
                                                                    v2.HumanoidRootPart.CFrame = v.HumanoidRootPart
                                                                                                     .CFrame
                                                                    v2.Humanoid.JumpPower = 0
                                                                    v2.Humanoid.WalkSpeed = 0
                                                                    v2.HumanoidRootPart.CanCollide = false
                                                                    v2.Humanoid:ChangeState(11)
                                                                    v2.HumanoidRootPart.Size = Vector3.new(80, 80, 80)
                                                                end
                                                            end)
                                                        end
                                                    end
                                                end)
                                                if game.Players.LocalPlayer.Character:FindFirstChild("Black Leg") and
                                                    game.Players.LocalPlayer.Character:FindFirstChild("Black Leg").Level
                                                        .Value >= 150 then
                                                    game:service('VirtualInputManager'):SendKeyEvent(true, "V", false,
                                                        game)
                                                    game:service('VirtualInputManager'):SendKeyEvent(false, "V", false,
                                                        game)
                                                end
                                                toTarget(v.HumanoidRootPart.CFrame *
                                                             CFrame.new(0, Distance_Auto_Farm, 0))
                                            end
                                        until not CustomFindFirstChild(MaterialMob) or not Auto_Godhuman or
                                            v.Humanoid.Health <= 0 or not v.Parent
                                        NeedAttacking = false
                                    end
                                end
                            else
                                NeedAttacking = false
                                Modstween = toTarget(CFrameMon.Position, CFrameMon)
                                if World1 and (table.find(MaterialMob, "Fishman Commando [Lv. 400]")) and
                                    (CFrameMon.Position -
                                        game:GetService("Players").LocalPlayer.Character:WaitForChild("HumanoidRootPart")
                                            .Position).magnitude > 50000 then
                                    if Modstween then
                                        Modstween:Stop()
                                    end
                                    wait(.5)
                                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",
                                        Vector3.new(61163.8515625, 11.6796875, 1819.7841796875))
                                elseif World1 and not (table.find(MaterialMob, "Fishman Commando [Lv. 400]")) and
                                    (CFrameMon.Position -
                                        game:GetService("Players").LocalPlayer.Character:WaitForChild("HumanoidRootPart")
                                            .Position).magnitude > 50000 then
                                    if Modstween then
                                        Modstween:Stop()
                                    end
                                    wait(.5)
                                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",
                                        Vector3.new(3864.8515625, 6.6796875, -1926.7841796875))
                                elseif World1 and (table.find(MaterialMob, "God's Guard [Lv. 450]")) and
                                    (CFrameMon.Position -
                                        game:GetService("Players").LocalPlayer.Character:WaitForChild("HumanoidRootPart")
                                            .Position).magnitude > 3000 then
                                    if Modstween then
                                        Modstween:Stop()
                                    end
                                    wait(.5)
                                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",
                                        Vector3.new(-4607.8227539063, 872.54248046875, -1667.5568847656))
                                elseif (CFrameMon.Position -
                                    game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude <= 150 then
                                    if Modstween then
                                        Modstween:Stop()
                                    end
                                    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrameMon
                                end
                            end
                        end
                    elseif not World1 then
                        Com("F_", "TravelMain")
                    elseif World1 then
                        if Auto_Farm_Level then
                            FarmLv = false
                        end
                        CheckMaterial("Fish Tail")
                        if CustomFindFirstChild(MaterialMob) then
                            for i, v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                                if Auto_Godhuman and table.find(MaterialMob, v.Name) and
                                    v:FindFirstChild("HumanoidRootPart") and v:FindFirstChild("Humanoid") and
                                    v.Humanoid.Health > 0 then
                                    repeat
                                        wait()
                                        FarmtoTarget = toTarget(v.HumanoidRootPart.CFrame *
                                                                    CFrame.new(0, Distance_Auto_Farm, 0))
                                        if v:FindFirstChild("HumanoidRootPart") and v:FindFirstChild("Humanoid") and
                                            (v.HumanoidRootPart.Position -
                                                game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude <=
                                            150 then
                                            if FarmtoTarget then
                                                FarmtoTarget:Stop()
                                            end
                                            NeedAttacking = true
                                            EquipWeapon(Selected_Weapons)
                                            spawn(function()
                                                for i, v2 in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                                                    if v2.Name == v.Name then
                                                        spawn(function()
                                                            if InMyNetWork(v2.HumanoidRootPart) then
                                                                v2.HumanoidRootPart.CFrame = v.HumanoidRootPart.CFrame
                                                                v2.Humanoid.JumpPower = 0
                                                                v2.Humanoid.WalkSpeed = 0
                                                                v2.HumanoidRootPart.CanCollide = false
                                                                v2.Humanoid:ChangeState(11)
                                                                v2.HumanoidRootPart.Size = Vector3.new(80, 80, 80)
                                                            end
                                                        end)
                                                    end
                                                end
                                            end)
                                            if game.Players.LocalPlayer.Character:FindFirstChild("Black Leg") and
                                                game.Players.LocalPlayer.Character:FindFirstChild("Black Leg").Level
                                                    .Value >= 150 then
                                                game:service('VirtualInputManager'):SendKeyEvent(true, "V", false, game)
                                                game:service('VirtualInputManager')
                                                    :SendKeyEvent(false, "V", false, game)
                                            end
                                            toTarget(v.HumanoidRootPart.CFrame * CFrame.new(0, Distance_Auto_Farm, 0))
                                        end
                                    until not CustomFindFirstChild(MaterialMob) or not Auto_Godhuman or
                                        v.Humanoid.Health <= 0 or not v.Parent
                                    NeedAttacking = false
                                end
                            end
                        else
                            NeedAttacking = false
                            Modstween = toTarget(CFrameMon.Position, CFrameMon)
                            if World1 and (table.find(MaterialMob, "Fishman Commando [Lv. 400]")) and
                                (CFrameMon.Position -
                                    game:GetService("Players").LocalPlayer.Character:WaitForChild("HumanoidRootPart")
                                        .Position).magnitude > 50000 then
                                if Modstween then
                                    Modstween:Stop()
                                end
                                wait(.5)
                                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",
                                    Vector3.new(61163.8515625, 11.6796875, 1819.7841796875))
                            elseif World1 and not (table.find(MaterialMob, "Fishman Commando [Lv. 400]")) and
                                (CFrameMon.Position -
                                    game:GetService("Players").LocalPlayer.Character:WaitForChild("HumanoidRootPart")
                                        .Position).magnitude > 50000 then
                                if Modstween then
                                    Modstween:Stop()
                                end
                                wait(.5)
                                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",
                                    Vector3.new(3864.8515625, 6.6796875, -1926.7841796875))
                            elseif World1 and (table.find(MaterialMob, "God's Guard [Lv. 450]")) and
                                (CFrameMon.Position -
                                    game:GetService("Players").LocalPlayer.Character:WaitForChild("HumanoidRootPart")
                                        .Position).magnitude > 3000 then
                                if Modstween then
                                    Modstween:Stop()
                                end
                                wait(.5)
                                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",
                                    Vector3.new(-4607.8227539063, 872.54248046875, -1667.5568847656))
                            elseif (CFrameMon.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude <=
                                150 then
                                if Modstween then
                                    Modstween:Stop()
                                end
                                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrameMon
                            end
                        end
                    end
                end
            end
        end)
    end
end)

fask.spawn(function()
    while wait() do
        pcall(function()
            if Auto_Godhuman and World2 then
                if game.Workspace.Enemies:FindFirstChild("Tide Keeper [Lv. 1475] [Boss]") or
                    game.ReplicatedStorage:FindFirstChild("Tide Keeper [Lv. 1475] [Boss]") then
                    if (KillSharkMan == true and
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuySharkmanKarate", true) ==
                        "I lost my house keys, could you help me find them? Thanks.") then
                        if KillFish then
                            KillFish:Stop()
                        end
                        Com("F_", "SetSpawnPoint")
                        for i, v in pairs(game.Workspace.Enemies:GetChildren()) do
                            if v.Name == "Tide Keeper [Lv. 1475] [Boss]" then
                                repeat
                                    wait()
                                    if game.Workspace.Enemies:FindFirstChild(v.Name) then
                                        if (v.HumanoidRootPart.Position -
                                            game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude >
                                            200 then
                                            Farmtween = toTarget(v.HumanoidRootPart.CFrame)
                                        elseif (v.HumanoidRootPart.Position -
                                            game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude <=
                                            200 then
                                            if Farmtween then
                                                Farmtween:Stop()
                                            end
                                            NeedAttacking = true
                                            if Auto_Haki then
                                                if not game.Players.LocalPlayer.Character:FindFirstChild("HasBuso") then
                                                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(
                                                        "Buso")
                                                end
                                            end
                                            if not game.Players.LocalPlayer.Character:FindFirstChild(Selected_Weapons) then
                                                wait()
                                                EquipWeapon(Selected_Weapons)
                                            end
                                            if not Fast_Attack then
                                                game:GetService 'VirtualUser':CaptureController()
                                                game:GetService 'VirtualUser':Button1Down(Vector2.new(1280, 672))
                                            end
                                            v.HumanoidRootPart.Size = Vector3.new(60, 60, 60)
                                            v.HumanoidRootPart.Transparency = 1
                                            v.Humanoid.JumpPower = 0
                                            v.Humanoid.WalkSpeed = 0
                                            v.HumanoidRootPart.CanCollide = false
                                            v.Humanoid:ChangeState(11)
                                            toTarget(v.HumanoidRootPart.CFrame * CFrame.new(0, Distance_Auto_Farm, 0))
                                            if game.Players.LocalPlayer.Character:FindFirstChild("Black Leg") and
                                                game.Players.LocalPlayer.Character:FindFirstChild("Black Leg").Level
                                                    .Value >= 150 then
                                                game:service('VirtualInputManager'):SendKeyEvent(true, "V", false, game)
                                                game:service('VirtualInputManager')
                                                    :SendKeyEvent(false, "V", false, game)
                                            end
                                        end
                                    end
                                until not v.Parent or not Auto_Godhuman or KillSharkMan == false or v.Humanoid.Health ==
                                    0 or game.Players.LocalPlayer.Character:FindFirstChild("Water Key") or
                                    game.Players.LocalPlayer.Backpack:FindFirstChild("Water Key")
                                NeedAttacking = false
                            end
                        end
                    end
                else
                    if game:GetService("ReplicatedStorage"):FindFirstChild("Tide Keeper [Lv. 1475] [Boss]") then
                        KillFish = toTarget(game:GetService("ReplicatedStorage"):FindFirstChild(
                                                "Tide Keeper [Lv. 1475] [Boss]").HumanoidRootPart.CFrame)
                    else
                        if game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuySharkmanKarate", true) ==
                            "I lost my house keys, could you help me find them? Thanks." then
                            ServerFunc:NormalTeleport()
                        end
                    end
                end
            end
        end)
    end
end)

-- Mas_Set

spawn(function()
    local gg = getrawmetatable(game)
    local old = gg.__namecall
    setreadonly(gg, false)
    gg.__namecall = newcclosure(function(...)
        local method = getnamecallmethod()
        local args = {...}
        if tostring(method) == "FireServer" then
            if tostring(args[1]) == "RemoteEvent" then
                if tostring(args[2]) ~= "true" and tostring(args[2]) ~= "false" then
                    if UseSkillMasteryDevilFruit and Auto_Farm_DF_Mastery then
                        if type(args[2]) == "vector" then
                            args[2] = PositionSkillMasteryDevilFruit
                        else
                            args[2] = CFrame.new(PositionSkillMasteryDevilFruit)
                        end
                        return old(unpack(args))
                    end
                end
            end
        end
        return old(...)
    end)
end)

spawn(function()
    local gt = getrawmetatable(game)
    local old = gt.__namecall
    setreadonly(gt, false)
    gt.__namecall = newcclosure(function(...)
        local args = {...}
        if getnamecallmethod() == "InvokeServer" then
            if SelectWeaponGun then
                if SelectWeaponGun == "Soul Guitar" then
                    if tostring(args[2]) == "TAP" then
                        if Auto_Farm_Gun_Mastery and UseSkillMasteryGun then
                            args[3] = PositionSkillMasteryGun
                        end
                    end
                end
            end
        end
        return old(unpack(args))
    end)
    setreadonly(gt, true)
end)

LPH_NO_VIRTUALIZE(function()
    fask.spawn(function()
        while wait() do
            for i, v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
                if v:IsA("Tool") then
                    if v:FindFirstChild("RemoteFunctionShoot") then
                        SelectWeaponGun = v.Name
                    end
                end
            end
        end
    end)
end)()

function AutoFarmMasteryGun()
    if game:GetService("Workspace").Enemies:FindFirstChild(Name) then
        for i, v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
            if Auto_Farm_Gun_Mastery and v.Name == Name and v:FindFirstChild("HumanoidRootPart") and
                v:FindFirstChild("Humanoid") and v.Humanoid.Health > 0 then
                repeat
                    wait()
                    FarmtoTarget = toTarget(v.HumanoidRootPart.CFrame * CFrame.new(0, 30, 0))
                    if v:FindFirstChild("HumanoidRootPart") and v:FindFirstChild("Humanoid") and
                        (v.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude <=
                        150 then
                        if FarmtoTarget then
                            FarmtoTarget:Stop()
                        end
                        StartMagnet = true
                        PosMon = v.HumanoidRootPart.CFrame
                        if game.Players.LocalPlayer.Character:FindFirstChild("Black Leg") and
                            game.Players.LocalPlayer.Character:FindFirstChild("Black Leg").Level.Value >= 150 then
                            game:service('VirtualInputManager'):SendKeyEvent(true, "V", false, game)
                            game:service('VirtualInputManager'):SendKeyEvent(false, "V", false, game)
                        end
                        HealthMin = v.Humanoid.MaxHealth * Mob_Kill / 100
                        PositionSkillMasteryGun = v.HumanoidRootPart.Position
                        if v.Humanoid.Health <= HealthMin and v:FindFirstChild("HumanoidRootPart") and
                            v:FindFirstChild("Humanoid") and v.Humanoid.Health > 0 then
                            EquipWeapon(SelectWeaponGun)
                            UseSkillMasteryGun = true
                            -- v.HumanoidRootPart.CanCollide = false
                            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.HumanoidRootPart.CFrame *
                                                                                             CFrame.new(0, 30, 0)
                            if game:GetService("Players").LocalPlayer.Character:FindFirstChild(SelectWeaponGun) and
                                game:GetService("Players").LocalPlayer.Character:FindFirstChild(SelectWeaponGun)
                                    :FindFirstChild("RemoteFunctionShoot") then
                                Click()
                                local args = {
                                    [1] = v.HumanoidRootPart.Position,
                                    [2] = v.HumanoidRootPart
                                }
                                game:GetService("Players").LocalPlayer.Character[SelectWeaponGun].RemoteFunctionShoot:InvokeServer(
                                    unpack(args))
                            end
                        else
                            UseSkillMasteryGun = false
                            Click()
                            EquipWeapon(Selected_Weapons)
                            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.HumanoidRootPart.CFrame *
                                                                                             CFrame.new(0, 15, 0)
                        end
                    end
                until not game:GetService("Workspace").Enemies:FindFirstChild(Name) or not Auto_Farm_Gun_Mastery or
                    v.Humanoid.Health <= 0 or not v.Parent
                UseSkillMasteryGun = false
                StartMagnet = false
            end
        end
    else
        StartMagnet = false
        Modstween = toTarget(CFrameMon)
        if World1 and (Name == "Fishman Commando [Lv. 400]" or Name == "Fishman Warrior [Lv. 375]") and
            (CFrameQuest.Position -
                game:GetService("Players").LocalPlayer.Character:WaitForChild("HumanoidRootPart").Position).magnitude >
            50000 then
            if Modstween then
                Modstween:Stop()
            end
            wait(.5)
            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance", Vector3.new(
                61163.8515625, 11.6796875, 1819.7841796875))
        elseif World1 and not (Name == "Fishman Commando [Lv. 400]" or Name == "Fishman Warrior [Lv. 375]") and
            (CFrameQuest.Position -
                game:GetService("Players").LocalPlayer.Character:WaitForChild("HumanoidRootPart").Position).magnitude >
            50000 then
            if Modstween then
                Modstween:Stop()
            end
            wait(.5)
            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance", Vector3.new(
                3864.8515625, 6.6796875, -1926.7841796875))
        elseif World1 and
            (Name == "God's Guard [Lv. 450]" or Name == "Sky Bandit [Lv. 150]" or Name == "Dark Master [Lv. 175]") and
            (CFrameQuest.Position -
                game:GetService("Players").LocalPlayer.Character:WaitForChild("HumanoidRootPart").Position).magnitude >
            3000 then
            if Modstween then
                Modstween:Stop()
            end
            wait(.5)
            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance", Vector3.new(
                -4607.8227539063, 872.54248046875, -1667.5568847656))
        elseif World1 and
            (Name == "Shanda [Lv. 475]" or Name == "Royal Squad [Lv. 525]" or Name == "Royal Soldier [Lv. 550]") and
            (CFrameQuest.Position -
                game:GetService("Players").LocalPlayer.Character:WaitForChild("HumanoidRootPart").Position).magnitude >
            5000 then
            if Modstween then
                Modstween:Stop()
            end
            wait(.5)
            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance", Vector3.new(
                -7894.6176757813, 5547.1416015625, -380.29119873047))
        elseif World2 and string.find(Name, "Ship") and
            (CFrameQuest.Position -
                game:GetService("Players").LocalPlayer.Character:WaitForChild("HumanoidRootPart").Position).magnitude >
            30000 then
            if Modstween then
                Modstween:Stop()
            end
            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance", Vector3.new(
                923.21252441406, 126.9760055542, 32852.83203125))
        elseif World2 and not string.find(Name, "Ship") and
            (CFrameQuest.Position -
                game:GetService("Players").LocalPlayer.Character:WaitForChild("HumanoidRootPart").Position).magnitude >
            30000 then
            if Modstween then
                Modstween:Stop()
            end
            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance", Vector3.new(
                -6508.5581054688, 89.034996032715, -132.83953857422))
        elseif (CFrameQuest.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude <= 150 then
            if Modstween then
                Modstween:Stop()
            end
            wait(.5)
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrameMon
        end
    end
end

function AutoFarmMasteryDevilFruit()
    if game:GetService("Workspace").Enemies:FindFirstChild(Name) then
        for i, v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
            if Auto_Farm_DF_Mastery and v.Name == Name and v:FindFirstChild("HumanoidRootPart") and
                v:FindFirstChild("Humanoid") and v.Humanoid.Health > 0 then
                repeat
                    wait()
                    FarmtoTarget = toTarget(v.HumanoidRootPart.Position,
                        v.HumanoidRootPart.CFrame * CFrame.new(0, 30, 0))
                    if v:FindFirstChild("HumanoidRootPart") and v:FindFirstChild("Humanoid") and
                        (v.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude <=
                        150 then
                        if FarmtoTarget then
                            FarmtoTarget:Stop()
                        end
                        StartMagnet = true
                        NeedAttacking = true
                        PosMon = v.HumanoidRootPart.CFrame
                        HealthMin = v.Humanoid.MaxHealth * Mob_Kill / 100
                        if v.Humanoid.Health <= HealthMin and v:FindFirstChild("HumanoidRootPart") and
                            v:FindFirstChild("Humanoid") and v.Humanoid.Health > 0 then
                            EquipWeapon(game.Players.LocalPlayer.Data.DevilFruit.Value)
                            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.HumanoidRootPart.CFrame *
                                                                                             CFrame.new(0, 40, 10)
                            if game.Players.LocalPlayer.Character:FindFirstChildOfClass("Tool") then
                                PositionSkillMasteryDevilFruit = v.HumanoidRootPart.Position
                                UseSkillMasteryDevilFruit = true
                                if game:GetService("Players").LocalPlayer.Character:FindFirstChild(game.Players
                                                                                                       .LocalPlayer.Data
                                                                                                       .DevilFruit.Value) then
                                    MasteryDevilFruit = require(
                                        game:GetService("Players").LocalPlayer.Character[game.Players.LocalPlayer.Data
                                            .DevilFruit.Value].Data)
                                    DevilFruitMastery = game:GetService("Players").LocalPlayer.Character[game.Players
                                                            .LocalPlayer.Data.DevilFruit.Value].Level.Value
                                elseif game:GetService("Players").LocalPlayer.Backpack:FindFirstChild(game.Players
                                                                                                          .LocalPlayer
                                                                                                          .Data
                                                                                                          .DevilFruit
                                                                                                          .Value) then
                                    MasteryDevilFruit = require(
                                        game:GetService("Players").LocalPlayer.Backpack[game.Players.LocalPlayer.Data
                                            .DevilFruit.Value].Data)
                                    DevilFruitMastery = game:GetService("Players").LocalPlayer.Backpack[game.Players
                                                            .LocalPlayer.Data.DevilFruit.Value].Level.Value
                                end
                                if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Dragon-Dragon") then
                                    if Skill_Z and v:FindFirstChild("HumanoidRootPart") and v:FindFirstChild("Humanoid") and
                                        v.Humanoid.Health > 0 and DevilFruitMastery >= MasteryDevilFruit.Lvl.Z then
                                        game:service('VirtualInputManager'):SendKeyEvent(true, "Z", false, game)
                                        wait(.1)
                                        game:service('VirtualInputManager'):SendKeyEvent(false, "Z", false, game)
                                    end
                                    if Skill_X and v:FindFirstChild("HumanoidRootPart") and v:FindFirstChild("Humanoid") and
                                        v.Humanoid.Health > 0 and DevilFruitMastery >= MasteryDevilFruit.Lvl.X then
                                        game:service('VirtualInputManager'):SendKeyEvent(true, "X", false, game)
                                        wait(.1)
                                        game:service('VirtualInputManager'):SendKeyEvent(false, "X", false, game)
                                    end
                                elseif game:GetService("Players").LocalPlayer.Character:FindFirstChild(
                                    "Human-Human: Buddha") then
                                    if Skill_Z and v:FindFirstChild("HumanoidRootPart") and v:FindFirstChild("Humanoid") and
                                        v.Humanoid.Health > 0 and
                                        game.Players.LocalPlayer.Character.HumanoidRootPart.Size ==
                                        Vector3.new(7.6, 7.676, 3.686) and DevilFruitMastery >= MasteryDevilFruit.Lvl.Z then
                                    else
                                        game:service('VirtualInputManager'):SendKeyEvent(true, "Z", false, game)
                                        wait(.1)
                                        game:service('VirtualInputManager'):SendKeyEvent(false, "Z", false, game)
                                    end
                                    if Skill_X and v:FindFirstChild("HumanoidRootPart") and v:FindFirstChild("Humanoid") and
                                        v.Humanoid.Health > 0 and DevilFruitMastery >= MasteryDevilFruit.Lvl.X then
                                        game:service('VirtualInputManager'):SendKeyEvent(true, "X", false, game)
                                        wait(.1)
                                        game:service('VirtualInputManager'):SendKeyEvent(false, "X", false, game)
                                    end
                                    if Skill_C and v:FindFirstChild("HumanoidRootPart") and v:FindFirstChild("Humanoid") and
                                        v.Humanoid.Health > 0 and DevilFruitMastery >= MasteryDevilFruit.Lvl.C then
                                        game:service('VirtualInputManager'):SendKeyEvent(true, "C", false, game)
                                        wait(.1)
                                        game:service('VirtualInputManager'):SendKeyEvent(false, "C", false, game)
                                    end
                                elseif game:GetService("Players").LocalPlayer.Character:FindFirstChild("Venom-Venom") then
                                    if Skill_Z and v:FindFirstChild("HumanoidRootPart") and v:FindFirstChild("Humanoid") and
                                        v.Humanoid.Health > 0 and DevilFruitMastery >= MasteryDevilFruit.Lvl.Z then
                                        game:service('VirtualInputManager'):SendKeyEvent(true, "Z", false, game)
                                        wait(4)
                                        game:service('VirtualInputManager'):SendKeyEvent(false, "Z", false, game)
                                    end
                                    if Skill_X and v:FindFirstChild("HumanoidRootPart") and v:FindFirstChild("Humanoid") and
                                        v.Humanoid.Health > 0 and DevilFruitMastery >= MasteryDevilFruit.Lvl.X then
                                        game:service('VirtualInputManager'):SendKeyEvent(true, "X", false, game)
                                        wait(.1)
                                        game:service('VirtualInputManager'):SendKeyEvent(false, "X", false, game)
                                    end
                                    if Skill_C and v:FindFirstChild("HumanoidRootPart") and v:FindFirstChild("Humanoid") and
                                        v.Humanoid.Health > 0 and DevilFruitMastery >= MasteryDevilFruit.Lvl.C then
                                        game:service('VirtualInputManager'):SendKeyEvent(true, "C", false, game)
                                        wait(.1)
                                        game:service('VirtualInputManager'):SendKeyEvent(false, "C", false, game)
                                    end
                                elseif game:GetService("Players").LocalPlayer.Character:FindFirstChild(game.Players
                                                                                                           .LocalPlayer
                                                                                                           .Data
                                                                                                           .DevilFruit
                                                                                                           .Value) then
                                    game:GetService("Players").LocalPlayer.Character:FindFirstChild(game.Players
                                                                                                        .LocalPlayer
                                                                                                        .Data.DevilFruit
                                                                                                        .Value).MousePos
                                        .Value = v.HumanoidRootPart.Position
                                    if Skill_Z and v:FindFirstChild("HumanoidRootPart") and v:FindFirstChild("Humanoid") and
                                        v.Humanoid.Health > 0 and DevilFruitMastery >= MasteryDevilFruit.Lvl.Z then
                                        game:service('VirtualInputManager'):SendKeyEvent(true, "Z", false, game)
                                        wait(.1)
                                        game:service('VirtualInputManager'):SendKeyEvent(false, "Z", false, game)
                                    end
                                    if Skill_X and v:FindFirstChild("HumanoidRootPart") and v:FindFirstChild("Humanoid") and
                                        v.Humanoid.Health > 0 and DevilFruitMastery >= MasteryDevilFruit.Lvl.X then
                                        game:service('VirtualInputManager'):SendKeyEvent(true, "X", false, game)
                                        wait(.1)
                                        game:service('VirtualInputManager'):SendKeyEvent(false, "X", false, game)
                                    end
                                    if Skill_C and v:FindFirstChild("HumanoidRootPart") and v:FindFirstChild("Humanoid") and
                                        v.Humanoid.Health > 0 and DevilFruitMastery >= MasteryDevilFruit.Lvl.C then
                                        game:service('VirtualInputManager'):SendKeyEvent(true, "C", false, game)
                                        wait(.1)
                                        game:service('VirtualInputManager'):SendKeyEvent(false, "C", false, game)
                                    end
                                    if Skill_V and v:FindFirstChild("HumanoidRootPart") and v:FindFirstChild("Humanoid") and
                                        v.Humanoid.Health > 0 and DevilFruitMastery >= MasteryDevilFruit.Lvl.V then
                                        game:service('VirtualInputManager'):SendKeyEvent(true, "V", false, game)
                                        wait(.1)
                                        game:service('VirtualInputManager'):SendKeyEvent(false, "V", false, game)
                                    end
                                    if Skill_F and v:FindFirstChild("HumanoidRootPart") and v:FindFirstChild("Humanoid") and
                                        v.Humanoid.Health > 0 and DevilFruitMastery >= MasteryDevilFruit.Lvl.V then
                                        game:service('VirtualInputManager'):SendKeyEvent(true, "F", false, game)
                                        wait(.1)
                                        game:service('VirtualInputManager'):SendKeyEvent(false, "F", false, game)
                                    end
                                end
                            end
                        else
                            game:GetService('VirtualUser'):CaptureController()
                            game:GetService('VirtualUser'):ClickButton1(Vector2.new(851, 158),
                                game:GetService("Workspace").Camera.CFrame)
                            UseSkillMasteryDevilFruit = false
                            EquipWeapon(Selected_Weapons)
                            v.HumanoidRootPart.Size = Vector3.new(60, 60, 60)
                            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.HumanoidRootPart.CFrame *
                                                                                             CFrame.new(0, 30, 0)
                        end
                    end
                until not game:GetService("Workspace").Enemies:FindFirstChild(Name) or not Auto_Farm_DF_Mastery or
                    v.Humanoid.Health <= 0 or not v.Parent
                StartMagnet = false
                NeedAttacking = false
            end
        end
    else
        StartMagnet = false
        NeedAttacking = false
        Modstween = toTarget(CFrameMon.Position, CFrameMon)
        if World1 and (Name == "Fishman Commando [Lv. 400]" or Name == "Fishman Warrior [Lv. 375]") and
            (CFrameQuest.Position -
                game:GetService("Players").LocalPlayer.Character:WaitForChild("HumanoidRootPart").Position).magnitude >
            50000 then
            if Modstween then
                Modstween:Stop()
            end
            wait(.5)
            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance", Vector3.new(
                61163.8515625, 11.6796875, 1819.7841796875))
        elseif World1 and not (Name == "Fishman Commando [Lv. 400]" or Name == "Fishman Warrior [Lv. 375]") and
            (CFrameQuest.Position -
                game:GetService("Players").LocalPlayer.Character:WaitForChild("HumanoidRootPart").Position).magnitude >
            50000 then
            if Modstween then
                Modstween:Stop()
            end
            wait(.5)
            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance", Vector3.new(
                3864.8515625, 6.6796875, -1926.7841796875))
        elseif World1 and
            (Name == "God's Guard [Lv. 450]" or Name == "Sky Bandit [Lv. 150]" or Name == "Dark Master [Lv. 175]") and
            (CFrameQuest.Position -
                game:GetService("Players").LocalPlayer.Character:WaitForChild("HumanoidRootPart").Position).magnitude >
            3000 then
            if Modstween then
                Modstween:Stop()
            end
            wait(.5)
            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance", Vector3.new(
                -4607.8227539063, 872.54248046875, -1667.5568847656))
        elseif World1 and
            (Name == "Shanda [Lv. 475]" or Name == "Royal Squad [Lv. 525]" or Name == "Royal Soldier [Lv. 550]") and
            (CFrameQuest.Position -
                game:GetService("Players").LocalPlayer.Character:WaitForChild("HumanoidRootPart").Position).magnitude >
            5000 then
            if Modstween then
                Modstween:Stop()
            end
            wait(.5)
            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance", Vector3.new(
                -7894.6176757813, 5547.1416015625, -380.29119873047))
        elseif World2 and string.find(Name, "Ship") and
            (CFrameQuest.Position -
                game:GetService("Players").LocalPlayer.Character:WaitForChild("HumanoidRootPart").Position).magnitude >
            30000 then
            if Modstween then
                Modstween:Stop()
            end
            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance", Vector3.new(
                923.21252441406, 126.9760055542, 32852.83203125))
        elseif World2 and not string.find(Name, "Ship") and
            (CFrameQuest.Position -
                game:GetService("Players").LocalPlayer.Character:WaitForChild("HumanoidRootPart").Position).magnitude >
            30000 then
            if Modstween then
                Modstween:Stop()
            end
            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance", Vector3.new(
                -6508.5581054688, 89.034996032715, -132.83953857422))
        elseif (CFrameQuest.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude <= 150 then
            if Modstween then
                Modstween:Stop()
            end
            wait(.5)
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrameMon
        end
    end
end

function CheckMasteryWeapon(NameWe, MasNum)
    if game.Players.LocalPlayer.Backpack:FindFirstChild(NameWe) then
        if tonumber(game.Players.LocalPlayer.Backpack:FindFirstChild(NameWe).Level.Value) < tonumber(MasNum) then
            return "true DownTo"
        elseif tonumber(game.Players.LocalPlayer.Backpack:FindFirstChild(NameWe).Level.Value) >= tonumber(MasNum) then
            return "true UpTo"
        end
    end
    if game.Players.LocalPlayer.Character:FindFirstChild(NameWe) then
        if tonumber(game.Players.LocalPlayer.Character:FindFirstChild(NameWe).Level.Value) < tonumber(MasNum) then
            return "true DownTo"
        elseif tonumber(game.Players.LocalPlayer.Character:FindFirstChild(NameWe).Level.Value) >= tonumber(MasNum) then
            return "true UpTo"
        end
    end
    return "else"
end

local AllSwordInInventroy = {};
pcall(function()
    for i, v in pairs(game:GetService("ReplicatedStorage").Remotes['CommF_']:InvokeServer("getInventoryWeapons")) do
        if (type(v) ~= "table") then
        elseif (v.Type == "Sword") then
            table.insert(AllSwordInInventroy, v.Name);
        end
    end
end)
table.insert(AllSwordInInventroy, GetFightingStyle("Sword"));

local function CheckQuestMasteryFarm()
    if World1 then
        Name = "Galley Captain [Lv. 650]";
        CFrameMon = CFrame.new(5649, 39, 4936);
    end
    if World2 then
        Name = "Water Fighter [Lv. 1450]";
        CFrameMon = CFrame.new(-3385, 239, -10542);
    end
    if World3 then
        Name = "Reborn Skeleton [Lv. 1975]";
        CFrameMon = CFrame.new(-9506.14648, 172.130661, 6101.79053);
    end
end

local function inmyself(name)
    return game:GetService("Players").LocalPlayer.Backpack:FindFirstChild(name) or
               game:GetService("Players").LocalPlayer.Character:FindFirstChild(name);
end

-- check can't 2

-- wait(5)

Tabs.Main:AddParagraph({
    Title = "Auto Farm Mastery",
    Content = "Auto Farm Mastery Devil Fruits and Gun"
})

local Sword_Mastery = Tabs.Main:AddToggle("Auto_All_Sword_Mastery", {
    Title = "Auto Farm All Sword Mastery",
    Default = Auto_All_Sword_Mastery
})

Sword_Mastery:OnChanged(function(value)
    Auto_All_Sword_Mastery = value
    if value == false then
        toTarget(game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame)
    end
    Save()
end)

fask.spawn(function()
    while wait() do
        if Auto_All_Sword_Mastery then
            pcall(function()
                CheckQuestMasteryFarm()
                if (CFrameMon.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 2000 then
                    for i, v in pairs(game.Workspace.Enemies:GetChildren()) do
                        if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health >
                            0 then
                            if (v.HumanoidRootPart.Position -
                                game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 2000 then
                                repeat
                                    wait()
                                    StartMagnet = true
                                    NeedAttacking = true
                                    if Auto_Haki then
                                        if not game.Players.LocalPlayer.Character:FindFirstChild("HasBuso") then
                                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Buso")
                                        end
                                    end
                                    if not game.Players.LocalPlayer.Character:FindFirstChild(_G.Sword_Weapon) then
                                        wait()
                                        EquipWeapon(_G.Sword_Weapon)
                                    end
                                    PosMon = v.HumanoidRootPart.CFrame
                                    if not Fast_Attack then
                                        game:GetService 'VirtualUser':CaptureController()
                                        game:GetService 'VirtualUser':Button1Down(Vector2.new(1280, 672))
                                    end
                                    v.HumanoidRootPart.Size = Vector3.new(60, 60, 60)
                                    v.HumanoidRootPart.Transparency = 1
                                    v.Humanoid.JumpPower = 0
                                    v.Humanoid.WalkSpeed = 0
                                    v.HumanoidRootPart.CanCollide = false
                                    v.Humanoid:ChangeState(11)
                                    toTarget(v.HumanoidRootPart.CFrame * CFrame.new(0, Distance_Auto_Farm, 0))
                                until Auto_All_Sword_Mastery == false or not v.Parent or v.Humanoid.Health <= 0
                                StartMagnet = false
                                NeedAttacking = false
                            end
                        end
                    end
                else
                    StartMagnet = false
                    NeedAttacking = false
                    toTarget(CFrameMon)
                end
            end)
        end
    end
end)

fask.spawn(function()
    while fask.wait() do
        if Auto_All_Sword_Mastery then
            pcall(function()
                for i, v in pairs(game.Players.LocalPlayer.Character:GetChildren()) do
                    if v:IsA("Tool") then
                        if v.ToolTip == "Sword" then
                            _G.Sword_Weapon = v.Name
                        end
                    end
                end
                for i, v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
                    if v:IsA("Tool") then
                        if v.ToolTip == "Sword" then
                            _G.Sword_Weapon = v.Name
                        end
                    end
                end
                for i, v in pairs(game.Players.LocalPlayer.Character:GetChildren()) do
                    if v:IsA("Tool") then
                        if v.ToolTip == "Sword" then
                            if game.Players.LocalPlayer.Character:FindFirstChild(_G.Sword_Weapon) then
                                if game.Players.LocalPlayer.Character:FindFirstChild(_G.Sword_Weapon).Level.Value == 600 then
                                    local TotalSword = {}
                                    for i, v in pairs(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(
                                        "getInventory")) do
                                        if v['Type'] == "Sword" and v['Mastery'] < 600 then
                                            table.insert(TotalSword, v.Name)
                                        end
                                    end
                                    local RandomSword = TotalSword[math.random(1, #TotalSword)]
                                    wait(.1)
                                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("LoadItem",
                                        RandomSword)
                                end
                            end
                        end
                    end
                end
                for i, v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
                    if v:IsA("Tool") then
                        if v.ToolTip == "Sword" then
                            if game.Players.LocalPlayer.Backpack:FindFirstChild(_G.Sword_Weapon) then
                                if game.Players.LocalPlayer.Backpack:FindFirstChild(_G.Sword_Weapon).Level.Value == 600 then
                                    local TotalSword = {}
                                    for i, v in pairs(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(
                                        "getInventory")) do
                                        if v['Type'] == "Sword" and v['Mastery'] < 600 then
                                            table.insert(TotalSword, v.Name)
                                        end
                                    end
                                    local RandomSword = TotalSword[math.random(1, #TotalSword)]
                                    wait(.1)
                                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("LoadItem",
                                        RandomSword)
                                end
                            end
                        end
                    end
                end
            end)
        end
    end
end)

local DF_Farm = Tabs.Main:AddToggle("Auto_Farm_DF_Mastery", {
    Title = "Auto Farm Devil Fruits Mastery",
    Default = Auto_Farm_DF_Mastery
})
local Gun_Farm = Tabs.Main:AddToggle("Auto_Farm_Gun_Mastery", {
    Title = "Auto Farm Gun Mastery",
    Default = Auto_Farm_Gun_Mastery
})

local SliderKillAt = Tabs.Main:AddSlider("Mob_Kill", {
    Title = "Kill At",
    Description = "Kill Monster Heath %",
    Default = 25,
    Min = 0,
    Max = 100,
    Rounding = 1,
    Callback = function(Value)
        Mob_Kill = Value
        Save()
    end
})

SliderKillAt:OnChanged(function(Value)
    Mob_Kill = Value
    Save()
end)

DF_Farm:OnChanged(function(value)
    Auto_Farm_DF_Mastery = value
    if value == false then
        toTarget(game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame)
    end
    Save()
end)
DF_Farm:OnChanged(function(value)
    Auto_Farm_Gun_Mastery = value
    if value == false then
        toTarget(game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame)
    end
    Save()
end)

Tabs.Main:AddParagraph({
    Title = "Settings Auto Farm Mastery",
    Content = "You can settings Skill For Auto Farm Mastery!"
})

local SkillZ = Tabs.Main:AddToggle("Skill_Z", {
    Title = "Use Skill Z",
    Default = true
})
local SkillX = Tabs.Main:AddToggle("Skill_X", {
    Title = "Use Skill X",
    Default = true
})
local SkillC = Tabs.Main:AddToggle("Skill_C", {
    Title = "Use Skill C",
    Default = true
})
local SkillV = Tabs.Main:AddToggle("Skill_V", {
    Title = "Use Skill V",
    Default = true
})
local SkillF = Tabs.Main:AddToggle("Skill_F", {
    Title = "Use Skill F",
    Default = true
})

SkillZ:OnChanged(function(value)
    Skill_Z = value
    Save()
end)
SkillX:OnChanged(function(value)
    Skill_X = value
    Save()
end)
SkillC:OnChanged(function(value)
    Skill_C = value
    Save()
end)
SkillV:OnChanged(function(value)
    Skill_V = value
    Save()
end)
SkillF:OnChanged(function(value)
    SkillF = value
    Save()
end)

spawn(function()
    while wait() do
        if Auto_Farm_DF_Mastery then
            CheckQuest()
            AutoFarmMasteryDevilFruit()
        end
    end
end)

spawn(function()
    while wait() do
        if Auto_Farm_Gun_Mastery then
            CheckQuest()
            AutoFarmMasteryGun()
        end
    end
end)

Tabs.Main:AddParagraph({
    Title = "Chest & Aura Mob"
})

local GetChest = Tabs.Main:AddToggle("AutoFarmChest", {
    Title = "Auto Farm Chest",
    Default = AutoFarmChest
})
local AuraFarm = Tabs.Main:AddToggle("Mob_Aura", {
    Title = "Auto Farm Mob Aura",
    Default = Mob_Aura
})

GetChest:OnChanged(function(value)
    AutoFarmChest = value
    if value == false then
        toTarget(game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame)
    end
end)
AuraFarm:OnChanged(function(value)
    Mob_Aura = value
    if value == false then
        toTarget(game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame)
    end
end)

MagnitudeAdd = 0
fask.spawn(function()
    while wait() do
        if AutoFarmChest then
            for i, v in pairs(game:GetService("Workspace"):GetChildren()) do
                if v.Name:find("Chest") then
                    if game:GetService("Workspace"):FindFirstChild(v.Name) then
                        if (v.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 5000 +
                            _G.MagnitudeAdd then
                            repeat
                                wait()
                                if game:GetService("Workspace"):FindFirstChild(v.Name) then
                                    toTargetP(v.CFrame)
                                end
                            until AutoFarmChest == false or not v.Parent
                            toTarget(game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame)
                            MagnitudeAdd = MagnitudeAdd + 1500
                            break
                        end
                    end
                end
            end
        end
    end
end)

fask.spawn(function()
    while wait() do
        pcall(function()
            if Mob_Aura then
                for i, v in pairs(game.Workspace.Enemies:GetChildren()) do
                    if Mob_Aura and v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and
                        v.Humanoid.Health > 0 and
                        (v.HumanoidRootPart.Position -
                            game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).magnitude <=
                        1500 then
                        repeat
                            wait()
                            StartMagnet = true
                            NeedAttacking = true
                            if Auto_Haki then
                                if not game.Players.LocalPlayer.Character:FindFirstChild("HasBuso") then
                                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Buso")
                                end
                            end
                            if not game.Players.LocalPlayer.Character:FindFirstChild(Selected_Weapons) then
                                wait()
                                EquipWeapon(Selected_Weapons)
                            end
                            PosMon = v.HumanoidRootPart.CFrame
                            if not Fast_Attack then
                                game:GetService 'VirtualUser':CaptureController()
                                game:GetService 'VirtualUser':Button1Down(Vector2.new(1280, 672))
                            end
                            v.HumanoidRootPart.Size = Vector3.new(60, 60, 60)
                            v.HumanoidRootPart.Transparency = 1
                            v.Humanoid.JumpPower = 0
                            v.Humanoid.WalkSpeed = 0
                            v.HumanoidRootPart.CanCollide = false
                            v.Humanoid:ChangeState(11)
                            toTarget(v.HumanoidRootPart.CFrame * CFrame.new(0, Distance_Auto_Farm, 0))
                            MagnetMobAura = true
                            if delay then
                                delay(1, function()
                                    MagnetMobAura = true
                                end)
                            end
                        until not Mob_Aura or not v.Parent or v.Humanoid.Health <= 0
                        MagnetMobAura = false
                        NeedAttacking = false
                        StartMagnet = false
                    end
                end
            end
        end)
    end
end)

Tabs.Main:AddParagraph({
    Title = "Observation Farm"
})

local AutoObserv = Tabs.Main:AddToggle("AutoObservation", {
    Title = "Auto Farm Observation",
    Default = AutoObservation
})
local AutoObservHOP = Tabs.Main:AddToggle("AutoFarmChest", {
    Title = "Auto Farm Chest",
    Default = AutoFarmChest
})

-- local ObservationRange = Page3:Label("Observation Range : 0")

-- spawn(function()
--     while wait() do
--         pcall(function()
--             ObservationRange:Set("Observation Range : "..math.floor(game:GetService("Players").LocalPlayer.VisionRadius.Value))
--         end)
--     end
-- end)

AutoObserv:OnChanged(function(value)
    AutoObservation = value
    if value == false then
        toTarget(game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame)
    end
    Save()
end)

AutoObservHOP:OnChanged(function(value)
    AutoObservation_Hop = value
    Save()
end)

spawn(function()
    while wait() do
        pcall(function()
            if AutoObservation then
                repeat
                    fask.wait()
                    if not game:GetService("Players").LocalPlayer.PlayerGui.ScreenGui:FindFirstChild("ImageLabel") then
                        game:GetService('VirtualUser'):CaptureController()
                        game:GetService('VirtualUser'):SetKeyDown('0x65')
                        wait(2)
                        game:GetService('VirtualUser'):SetKeyUp('0x65')
                    end
                until game:GetService("Players").LocalPlayer.PlayerGui.ScreenGui:FindFirstChild("ImageLabel") or
                    not AutoObservation
            end
        end)
    end
end)

spawn(function()
    pcall(function()
        while wait() do
            if AutoObservation then
                if game:GetService("Players").LocalPlayer.VisionRadius.Value >= 3000 then
                    local ahasd = Notification.new("success", "Luxury Hub", "Observation Range : Max")
                    ahasd:deleteTimeout(5)
                    wait(2)
                else
                    if World2 then
                        if game:GetService("Workspace").Enemies:FindFirstChild("Lava Pirate [Lv. 1200]") then
                            if game:GetService("Players").LocalPlayer.PlayerGui.ScreenGui:FindFirstChild("ImageLabel") then
                                repeat
                                    fask.wait()
                                    game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame =
                                        game:GetService("Workspace").Enemies:FindFirstChild("Lava Pirate [Lv. 1200]")
                                            .HumanoidRootPart.CFrame * CFrame.new(3, 0, 0)
                                until AutoObservation == false or
                                    not game:GetService("Players").LocalPlayer.PlayerGui.ScreenGui:FindFirstChild(
                                        "ImageLabel")
                            else
                                repeat
                                    fask.wait()
                                    game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame =
                                        game:GetService("Workspace").Enemies:FindFirstChild("Lava Pirate [Lv. 1200]")
                                            .HumanoidRootPart.CFrame * CFrame.new(0, 50, 0) + wait(1)
                                    if not game:GetService("Players").LocalPlayer.PlayerGui.ScreenGui:FindFirstChild(
                                        "ImageLabel") and AutoObservation_Hop == true then
                                        game:GetService("TeleportService"):Teleport(game.PlaceId, game:GetService(
                                            "Players").LocalPlayer)
                                    end
                                until AutoObservation == false or
                                    game:GetService("Players").LocalPlayer.PlayerGui.ScreenGui:FindFirstChild(
                                        "ImageLabel")
                            end
                        else
                            toTarget(CFrame.new(-5478.39209, 15.9775667, -5246.9126))
                        end
                    elseif World1 then
                        if game:GetService("Workspace").Enemies:FindFirstChild("Galley Captain [Lv. 650]") then
                            if game:GetService("Players").LocalPlayer.PlayerGui.ScreenGui:FindFirstChild("ImageLabel") then
                                repeat
                                    fask.wait()
                                    game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame =
                                        game:GetService("Workspace").Enemies:FindFirstChild("Galley Captain [Lv. 650]")
                                            .HumanoidRootPart.CFrame * CFrame.new(3, 0, 0)
                                until AutoObservation == false or
                                    not game:GetService("Players").LocalPlayer.PlayerGui.ScreenGui:FindFirstChild(
                                        "ImageLabel")
                            else
                                repeat
                                    fask.wait()
                                    game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame =
                                        game:GetService("Workspace").Enemies:FindFirstChild("Galley Captain [Lv. 650]")
                                            .HumanoidRootPart.CFrame * CFrame.new(0, 50, 0)
                                    wait(1)
                                    if not game:GetService("Players").LocalPlayer.PlayerGui.ScreenGui:FindFirstChild(
                                        "ImageLabel") and AutoObservation_Hop == true then
                                        game:GetService("TeleportService"):Teleport(game.PlaceId, game:GetService(
                                            "Players").LocalPlayer)
                                    end
                                until AutoObservation == false or
                                    game:GetService("Players").LocalPlayer.PlayerGui.ScreenGui:FindFirstChild(
                                        "ImageLabel")
                            end
                        else
                            toTarget(CFrame.new(5533.29785, 88.1079102, 4852.3916))
                        end
                    elseif World3 then
                        if game:GetService("Workspace").Enemies:FindFirstChild("Giant Islander [Lv. 1650]") then
                            if game:GetService("Players").LocalPlayer.PlayerGui.ScreenGui:FindFirstChild("ImageLabel") then
                                repeat
                                    fask.wait()
                                    game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame =
                                        game:GetService("Workspace").Enemies:FindFirstChild("Giant Islander [Lv. 1650]")
                                            .HumanoidRootPart.CFrame * CFrame.new(3, 0, 0)
                                until AutoObservation == false or
                                    not game:GetService("Players").LocalPlayer.PlayerGui.ScreenGui:FindFirstChild(
                                        "ImageLabel")
                            else
                                repeat
                                    fask.wait()
                                    game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame =
                                        game:GetService("Workspace").Enemies:FindFirstChild("Giant Islander [Lv. 1650]")
                                            .HumanoidRootPart.CFrame * CFrame.new(0, 50, 0)
                                    wait(1)
                                    if not game:GetService("Players").LocalPlayer.PlayerGui.ScreenGui:FindFirstChild(
                                        "ImageLabel") and AutoObservation_Hop == true then
                                        game:GetService("TeleportService"):Teleport(game.PlaceId, game:GetService(
                                            "Players").LocalPlayer)
                                    end
                                until AutoObservation == false or
                                    game:GetService("Players").LocalPlayer.PlayerGui.ScreenGui:FindFirstChild(
                                        "ImageLabel")
                            end
                        else
                            toTarget(CFrame.new(4530.3540039063, 656.75695800781, -131.60952758789))
                        end
                    end
                end
            end
        end
    end)
end)

Tabs.Main:AddParagraph({
    Title = "Materials Farm"
})

local SelectMater = Tabs.Main:AddDropdown("SelectModeMaterial", {
    Title = "Select Materials",
    Values = All_Materials,
    Multi = false,
    Default = 1
})

local MaterFarm = Tabs.Main:AddToggle("AutoFarmMaterial", {
    Title = "Auto Farm Materials",
    Default = AutoFarmMaterial
})

SelectMater:OnChanged(function(value)
    SelectModeMaterial = value
end)

MaterFarm:OnChanged(function(x)
    AutoFarmMaterial = x
    if x == false then
        toTarget(game.Players.LocalPlayer.Character.HumanoidRootPart.Position,
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame)
    end
    spawn(function()
        while wait() do
            if AutoFarmMaterial then
                xpcall(function()
                    if (SelectModeMaterial ~= "") then
                        CheckMaterial(SelectModeMaterial);
                        if CustomFindFirstChild(MaterialMob) then
                            for v0, v1 in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                                if (AutoFarmMaterial and table.find(MaterialMob, v1.Name) and
                                    v1:FindFirstChild("HumanoidRootPart") and v1:FindFirstChild("Humanoid") and
                                    (v1.Humanoid.Health > 0)) then
                                    repeat
                                        wait();
                                        FarmtoTarget = toTarget(v1.HumanoidRootPart.CFrame * CFrame.new(0, 30, 1));
                                        if (v1:FindFirstChild("HumanoidRootPart") and v1:FindFirstChild("Humanoid") and
                                            ((v1.HumanoidRootPart.Position -
                                                game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude <=
                                                150)) then
                                            if FarmtoTarget then
                                                FarmtoTarget:Stop();
                                            end
                                            NeedAttacking = true;
                                            EquipWeapon(Selected_Weapons);
                                            spawn(function()
                                                for v4, v5 in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                                                    if (v5.Name == v1.Name) then
                                                        spawn(function()
                                                            if InMyNetWork(v5.HumanoidRootPart) then
                                                                v5.HumanoidRootPart.CFrame = v1.HumanoidRootPart.CFrame;
                                                                v5.Humanoid.JumpPower = 0;
                                                                v5.Humanoid.WalkSpeed = 0;
                                                                v5.HumanoidRootPart.CanCollide = false;
                                                                v5.Humanoid:ChangeState(14);
                                                                v5.Humanoid:ChangeState(11);
                                                                v5.HumanoidRootPart.Size = Vector3.new(55, 55, 55);
                                                            end
                                                        end);
                                                    end
                                                end
                                            end);
                                            if (game.Players.LocalPlayer.Character:FindFirstChild("Black Leg") and
                                                (game.Players.LocalPlayer.Character:FindFirstChild("Black Leg").Level
                                                    .Value >= 150)) then
                                                game:service("VirtualInputManager"):SendKeyEvent(true, "V", false, game);
                                                game:service("VirtualInputManager")
                                                    :SendKeyEvent(false, "V", false, game);
                                            end
                                            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame =
                                                v1.HumanoidRootPart.CFrame * CFrame.new(0, 30, 1);
                                        end
                                    until not CustomFindFirstChild(MaterialMob) or not AutoFarmMaterial or
                                        (v1.Humanoid.Health <= 0) or not v1.Parent
                                    NeedAttacking = false;
                                end
                            end
                        else
                            NeedAttacking = false;
                            Modstween = toTarget(CFrameMon);
                            if (World1 and (table.find(MaterialMob, "Fishman Commando [Lv. 400]")) and
                                ((CFrameMon.Position -
                                    game:GetService("Players").LocalPlayer.Character:WaitForChild("HumanoidRootPart")
                                        .Position).magnitude > 50000)) then
                                if Modstween then
                                    Modstween:Stop();
                                end
                                wait(0.5);
                                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",
                                    Vector3.new(61163.8515625, 11.6796875, 1819.7841796875));
                            elseif (World1 and not (table.find(MaterialMob, "Fishman Commando [Lv. 400]")) and
                                ((CFrameMon.Position -
                                    game:GetService("Players").LocalPlayer.Character:WaitForChild("HumanoidRootPart")
                                        .Position).magnitude > 50000)) then
                                if Modstween then
                                    Modstween:Stop();
                                end
                                wait(0.5);
                                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",
                                    Vector3.new(3864.8515625, 6.6796875, -1926.7841796875));
                            elseif (World1 and (table.find(MaterialMob, "God's Guard [Lv. 450]")) and
                                ((CFrameMon.Position -
                                    game:GetService("Players").LocalPlayer.Character:WaitForChild("HumanoidRootPart")
                                        .Position).magnitude > 3000)) then
                                if Modstween then
                                    Modstween:Stop();
                                end
                                wait(0.5);
                                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",
                                    Vector3.new(-4607.8227539063, 872.54248046875, -1667.5568847656));
                            elseif ((CFrameMon.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude <=
                                150) then
                                if Modstween then
                                    Modstween:Stop();
                                end
                                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrameMon;
                            end
                        end
                    end
                end, function(x)
                    print("I can't Fix this error : " .. x)
                end)
            else
                break
            end
        end
    end)
end)

Tabs.FindFirst:AddParagraph({
    Title = "First Sea",
    Content = "Finding Items In First Sea"
})

local Get_Saber = Tabs.FindFirst:AddToggle("Auto_Saber", {
    Title = "Auto Saber",
    Default = Auto_Saber
})
local Get_Pole = Tabs.FindFirst:AddToggle("Auto_Pole", {
    Title = "Auto Pole v1",
    Default = Auto_Pole
})
local Get_PoleHOP = Tabs.FindFirst:AddToggle("Auto_Pole_Hop", {
    Title = "Auto Pole v1 [HOP]",
    Default = Auto_Pole_Hop
})
local Get_Frank = Tabs.FindFirst:AddToggle("Auto_Franky", {
    Title = "Auto Cool Shades",
    Default = Auto_Franky
})
local Get_FrankHOP = Tabs.FindFirst:AddToggle("Auto_Franky_Hop", {
    Title = "Auto Cool Shades [HOP]",
    Default = Auto_Franky_Hop
})

Get_Saber:OnChanged(function(value)
    Auto_Saber = value
    if value == false then
        toTarget(game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame)
    end
    Save()
end)
Get_Pole:OnChanged(function(value)
    Auto_Pole = value
    if value == false then
        toTarget(game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame)
    end
    Save()
end)
Get_PoleHOP:OnChanged(function(value)
    Auto_Pole_Hop = value
    Save()
end)
Get_Frank:OnChanged(function(value)
    Auto_Franky = value
    if value == false then
        toTarget(game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame)
    end
    Save()
end)
Get_FrankHOP:OnChanged(function(value)
    Auto_Franky_Hop = value
    Save()
end)

fask.spawn(function()
    while wait() do
        pcall(function()
            if Auto_Saber and game.Players.LocalPlayer.Data.Level.Value >= 200 and
                not game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Saber") and
                not game.Players.LocalPlayer.Character:FindFirstChild("Saber") then
                if Auto_Farm_Level then
                    FarmLv = false
                end
                if game:GetService("Workspace").Map.Jungle.Final.Part.Transparency == 0 then
                    if game:GetService("Workspace").Map.Jungle.QuestPlates.Door.Transparency == 0 then
                        if (CFrame.new(-1612.55884, 36.9774132, 148.719543, 0.37091279, 3.0717151e-09, -0.928667724,
                            3.97099491e-08, 1, 1.91679348e-08, 0.928667724, -4.39869794e-08, 0.37091279).Position -
                            game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 100 then
                            toTarget(game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame)
                            wait(1)
                            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame =
                                game:GetService("Workspace").Map.Jungle.QuestPlates.Plate1.Button.CFrame
                            wait(1)
                            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame =
                                game:GetService("Workspace").Map.Jungle.QuestPlates.Plate2.Button.CFrame
                            wait(1)
                            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame =
                                game:GetService("Workspace").Map.Jungle.QuestPlates.Plate3.Button.CFrame
                            wait(1)
                            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame =
                                game:GetService("Workspace").Map.Jungle.QuestPlates.Plate4.Button.CFrame
                            wait(1)
                            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame =
                                game:GetService("Workspace").Map.Jungle.QuestPlates.Plate5.Button.CFrame
                            wait(1)
                        else
                            toTarget(CFrame.new(-1612.55884, 36.9774132, 148.719543, 0.37091279, 3.0717151e-09,
                                -0.928667724, 3.97099491e-08, 1, 1.91679348e-08, 0.928667724, -4.39869794e-08,
                                0.37091279))
                        end
                    else
                        if game:GetService("Workspace").Map.Desert.Burn.Part.Transparency == 0 then
                            if game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Torch") or
                                game.Players.LocalPlayer.Character:FindFirstChild("Torch") then
                                EquipWeapon("Torch")
                                toTarget(CFrame.new(1114.61475, 5.04679728, 4350.22803, -0.648466587, -1.28799094e-09,
                                    0.761243105, -5.70652914e-10, 1, 1.20584542e-09, -0.761243105, 3.47544882e-10,
                                    -0.648466587))
                            else
                                toTarget(CFrame.new(-1610.00757, 11.5049858, 164.001587, 0.984807551, -0.167722285,
                                    -0.0449818149, 0.17364943, 0.951244235, 0.254912198, 3.42372805e-05, -0.258850515,
                                    0.965917408))
                            end
                        else
                            if game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("ProQuestProgress",
                                "SickMan") ~= 0 then
                                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("ProQuestProgress",
                                    "GetCup")
                                wait(0.5)
                                EquipWeapon("Cup")
                                wait(0.5)
                                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("ProQuestProgress",
                                    "FillCup", game:GetService("Players").LocalPlayer.Character.Cup)
                                wait(0)
                                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("ProQuestProgress",
                                    "SickMan")
                            else
                                if game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("ProQuestProgress",
                                    "RichSon") == nil then
                                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("ProQuestProgress",
                                        "RichSon")
                                elseif game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(
                                    "ProQuestProgress", "RichSon") == 0 then
                                    if game:GetService("Workspace").Enemies:FindFirstChild("Mob Leader [Lv. 120] [Boss]") or
                                        game:GetService("ReplicatedStorage")
                                            :FindFirstChild("Mob Leader [Lv. 120] [Boss]") then
                                        toTarget(CFrame.new(-2967.59521, -4.91089821, 5328.70703, 0.342208564,
                                            -0.0227849055, 0.939347804, 0.0251603816, 0.999569714, 0.0150796166,
                                            -0.939287126, 0.0184739735, 0.342634559))
                                        for i, v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                                            if v.Name == "Mob Leader [Lv. 120] [Boss]" then
                                                repeat
                                                    wait()
                                                    StartMagnet = true
                                                    NeedAttacking = true
                                                    if Auto_Haki then
                                                        if not game.Players.LocalPlayer.Character:FindFirstChild(
                                                            "HasBuso") then
                                                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(
                                                                "Buso")
                                                        end
                                                    end
                                                    if not game.Players.LocalPlayer.Character:FindFirstChild(
                                                        Selected_Weapons) then
                                                        wait()
                                                        EquipWeapon(Selected_Weapons)
                                                    end
                                                    toTarget(v.HumanoidRootPart.CFrame *
                                                                 CFrame.new(0, Distance_Auto_Farm, 0))
                                                    PosMon = v.HumanoidRootPart.CFrame
                                                    if not Fast_Attack then
                                                        game:GetService 'VirtualUser':CaptureController()
                                                        game:GetService 'VirtualUser'
                                                            :Button1Down(Vector2.new(1280, 672))
                                                    end
                                                    v.HumanoidRootPart.Size = Vector3.new(60, 60, 60)
                                                    v.HumanoidRootPart.Transparency = 1
                                                    v.Humanoid.JumpPower = 0
                                                    v.Humanoid.WalkSpeed = 0
                                                    v.HumanoidRootPart.CanCollide = false
                                                    v.Humanoid:ChangeState(11)
                                                until v.Humanoid.Health <= 0 or Auto_Saber == false
                                            end
                                        end
                                    end
                                elseif game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(
                                    "ProQuestProgress", "RichSon") == 1 then
                                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("ProQuestProgress",
                                        "RichSon")
                                    wait(0.5)
                                    EquipWeapon("Relic")
                                    wait(0.5)
                                    toTarget(CFrame.new(-1404.91504, 29.9773273, 3.80598116, 0.876514494,
                                        5.66906877e-09, 0.481375456, 2.53851997e-08, 1, -5.79995607e-08, -0.481375456,
                                        6.30572643e-08, 0.876514494))
                                end
                            end
                        end
                    end
                else
                    if game:GetService("Workspace").Enemies:FindFirstChild("Saber Expert [Lv. 200] [Boss]") or
                        game:GetService("ReplicatedStorage"):FindFirstChild("Saber Expert [Lv. 200] [Boss]") then
                        toTarget(CFrame.new(-1401.85046, 29.9773273, 8.81916237, 0.85820812, 8.76083845e-08,
                            0.513301849, -8.55007443e-08, 1, -2.77243419e-08, -0.513301849, -2.00944328e-08, 0.85820812))
                        for i, v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                            if v.Name == "Saber Expert [Lv. 200] [Boss]" then
                                repeat
                                    wait()
                                    StartMagnet = true
                                    NeedAttacking = true
                                    if Auto_Haki then
                                        if not game.Players.LocalPlayer.Character:FindFirstChild("HasBuso") then
                                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Buso")
                                        end
                                    end
                                    if not game.Players.LocalPlayer.Character:FindFirstChild(Selected_Weapons) then
                                        wait()
                                        EquipWeapon(Selected_Weapons)
                                    end
                                    toTarget(v.HumanoidRootPart.CFrame * CFrame.new(0, Distance_Auto_Farm, 0))
                                    PosMon = v.HumanoidRootPart.CFrame
                                    if not Fast_Attack then
                                        game:GetService 'VirtualUser':CaptureController()
                                        game:GetService 'VirtualUser':Button1Down(Vector2.new(1280, 672))
                                    end
                                    v.HumanoidRootPart.Size = Vector3.new(60, 60, 60)
                                    v.HumanoidRootPart.Transparency = 1
                                    v.Humanoid.JumpPower = 0
                                    v.Humanoid.WalkSpeed = 0
                                    v.HumanoidRootPart.CanCollide = false
                                    v.Humanoid:ChangeState(11)
                                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("SetSpawnPoint")
                                until v.Humanoid.Health <= 0 or Auto_Saber == false
                                if v.Humanoid.Health <= 0 then
                                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("ProQuestProgress",
                                        "PlaceRelic")
                                end
                                if Auto_Farm_Level then
                                    FarmLv = true
                                end
                            end
                        end
                    end
                end
            end
        end)
    end
end)

fask.spawn(function()
    while wait() do
        pcall(function()
            if Auto_Pole then
                if game.ReplicatedStorage:FindFirstChild("Thunder God [Lv. 575] [Boss]") or
                    game.Workspace.Enemies:FindFirstChild("Thunder God [Lv. 575] [Boss]") then
                    for i, v in pairs(game.Workspace.Enemies:GetChildren()) do
                        if v.Name == "Thunder God [Lv. 575] [Boss]" and v:FindFirstChild("HumanoidRootPart") and
                            v:FindFirstChild("Humanoid") and v.Humanoid.Health > 0 then
                            repeat
                                wait()
                                if (v.HumanoidRootPart.Position -
                                    game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude > 300 then
                                    Farmtween = toTarget(v.HumanoidRootPart.Position, v.HumanoidRootPart.CFrame)
                                elseif (v.HumanoidRootPart.Position -
                                    game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude <= 300 then
                                    if Farmtween then
                                        Farmtween:Stop()
                                    end
                                    StartMagnet = true
                                    NeedAttacking = true
                                    if Auto_Haki then
                                        if not game.Players.LocalPlayer.Character:FindFirstChild("HasBuso") then
                                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Buso")
                                        end
                                    end
                                    if not game.Players.LocalPlayer.Character:FindFirstChild(Selected_Weapons) then
                                        wait()
                                        EquipWeapon(Selected_Weapons)
                                    end
                                    toTarget(v.HumanoidRootPart.CFrame * CFrame.new(0, Distance_Auto_Farm, 0))
                                    PosMon = v.HumanoidRootPart.CFrame
                                    if not Fast_Attack then
                                        game:GetService 'VirtualUser':CaptureController()
                                        game:GetService 'VirtualUser':Button1Down(Vector2.new(1280, 672))
                                    end
                                    v.HumanoidRootPart.Size = Vector3.new(60, 60, 60)
                                    v.HumanoidRootPart.Transparency = 1
                                    v.Humanoid.JumpPower = 0
                                    v.Humanoid.WalkSpeed = 0
                                    v.HumanoidRootPart.CanCollide = false
                                    v.Humanoid:ChangeState(11)
                                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("SetSpawnPoint")
                                end
                            until not Auto_Pole or v.Humanoid.Health <= 0 or not v.Parent
                            StartMagnet = false
                            NeedAttacking = false
                        end
                    end
                else
                    Questtween = toTarget(CFrame.new(-7900.66406, 5606.90918, -2267.46436).Position,
                        CFrame.new(-7900.66406, 5606.90918, -2267.46436))
                    if (CFrame.new(-7900.66406, 5606.90918, -2267.46436).Position -
                        game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude <= 300 then
                        if Questtween then
                            Questtween:Stop()
                        end
                        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame =
                            CFrame.new(-7900.66406, 5606.90918, -2267.46436)
                    end
                end
            end
        end)
    end
end)

fask.spawn(function()
    while wait() do
        pcall(function()
            if Auto_Franky then
                if game:GetService("Workspace").Enemies:FindFirstChild("Cyborg [Lv. 675] [Boss]") then
                    for i, v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                        if v.Name == ("Cyborg [Lv. 675] [Boss]" or v.Name == "Cyborg [Lv. 675] [Boss]") and
                            v.Humanoid.Health > 0 and v:IsA("Model") and v:FindFirstChild("Humanoid") and
                            v:FindFirstChild("HumanoidRootPart") then
                            repeat
                                wait()
                                StartMagnet = true
                                NeedAttacking = true
                                if Auto_Haki then
                                    if not game.Players.LocalPlayer.Character:FindFirstChild("HasBuso") then
                                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Buso")
                                    end
                                end
                                if not game.Players.LocalPlayer.Character:FindFirstChild(Selected_Weapons) then
                                    wait()
                                    EquipWeapon(Selected_Weapons)
                                end
                                PosMon = v.HumanoidRootPart.CFrame
                                if not Fast_Attack then
                                    game:GetService 'VirtualUser':CaptureController()
                                    game:GetService 'VirtualUser':Button1Down(Vector2.new(1280, 672))
                                end
                                v.HumanoidRootPart.Size = Vector3.new(60, 60, 60)
                                v.HumanoidRootPart.Transparency = 1
                                v.Humanoid.JumpPower = 0
                                v.Humanoid.WalkSpeed = 0
                                v.HumanoidRootPart.CanCollide = false
                                v.Humanoid:ChangeState(11)
                                toTarget(v.HumanoidRootPart.CFrame * CFrame.new(0, Distance_Auto_Farm, 0))
                            until Auto_Franky == false or v.Humanoid.Health <= 0
                            StartMagnet = false
                            NeedAttacking = false
                        end
                    end
                else
                    toTarget(CFrame.new(6130.38086, 9.76513767, 3916.90308, -0.28136304, -1.30420315e-08, -0.959601402,
                        4.01042088e-09, 1, -1.47669814e-08, 0.959601402, -8.0032887e-09, -0.28136304))
                end
            end
        end)
    end
end)

spawn(function()
    pcall(function()
        while wait() do
            if (Auto_Pole_Hop and Auto_Pole) and World1 and
                not game:GetService("ReplicatedStorage"):FindFirstChild("Thunder God [Lv. 575] [Boss]") and
                not game:GetService("Workspace").Enemies:FindFirstChild("Thunder God [Lv. 575] [Boss]") then
                ServerFunc:NormalTeleport()
            end
        end
    end)
end)

spawn(function()
    pcall(function()
        while wait() do
            if (Auto_Franky_Hop and Auto_Franky) and World1 and
                not game:GetService("ReplicatedStorage"):FindFirstChild("Cyborg [Lv. 675] [Boss]") and
                not game:GetService("Workspace").Enemies:FindFirstChild("Cyborg [Lv. 675] [Boss]") then
                ServerFunc:NormalTeleport()
            end
        end
    end)
end)

Tabs.FindSec:AddParagraph({
    Title = "Second Sea",
    Content = "Finding Items In Second Sea"
})

local Farm_Factory = Tabs.FindSec:AddToggle("Auto_Factory_Farm", {
    Title = "Auto Factory Farm",
    Default = Auto_Factory_Farm
})
local Farm_FactoryHOP = Tabs.FindSec:AddToggle("Auto_Factory_Farm_Hop", {
    Title = "Auto Factory Farm [HOP]",
    Default = Auto_Factory_Farm_Hop
})

local Dark_Coat = Tabs.FindSec:AddToggle("Auto_Dark_Coat", {
    Title = "Auto Darkbeard",
    Default = Auto_Dark_Coat
})
local Dark_CoatHOP = Tabs.FindSec:AddToggle("Auto_Dark_Coat_Hop", {
    Title = "Auto Darkbeard [HOP]",
    Default = Auto_Dark_Coat_Hop
})

local Swan = Tabs.FindSec:AddToggle("Auto_Swan_Glasses", {
    Title = "Auto Kill Don Swan",
    Default = Auto_Swan_Glasses
})
local SwanHOP = Tabs.FindSec:AddToggle("Auto_Swan_Glasses_Hop", {
    Title = "Auto Kill Don Swan [HOP]",
    Default = Auto_Swan_Glasses_Hop
})

Farm_Factory:OnChanged(function(value)
    Auto_Factory_Farm = value
    if value == false then
        toTarget(game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame)
    end
    Save()
end)

Farm_FactoryHOP:OnChanged(function(value)
    Auto_Factory_Farm_Hop = value
    Save()
end)

Dark_Coat:OnChanged(function(value)
    Auto_Dark_Coat = value
    if value == false then
        toTarget(game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame)
    end
    Save()
end)

Dark_CoatHOP:OnChanged(function(value)
    Auto_Dark_Coat_Hop = value
    Save()
end)

Swan:OnChanged(function(value)
    Auto_Swan_Glasses = value
    if value == false then
        toTarget(game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame)
    end
    Save()
end)

SwanHOP:OnChanged(function(value)
    Auto_Swan_Glasses_Hop = value
    Save()
end)
---
fask.spawn(function()
    while wait() do
        pcall(function()
            if Auto_Factory_Farm then
                if game.Workspace.Enemies:FindFirstChild("Core") then
                    _G.FactoryCore = true
                    if FarmLv then
                        Auto_Farm_Level = false
                    end
                    for i, v in pairs(game.Workspace.Enemies:GetChildren()) do
                        if _G.FactoryCore and v.Name == "Core" and v.Humanoid.Health > 0 then
                            repeat
                                wait()
                                NeedAttacking = true
                                if Auto_Haki then
                                    if not game.Players.LocalPlayer.Character:FindFirstChild("HasBuso") then
                                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Buso")
                                    end
                                end
                                if not game.Players.LocalPlayer.Character:FindFirstChild(Selected_Weapons) then
                                    wait()
                                    EquipWeapon(Selected_Weapons)
                                end
                                if not Fast_Attack then
                                    game:GetService 'VirtualUser':CaptureController()
                                    game:GetService 'VirtualUser':Button1Down(Vector2.new(1280, 672))
                                end
                                v.HumanoidRootPart.Size = Vector3.new(60, 60, 60)
                                v.HumanoidRootPart.Transparency = 1
                                v.Humanoid.JumpPower = 0
                                v.Humanoid.WalkSpeed = 0
                                v.HumanoidRootPart.CanCollide = false
                                v.Humanoid:ChangeState(11)
                                toTarget(v.HumanoidRootPart.CFrame * CFrame.new(0, 10, 10))
                            until not _G.FactoryCore or v.Humanoid.Health <= 0 or Auto_Factory_Farm == false
                        end
                    end
                elseif game.ReplicatedStorage:FindFirstChild("Core") and
                    game.ReplicatedStorage:FindFirstChild("Core"):FindFirstChild("Humanoid") then
                    _G.FactoryCore = true
                    if FarmLv then
                        Auto_Farm_Level = false
                    end
                    toTarget(CFrame.new(502.7349853515625, 143.0749053955078, -379.078125))
                elseif not game.ReplicatedStorage:FindFirstChild("Core") then
                    if Auto_Factory_Farm_Hop then
                        ServerFunc:NormalTeleport()
                    else
                        if FarmLv then
                            _G.FactoryCore = false
                            Auto_Farm_Level = true
                        end
                    end
                end
            end
        end)
    end
end)

fask.spawn(function()
    while wait() do
        pcall(function()
            if Auto_Dark_Coat then
                if game:GetService("Workspace").Enemies:FindFirstChild("Darkbeard [Lv. 1000] [Raid Boss]") then
                    for i, v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                        if v.Name ==
                            ("Darkbeard [Lv. 1000] [Raid Boss]" or v.Name == "Darkbeard [Lv. 1000] [Raid Boss]") and
                            v.Humanoid.Health > 0 and v:IsA("Model") and v:FindFirstChild("Humanoid") and
                            v:FindFirstChild("HumanoidRootPart") then
                            repeat
                                wait()
                                StartMagnet = true
                                NeedAttacking = true
                                if Auto_Haki then
                                    if not game.Players.LocalPlayer.Character:FindFirstChild("HasBuso") then
                                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Buso")
                                    end
                                end
                                if not game.Players.LocalPlayer.Character:FindFirstChild(Selected_Weapons) then
                                    wait()
                                    EquipWeapon(Selected_Weapons)
                                end
                                PosMon = v.HumanoidRootPart.CFrame
                                if not Fast_Attack then
                                    game:GetService 'VirtualUser':CaptureController()
                                    game:GetService 'VirtualUser':Button1Down(Vector2.new(1280, 672))
                                end
                                v.HumanoidRootPart.Size = Vector3.new(60, 60, 60)
                                v.HumanoidRootPart.Transparency = 1
                                v.Humanoid.JumpPower = 0
                                v.Humanoid.WalkSpeed = 0
                                v.HumanoidRootPart.CanCollide = false
                                v.Humanoid:ChangeState(11)
                                toTarget(v.HumanoidRootPart.CFrame * CFrame.new(0, Distance_Auto_Farm, 0))
                            until Auto_Dark_Coat == false or v.Humanoid.Health <= 0
                            StartMagnet = false
                            NeedAttacking = false
                        end
                    end
                else
                    toTarget(CFrame.new(3677.08203125, 62.751937866211, -3144.8332519531))
                end
            end
        end)
    end
end)

spawn(function()
    pcall(function()
        while wait() do
            if (Auto_Dark_Coat_Hop and Auto_Dark_Coat) and World2 and
                not game:GetService("ReplicatedStorage"):FindFirstChild("Darkbeard [Lv. 1000] [Raid Boss]") and
                not game:GetService("Workspace").Enemies:FindFirstChild("Darkbeard [Lv. 1000] [Raid Boss]") then
                ServerFunc:NormalTeleport()
            end
        end
    end)
end)

fask.spawn(function()
    while wait() do
        pcall(function()
            if Auto_Swan_Glasses then
                if game:GetService("Workspace").Enemies:FindFirstChild("Don Swan [Lv. 1000] [Boss]") then
                    for i, v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                        if v.Name == "Don Swan [Lv. 1000] [Boss]" and v.Humanoid.Health > 0 and v:IsA("Model") and
                            v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") then
                            repeat
                                wait()
                                StartMagnet = true
                                NeedAttacking = true
                                if Auto_Haki then
                                    if not game.Players.LocalPlayer.Character:FindFirstChild("HasBuso") then
                                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Buso")
                                    end
                                end
                                if not game.Players.LocalPlayer.Character:FindFirstChild(Selected_Weapons) then
                                    wait()
                                    EquipWeapon(Selected_Weapons)
                                end
                                PosMon = v.HumanoidRootPart.CFrame
                                if not Fast_Attack then
                                    game:GetService 'VirtualUser':CaptureController()
                                    game:GetService 'VirtualUser':Button1Down(Vector2.new(1280, 672))
                                end
                                v.HumanoidRootPart.Size = Vector3.new(60, 60, 60)
                                v.HumanoidRootPart.Transparency = 1
                                v.Humanoid.JumpPower = 0
                                v.Humanoid.WalkSpeed = 0
                                v.HumanoidRootPart.CanCollide = false
                                v.Humanoid:ChangeState(11)
                                toTarget(v.HumanoidRootPart.CFrame * CFrame.new(0, Distance_Auto_Farm, 0))
                            until not Auto_Swan_Glasses or v.Humanoid.Health <= 0
                            StartMagnet = false
                            NeedAttacking = false
                        end
                    end
                else
                    repeat
                        wait()
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance", Vector3.new(
                            2284.912109375, 15.537666320801, 905.48291015625))
                    until (CFrame.new(2284.912109375, 15.537666320801, 905.48291015625).Position -
                        game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 4 or
                        not Auto_Swan_Glasses
                end
            end
        end)
    end
end)

fask.spawn(function()
    pcall(function()
        while wait() do
            if (Auto_Swan_Glasses_Hop and Auto_Swan_Glasses) and World2 and
                not game:GetService("ReplicatedStorage"):FindFirstChild("Don Swan [Lv. 1000] [Boss]") and
                not game:GetService("Workspace").Enemies:FindFirstChild("Don Swan [Lv. 1000] [Boss]") then
                ServerFunc:NormalTeleport()
            end
        end
    end)
end)

Tabs.FindSec:AddParagraph({
    Title = "Law Raids Second Sea",
    Content = "Kill Law Buy Chips&More. [Can open multi function]"
})

local BuyLawChip = Tabs.FindSec:AddToggle("Auto_Buy_Law_Chip", {
    Title = "Auto Buy Microchip Law [Raid]",
    Default = Auto_Buy_Law_Chip
})
local StartLaw = Tabs.FindSec:AddToggle("Auto_Start_Law_Dungeon", {
    Title = "Auto Start Law [Raid]",
    Default = Auto_Start_Law_Dungeon
})
local KillLaw = Tabs.FindSec:AddToggle("Auto_Start_Law_Dungeon", {
    Title = "Auto Kill Law [Raid]",
    Default = Auto_Kill_Law
})

BuyLawChip:OnChanged(function(value)
    Auto_Buy_Law_Chip = value
    if value == false then
        toTarget(game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame)
    end
    Save()
end)

StartLaw:OnChanged(function(value)
    Auto_Start_Law_Dungeon = value
    Save()
    spawn(function()
        while wait() do
            if Auto_Start_Law_Dungeon then
                pcall(function()
                    if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Microchip") or
                        game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Microchip") then
                        fireclickdetector(game:GetService("Workspace").Map.CircleIsland.RaidSummon.Button.Main
                                              .ClickDetector)
                    end
                end)
            end
        end
    end)
end)

KillLaw:OnChanged(function(value)
    Auto_Kill_Law = value
    if value == false then
        toTarget(game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame)
    end
    Save()
end)

spawn(function()
    while wait() do
        if Auto_Buy_Law_Chip then
            pcall(function()
                if game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Microchip") or
                    game:GetService("Players").LocalPlayer.Character:FindFirstChild("Microchip") or
                    game:GetService("Workspace").Enemies:FindFirstChild("Order [Lv. 1250] [Raid Boss]") or
                    game:GetService("ReplicatedStorage"):FindFirstChild("Order [Lv. 1250] [Raid Boss]") then
                else
                    local args = {
                        [1] = "BlackbeardReward",
                        [2] = "Microchip",
                        [3] = "2"
                    }
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
                end
            end)
        end
    end
end)

spawn(function()
    while wait() do
        if Auto_Kill_Law then
            pcall(function()
                if game:GetService("ReplicatedStorage"):FindFirstChild("Order [Lv. 1250] [Raid Boss]") or
                    game:GetService("Workspace").Enemies:FindFirstChild("Order [Lv. 1250] [Raid Boss]") then
                    for i, v in pairs(game.Workspace.Enemies:GetChildren()) do
                        if Auto_Kill_Law and v.Name == "Order [Lv. 1250] [Raid Boss]" and
                            v:FindFirstChild("HumanoidRootPart") and v:FindFirstChild("Humanoid") and v.Humanoid.Health >
                            0 then
                            repeat
                                fask.wait()
                                StartMagnet = true
                                NeedAttacking = true
                                if Auto_Haki then
                                    if not game.Players.LocalPlayer.Character:FindFirstChild("HasBuso") then
                                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Buso")
                                    end
                                end
                                if not game.Players.LocalPlayer.Character:FindFirstChild(Selected_Weapons) then
                                    wait()
                                    EquipWeapon(Selected_Weapons)
                                end
                                PosMon = v.HumanoidRootPart.CFrame
                                if not Fast_Attack then
                                    game:GetService 'VirtualUser':CaptureController()
                                    game:GetService 'VirtualUser':Button1Down(Vector2.new(1280, 672))
                                end
                                v.HumanoidRootPart.Size = Vector3.new(60, 60, 60)
                                v.HumanoidRootPart.Transparency = 1
                                v.Humanoid.JumpPower = 0
                                v.Humanoid.WalkSpeed = 0
                                v.HumanoidRootPart.CanCollide = false
                                v.Humanoid:ChangeState(11)
                                toTarget(v.HumanoidRootPart.CFrame * CFrame.new(0, Distance_Auto_Farm, 0))
                            until not Auto_Kill_Law or v.Humanoid.Health <= 0 or not v.Parent
                            StartMagnet = false
                            NeedAttacking = false
                        end
                    end
                end
            end)
        end
    end
end)

Tabs.FindSec:AddParagraph({
    Title = "Misc",
    Content = "Farming New World Misc Function."
})

local QuestBar = Tabs.FindSec:AddToggle("Auto_Bartilo_Quest", {
    Title = "Auto Bartilo Quest",
    Default = Auto_Bartilo_Quest
})
local GetReng = Tabs.FindSec:AddToggle("Auto_Rengoku", {
    Title = "Auto Rengoku",
    Default = Auto_Rengoku
})

QuestBar:OnChanged(function(value)
    Auto_Bartilo_Quest = value
    if value == false then
        toTarget(game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame)
    end
    Save()
end)

GetReng:OnChanged(function(value)
    Auto_Rengoku = value
    if value == false then
        toTarget(game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame)
    end
    Save()
end)

fask.spawn(function()
    while wait() do
        pcall(function()
            if Auto_Bartilo_Quest then
                if game.Players.LocalPlayer.Data.Level.Value >= 850 then
                    if game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BartiloQuestProgress",
                        "Bartilo") == 0 then
                        if string.find(game.Players.LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text,
                            "Swan Pirates") and
                            string.find(game.Players.LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text,
                                "50") and game.Players.LocalPlayer.PlayerGui.Main.Quest.Visible == true then
                            if game.Workspace.Enemies:FindFirstChild("Swan Pirate [Lv. 775]") then
                                for i, v in pairs(game.Workspace.Enemies:GetChildren()) do
                                    if v.Name == "Swan Pirate [Lv. 775]" then
                                        pcall(function()
                                            repeat
                                                wait()
                                                if (v.HumanoidRootPart.Position -
                                                    game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude >
                                                    300 then
                                                    Farmtween =
                                                        toTarget(v.HumanoidRootPart.Position, v.HumanoidRootPart.CFrame)
                                                elseif (v.HumanoidRootPart.Position -
                                                    game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude <=
                                                    300 then
                                                    if Farmtween then
                                                        Farmtween:Stop()
                                                    end
                                                    NeedAttacking = true
                                                    StartMagnet = true
                                                    if Auto_Haki then
                                                        if not game.Players.LocalPlayer.Character:FindFirstChild(
                                                            "HasBuso") then
                                                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(
                                                                "Buso")
                                                        end
                                                    end
                                                    if not game.Players.LocalPlayer.Character:FindFirstChild(
                                                        Selected_Weapons) then
                                                        wait()
                                                        EquipWeapon(Selected_Weapons)
                                                    end
                                                    PosMon = v.HumanoidRootPart.CFrame
                                                    if not Fast_Attack then
                                                        game:GetService 'VirtualUser':CaptureController()
                                                        game:GetService 'VirtualUser'
                                                            :Button1Down(Vector2.new(1280, 672))
                                                    end
                                                    v.HumanoidRootPart.Size = Vector3.new(60, 60, 60)
                                                    v.HumanoidRootPart.Transparency = 1
                                                    v.Humanoid.JumpPower = 0
                                                    v.Humanoid.WalkSpeed = 0
                                                    v.HumanoidRootPart.CanCollide = false
                                                    v.Humanoid:ChangeState(11)
                                                    toTarget(v.HumanoidRootPart.CFrame *
                                                                 CFrame.new(0, Distance_Auto_Farm, 0))
                                                end
                                            until not v.Parent or v.Humanoid.Health <= 0 or Auto_Bartilo_Quest == false or
                                                game.Players.LocalPlayer.PlayerGui.Main.Quest.Visible == false
                                            StartMagnet = false
                                            NeedAttacking = false
                                        end)
                                    end
                                end
                            else
                                Questtween = toTarget(CFrame.new(1057.92761, 137.614319, 1242.08069).Position,
                                    CFrame.new(1057.92761, 137.614319, 1242.08069))
                                if (CFrame.new(1057.92761, 137.614319, 1242.08069).Position -
                                    game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude <= 300 then
                                    if Questtween then
                                        Questtween:Stop()
                                    end
                                    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(1057.92761,
                                        137.614319, 1242.08069)
                                end
                            end
                        else
                            Bartilotween = toTarget(CFrame.new(-456.28952, 73.0200958, 299.895966).Position,
                                CFrame.new(-456.28952, 73.0200958, 299.895966))
                            if (CFrame.new(-456.28952, 73.0200958, 299.895966).Position -
                                game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude <= 300 then
                                if Bartilotween then
                                    Bartilotween:Stop()
                                end
                                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-456.28952,
                                    73.0200958, 299.895966)
                                local args = {
                                    [1] = "StartQuest",
                                    [2] = "BartiloQuest",
                                    [3] = 1
                                }
                                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
                            end
                        end
                    end
                elseif game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BartiloQuestProgress",
                    "Bartilo") == 1 then
                    if game.Workspace.Enemies:FindFirstChild("Jeremy [Lv. 850] [Boss]") then
                        for i, v in pairs(game.Workspace.Enemies:GetChildren()) do
                            if v.Name == "Jeremy [Lv. 850] [Boss]" then
                                repeat
                                    wait()
                                    if (v.HumanoidRootPart.Position -
                                        game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude > 300 then
                                        Farmtween = toTarget(v.HumanoidRootPart.Position, v.HumanoidRootPart.CFrame)
                                    elseif (v.HumanoidRootPart.Position -
                                        game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude <= 300 then
                                        if Farmtween then
                                            Farmtween:Stop()
                                        end
                                        NeedAttacking = true
                                        if Auto_Haki then
                                            if not game.Players.LocalPlayer.Character:FindFirstChild("HasBuso") then
                                                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Buso")
                                            end
                                        end
                                        if not game.Players.LocalPlayer.Character:FindFirstChild(Selected_Weapons) then
                                            wait()
                                            EquipWeapon(Selected_Weapons)
                                        end
                                        PosMon = v.HumanoidRootPart.CFrame
                                        if not Fast_Attack then
                                            game:GetService 'VirtualUser':CaptureController()
                                            game:GetService 'VirtualUser':Button1Down(Vector2.new(1280, 672))
                                        end
                                        v.HumanoidRootPart.Size = Vector3.new(60, 60, 60)
                                        v.HumanoidRootPart.Transparency = 1
                                        v.Humanoid.JumpPower = 0
                                        v.Humanoid.WalkSpeed = 0
                                        v.HumanoidRootPart.CanCollide = false
                                        v.Humanoid:ChangeState(11)
                                        toTarget(v.HumanoidRootPart.CFrame * CFrame.new(0, Distance_Auto_Farm, 0))
                                    end
                                until not v.Parent or v.Humanoid.Health <= 0 or Auto_Bartilo_Quest == false
                                NeedAttacking = false
                            end
                        end
                    else
                        Bartilotween = toTarget(CFrame.new(2099.88159, 448.931, 648.997375).Position,
                            CFrame.new(2099.88159, 448.931, 648.997375))
                        if (CFrame.new(2099.88159, 448.931, 648.997375).Position -
                            game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude <= 300 then
                            if Bartilotween then
                                Bartilotween:Stop()
                            end
                            game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(
                                2099.88159, 448.931, 648.997375)
                        end
                    end
                elseif game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BartiloQuestProgress",
                    "Bartilo") == 2 then
                    if (CFrame.new(-1836, 11, 1714).Position -
                        game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude > 300 then
                        Bartilotween = toTarget(CFrame.new(-1836, 11, 1714).Position, CFrame.new(-1836, 11, 1714))
                    elseif (CFrame.new(-1836, 11, 1714).Position -
                        game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude <= 300 then
                        if Bartilotween then
                            Bartilotween:Stop()
                        end
                        game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-1836, 11,
                            1714)
                        wait(.5)
                        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame =
                            CFrame.new(-1850.49329, 13.1789551, 1750.89685)
                        wait(1)
                        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame =
                            CFrame.new(-1858.87305, 19.3777466, 1712.01807)
                        wait(1)
                        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame =
                            CFrame.new(-1803.94324, 16.5789185, 1750.89685)
                        wait(1)
                        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame =
                            CFrame.new(-1858.55835, 16.8604317, 1724.79541)
                        wait(1)
                        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame =
                            CFrame.new(-1869.54224, 15.987854, 1681.00659)
                        wait(1)
                        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame =
                            CFrame.new(-1800.0979, 16.4978027, 1684.52368)
                        wait(1)
                        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame =
                            CFrame.new(-1819.26343, 14.795166, 1717.90625)
                        wait(1)
                        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame =
                            CFrame.new(-1813.51843, 14.8604736, 1724.79541)
                    end
                end
            end
        end)
    end
end)

fask.spawn(function()
    while wait() do
        pcall(function()
            if Auto_Rengoku then
                if game.Players.LocalPlayer.Backpack:FindFirstChild("Hidden Key") or
                    game.Players.LocalPlayer.Character:FindFirstChild("Hidden Key") then
                    EquipWeapon("Hidden Key")
                    toTarget(CFrame.new(6571.1201171875, 299.23028564453, -6967.841796875))
                elseif game.Workspace.Enemies:FindFirstChild("Snow Lurker [Lv. 1375]") or
                    game:GetService("Workspace").Enemies:FindFirstChild("Arctic Warrior [Lv. 1350]") then
                    for i, v in pairs(game.Workspace.Enemies:GetChildren()) do
                        if (v.Name == "Snow Lurker [Lv. 1375]" or v.Name == "Arctic Warrior [Lv. 1350]") and
                            v.Humanoid.Health > 0 then
                            repeat
                                wait()
                                StartMagnet = true
                                NeedAttacking = true
                                if Auto_Haki then
                                    if not game.Players.LocalPlayer.Character:FindFirstChild("HasBuso") then
                                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Buso")
                                    end
                                end
                                if not game.Players.LocalPlayer.Character:FindFirstChild(Selected_Weapons) then
                                    wait()
                                    EquipWeapon(Selected_Weapons)
                                end
                                PosMon = v.HumanoidRootPart.CFrame
                                if not Fast_Attack then
                                    game:GetService 'VirtualUser':CaptureController()
                                    game:GetService 'VirtualUser':Button1Down(Vector2.new(1280, 672))
                                end
                                v.HumanoidRootPart.Size = Vector3.new(60, 60, 60)
                                v.HumanoidRootPart.Transparency = 1
                                v.Humanoid.JumpPower = 0
                                v.Humanoid.WalkSpeed = 0
                                v.HumanoidRootPart.CanCollide = false
                                v.Humanoid:ChangeState(11)
                                toTarget(v.HumanoidRootPart.CFrame * CFrame.new(0, Distance_Auto_Farm, 0))
                            until game.Players.LocalPlayer.Backpack:FindFirstChild("Hidden Key") or not Auto_Rengoku or
                                not v.Parent or v.Humanoid.Health <= 0
                            StartMagnet = false
                            NeedAttacking = false
                        end
                    end
                else
                    StartMagnet = false
                    NeedAttacking = false
                    toTarget(CFrame.new(5525.7045898438, 262.90060424805, -6755.1186523438))
                end
            end
        end)
    end
end)

Tabs.FindSec:AddParagraph({
    Title = "Ectoplasm",
    Content = "Farming Ectoplasm"
})

local EctoplasmGet = Tabs.FindSec:AddToggle("Auto_Ectoplasm", {
    Title = "Auto Farm Ectoplasm",
    Default = Auto_Ectoplasm
})

EctoplasmGet:OnChanged(function(value)
    Auto_Ectoplasm = value
    if value == false then
        toTarget(game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame)
    end
    Save()
end)

fask.spawn(function()
    while wait() do
        pcall(function()
            if Auto_Ectoplasm then
                if game:GetService("Workspace").Enemies:FindFirstChild("Ship Deckhand [Lv. 1250]") or
                    game:GetService("Workspace").Enemies:FindFirstChild("Ship Engineer [Lv. 1275]") or
                    game:GetService("Workspace").Enemies:FindFirstChild("Ship Steward [Lv. 1300]") or
                    game:GetService("Workspace").Enemies:FindFirstChild("Ship Officer [Lv. 1325]") or
                    game:GetService("Workspace").Enemies:FindFirstChild("Arctic Warrior [Lv. 1350]") then
                    for i, v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                        if v.Name == "Ship Deckhand [Lv. 1250]" or v.Name == "Ship Engineer [Lv. 1275]" or v.Name ==
                            "Ship Steward [Lv. 1300]" or v.Name == "Ship Officer [Lv. 1325]" or v.Name ==
                            "Arctic Warrior [Lv. 1350]" then
                            if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and
                                v.Humanoid.Health > 0 then
                                repeat
                                    wait()
                                    StartMagnet = true
                                    NeedAttacking = true
                                    if Auto_Haki then
                                        if not game.Players.LocalPlayer.Character:FindFirstChild("HasBuso") then
                                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Buso")
                                        end
                                    end
                                    if not game.Players.LocalPlayer.Character:FindFirstChild(Selected_Weapons) then
                                        wait()
                                        EquipWeapon(Selected_Weapons)
                                    end
                                    PosMon = v.HumanoidRootPart.CFrame
                                    if not Fast_Attack then
                                        game:GetService 'VirtualUser':CaptureController()
                                        game:GetService 'VirtualUser':Button1Down(Vector2.new(1280, 672))
                                    end
                                    v.HumanoidRootPart.Size = Vector3.new(60, 60, 60)
                                    v.HumanoidRootPart.Transparency = 1
                                    v.Humanoid.JumpPower = 0
                                    v.Humanoid.WalkSpeed = 0
                                    v.HumanoidRootPart.CanCollide = false
                                    v.Humanoid:ChangeState(11)
                                    toTarget(v.HumanoidRootPart.CFrame * CFrame.new(0, Distance_Auto_Farm, 0))
                                until not Auto_Ectoplasm or not v.Parent or v.Humanoid.Health <= 0
                                StartMagnet = false
                                NeedAttacking = false
                            end
                        end
                    end
                else
                    StartMagnet = false
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance", Vector3.new(
                        923.21252441406, 126.9760055542, 32852.83203125))
                end
            end
        end)
    end
end)

Tabs.FindThird:AddParagraph({
    Title = "Find Items In Third Sea",
    Content = "Find Items In Third Sea"
})

local BuddySw = Tabs.FindThird:AddToggle("Auto_Buddy_Sword", {
    Title = "Auto Buddy Sword",
    Default = Auto_Buddy_Sword
})
local BuddySwHOP = Tabs.FindThird:AddToggle("Auto_Buddy_Sword_Hop", {
    Title = "Auto Buddy Sword [HOP]",
    Default = Auto_Buddy_Sword_Hop
})

local HallowScythe = Tabs.FindThird:AddToggle("Auto_Farm_Boss_Hallow", {
    Title = "Auto Hallow Scythe",
    Default = Auto_Farm_Boss_Hallow
})
local HallowScytheHOP = Tabs.FindThird:AddToggle("Auto_Farm_Boss_Hallow_Hop", {
    Title = "Auto Hallow Scythe [HOP]",
    Default = Auto_Farm_Boss_Hallow_Hop
})

local CavenderSw = Tabs.FindThird:AddToggle("Auto_Cavender", {
    Title = "Auto Cavander",
    Default = Auto_Cavender
})
local CavenderSwHOP = Tabs.FindThird:AddToggle("Auto_Cavender_Hop", {
    Title = "Auto Cavander [HOP]",
    Default = Auto_Cavender_Hop
})

local TwinHooks = Tabs.FindThird:AddToggle("Auto_TwinHooks", {
    Title = "Auto Twin Hooks",
    Default = Auto_TwinHooks
})
local TwinHooksHOP = Tabs.FindThird:AddToggle("Auto_Farm_Boss_Hallow_Hop", {
    Title = "Auto Twin Hooks [HOP]",
    Default = Auto_Farm_Boss_Hallow_Hop
})

local Serpent = Tabs.FindThird:AddToggle("Auto_Serpent_Bow", {
    Title = "Auto Serpent Bow",
    Default = Auto_Serpent_Bow
})
local SerpentHOP = Tabs.FindThird:AddToggle("Auto_Serpent_Bow_Hop", {
    Title = "Auto Serpent Bow [HOP]",
    Default = Auto_Serpent_Bow_Hop
})

BuddySw:OnChanged(function(value)
    Auto_Buddy_Sword = value
    if value == false then
        toTarget(game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame)
    end
    Save()
end)

BuddySwHOP:OnChanged(function(value)
    Auto_Buddy_Sword_Hop = value
    Save()
end)

HallowScythe:OnChanged(function(value)
    Auto_Farm_Boss_Hallow = value
    if value == false then
        toTarget(game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame)
    end
    Save()
end)

HallowScytheHOP:OnChanged(function(value)
    Auto_Farm_Boss_Hallow_Hop = value
    Save()
end)

CavenderSw:OnChanged(function(value)
    Auto_Cavender = value
    if value == false then
        toTarget(game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame)
    end
    Save()
end)

CavenderSwHOP:OnChanged(function(value)
    Auto_Cavender_Hop = value
    Save()
end)

TwinHooks:OnChanged(function(value)
    Auto_TwinHooks = value
    if value == false then
        toTarget(game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame)
    end
    Save()
end)

TwinHooksHOP:OnChanged(function(value)
    Auto_TwinHooks_Hop = value
    Save()
end)

Serpent:OnChanged(function(value)
    Auto_Serpent_Bow = value
    if value == false then
        toTarget(game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame)
    end
    Save()
end)

SerpentHOP:OnChanged(function(value)
    Auto_Serpent_Bow_Hop = value
    Save()
end)

fask.spawn(function()
    while wait() do
        pcall(function()
            if Auto_Buddy_Sword then
                if game:GetService("Workspace").Enemies:FindFirstChild("Cake Queen [Lv. 2175] [Boss]") then
                    for i, v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                        if v.Name == ("Cake Queen [Lv. 2175] [Boss]" or v.Name == "Cake Queen [Lv. 2175] [Boss]") and
                            v.Humanoid.Health > 0 and v:IsA("Model") and v:FindFirstChild("Humanoid") and
                            v:FindFirstChild("HumanoidRootPart") then
                            repeat
                                wait()
                                StartMagnet = true
                                NeedAttacking = true
                                if Auto_Haki then
                                    if not game.Players.LocalPlayer.Character:FindFirstChild("HasBuso") then
                                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Buso")
                                    end
                                end
                                if not game.Players.LocalPlayer.Character:FindFirstChild(Selected_Weapons) then
                                    wait()
                                    EquipWeapon(Selected_Weapons)
                                end
                                PosMon = v.HumanoidRootPart.CFrame
                                if not Fast_Attack then
                                    game:GetService 'VirtualUser':CaptureController()
                                    game:GetService 'VirtualUser':Button1Down(Vector2.new(1280, 672))
                                end
                                v.HumanoidRootPart.Size = Vector3.new(60, 60, 60)
                                v.HumanoidRootPart.Transparency = 1
                                v.Humanoid.JumpPower = 0
                                v.Humanoid.WalkSpeed = 0
                                v.HumanoidRootPart.CanCollide = false
                                v.Humanoid:ChangeState(11)
                                toTarget(v.HumanoidRootPart.CFrame * CFrame.new(0, Distance_Auto_Farm, 0))
                            until not Auto_Buddy_Sword or v.Humanoid.Health <= 0
                            StartMagnet = false
                            NeedAttacking = false
                        end
                    end
                end
            end
        end)
    end
end)

fask.spawn(function()
    pcall(function()
        while wait() do
            if (Auto_Buddy_Sword_Hop and Auto_Buddy_Sword) and World3 and
                not game:GetService("ReplicatedStorage"):FindFirstChild("Cake Queen [Lv. 2175] [Boss]") and
                not game:GetService("Workspace").Enemies:FindFirstChild("Cake Queen [Lv. 2175] [Boss]") then
                ServerFunc:NormalTeleport()
            end
        end
    end)
end)

fask.spawn(function()
    while wait() do
        pcall(function()
            if Auto_Farm_Boss_Hallow then
                if game:GetService("Workspace").Enemies:FindFirstChild("Soul Reaper [Lv. 2100] [Raid Boss]") then
                    for i, v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                        if string.find(v.Name, "Soul Reaper") then
                            repeat
                                wait()
                                StartMagnet = true
                                NeedAttacking = true
                                if Auto_Haki then
                                    if not game.Players.LocalPlayer.Character:FindFirstChild("HasBuso") then
                                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Buso")
                                    end
                                end
                                if not game.Players.LocalPlayer.Character:FindFirstChild(Selected_Weapons) then
                                    wait()
                                    EquipWeapon(Selected_Weapons)
                                end
                                PosMon = v.HumanoidRootPart.CFrame
                                if not Fast_Attack then
                                    game:GetService 'VirtualUser':CaptureController()
                                    game:GetService 'VirtualUser':Button1Down(Vector2.new(1280, 672))
                                end
                                v.HumanoidRootPart.Size = Vector3.new(60, 60, 60)
                                v.HumanoidRootPart.Transparency = 1
                                v.Humanoid.JumpPower = 0
                                v.Humanoid.WalkSpeed = 0
                                v.HumanoidRootPart.CanCollide = false
                                v.Humanoid:ChangeState(11)
                                toTarget(v.HumanoidRootPart.CFrame * CFrame.new(0, Distance_Auto_Farm, 0))
                            until v.Humanoid.Health <= 0 or not Auto_Farm_Boss_Hallow
                            StartMagnet = false
                            NeedAttacking = false
                        end
                    end
                elseif game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Hallow Essence") or
                    game:GetService("Players").LocalPlayer.Character:FindFirstChild("Hallow Essence") then
                    repeat
                        toTarget(CFrame.new(-8932.322265625, 146.83154296875, 6062.55078125))
                        wait()
                    until (CFrame.new(-8932.322265625, 146.83154296875, 6062.55078125).Position -
                        game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 8
                    EquipWeapon("Hallow Essence")
                else
                    if game:GetService("ReplicatedStorage"):FindFirstChild("Soul Reaper [Lv. 2100] [Raid Boss]") then
                        toTarget(CFrame.new(-9524.7890625, 315.80429077148, 6655.7192382813))
                    else
                        if Auto_Farm_Boss_Hallow_Hop then
                            ServerFunc:NormalTeleport()
                        end
                    end
                end
            end
        end)
    end
end)

fask.spawn(function()
    while wait() do
        pcall(function()
            if Auto_Cavender then
                if game:GetService("Workspace").Enemies:FindFirstChild("Beautiful Pirate [Lv. 1950] [Boss]") then
                    for i, v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                        if v.Name == ("Beautiful Pirate [Lv. 1950] [Boss]") and v.Humanoid.Health > 0 and v:IsA("Model") and
                            v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") then
                            repeat
                                wait()
                                StartMagnet = true
                                NeedAttacking = true
                                if Auto_Haki then
                                    if not game.Players.LocalPlayer.Character:FindFirstChild("HasBuso") then
                                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Buso")
                                    end
                                end
                                if not game.Players.LocalPlayer.Character:FindFirstChild(Selected_Weapons) then
                                    wait()
                                    EquipWeapon(Selected_Weapons)
                                end
                                PosMon = v.HumanoidRootPart.CFrame
                                if not Fast_Attack then
                                    game:GetService 'VirtualUser':CaptureController()
                                    game:GetService 'VirtualUser':Button1Down(Vector2.new(1280, 672))
                                end
                                v.HumanoidRootPart.Size = Vector3.new(60, 60, 60)
                                v.HumanoidRootPart.Transparency = 1
                                v.Humanoid.JumpPower = 0
                                v.Humanoid.WalkSpeed = 0
                                v.HumanoidRootPart.CanCollide = false
                                v.Humanoid:ChangeState(11)
                                toTarget(v.HumanoidRootPart.CFrame * CFrame.new(0, Distance_Auto_Farm, 0))
                            until not Auto_Cavender or v.Humanoid.Health <= 0
                            StartMagnet = false
                            NeedAttacking = false
                        end
                    end
                else
                    toTarget(CFrame.new(5283.609375, 22.56223487854, -110.78285217285))
                end
            end
        end)
    end
end)

fask.spawn(function()
    pcall(function()
        while wait() do
            if (Auto_Cavender_Hop and Auto_Cavender) and World3 and
                not game:GetService("ReplicatedStorage"):FindFirstChild("Beautiful Pirate [Lv. 1950] [Boss]") and
                not game:GetService("Workspace").Enemies:FindFirstChild("Beautiful Pirate [Lv. 1950] [Boss]") then
                ServerFunc:NormalTeleport()
            end
        end
    end)
end)

fask.spawn(function()
    while wait() do
        pcall(function()
            if Auto_TwinHooks then
                if game:GetService("Workspace").Enemies:FindFirstChild("Captain Elephant [Lv. 1875] [Boss]") then
                    for i, v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                        if v.Name == ("Captain Elephant [Lv. 1875] [Boss]") and v.Humanoid.Health > 0 and v:IsA("Model") and
                            v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") then
                            repeat
                                wait()
                                StartMagnet = true
                                NeedAttacking = true
                                if Auto_Haki then
                                    if not game.Players.LocalPlayer.Character:FindFirstChild("HasBuso") then
                                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Buso")
                                    end
                                end
                                if not game.Players.LocalPlayer.Character:FindFirstChild(Selected_Weapons) then
                                    wait()
                                    EquipWeapon(Selected_Weapons)
                                end
                                PosMon = v.HumanoidRootPart.CFrame
                                if not Fast_Attack then
                                    game:GetService 'VirtualUser':CaptureController()
                                    game:GetService 'VirtualUser':Button1Down(Vector2.new(1280, 672))
                                end
                                v.HumanoidRootPart.Size = Vector3.new(60, 60, 60)
                                v.HumanoidRootPart.Transparency = 1
                                v.Humanoid.JumpPower = 0
                                v.Humanoid.WalkSpeed = 0
                                v.HumanoidRootPart.CanCollide = false
                                v.Humanoid:ChangeState(11)
                                toTarget(v.HumanoidRootPart.CFrame * CFrame.new(0, Distance_Auto_Farm, 0))
                            until not Auto_TwinHooks or v.Humanoid.Health <= 0
                            StartMagnet = false
                            NeedAttacking = false
                        end
                    end
                else
                    toTarget(CFrame.new(-13376.7578125, 433.28689575195, -8071.392578125))
                end
            end
        end)
    end
end)

fask.spawn(function()
    pcall(function()
        while wait() do
            if (Auto_TwinHooks_Hop and Auto_TwinHooks) and World3 and
                not game:GetService("ReplicatedStorage"):FindFirstChild("Captain Elephant [Lv. 1875] [Boss]") and
                not game:GetService("Workspace").Enemies:FindFirstChild("Captain Elephant [Lv. 1875] [Boss]") then
                ServerFunc:NormalTeleport()
            end
        end
    end)
end)

fask.spawn(function()
    while wait() do
        if Auto_Serpent_Bow then
            if game:GetService("Workspace").Enemies:FindFirstChild("Island Empress [Lv. 1675] [Boss]") then
                for i, v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                    if v.Name == ("Island Empress [Lv. 1675] [Boss]" or v.Name == "Island Empress [Lv. 1675] [Boss]") and
                        v.Humanoid.Health > 0 and v:IsA("Model") and v:FindFirstChild("Humanoid") and
                        v:FindFirstChild("HumanoidRootPart") then
                        repeat
                            wait()
                            StartMagnet = true
                            NeedAttacking = true
                            if Auto_Haki then
                                if not game.Players.LocalPlayer.Character:FindFirstChild("HasBuso") then
                                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Buso")
                                end
                            end
                            if not game.Players.LocalPlayer.Character:FindFirstChild(Selected_Weapons) then
                                wait()
                                EquipWeapon(Selected_Weapons)
                            end
                            PosMon = v.HumanoidRootPart.CFrame
                            if not Fast_Attack then
                                game:GetService 'VirtualUser':CaptureController()
                                game:GetService 'VirtualUser':Button1Down(Vector2.new(1280, 672))
                            end
                            v.HumanoidRootPart.Size = Vector3.new(60, 60, 60)
                            v.HumanoidRootPart.Transparency = 1
                            v.Humanoid.JumpPower = 0
                            v.Humanoid.WalkSpeed = 0
                            v.HumanoidRootPart.CanCollide = false
                            v.Humanoid:ChangeState(11)
                            toTarget(v.HumanoidRootPart.CFrame * CFrame.new(0, Distance_Auto_Farm, 0))
                        until not Auto_Serpent_Bow or not v.Parent or v.Humanoid.Health <= 0
                        StartMagnet = false
                        NeedAttacking = false
                    end
                end
            else
                toTarget(CFrame.new(5543.86328125, 668.97399902344, 199.0341796875))
            end
        end
    end
end)

fask.spawn(function()
    pcall(function()
        while wait() do
            if (Auto_Serpent_Bow_Hop and Auto_Serpent_Bow) and World3 and
                not game:GetService("ReplicatedStorage"):FindFirstChild("Island Empress [Lv. 1675] [Boss]") and
                not game:GetService("Workspace").Enemies:FindFirstChild("Island Empress [Lv. 1675] [Boss]") then
                ServerFunc:NormalTeleport()
            end
        end
    end)
end)

-- check status 1

Tabs.FindThird:AddParagraph({
    Title = "Elite Hunter Spawn : 🔴"
})

-- fask.spawn(function()
--     while wait() do 
--         pcall(function()
--             if game:GetService("ReplicatedStorage"):FindFirstChild("Diablo [Lv. 1750]") or game:GetService("Workspace").Enemies:FindFirstChild("Diablo [Lv. 1750]") or game:GetService("ReplicatedStorage"):FindFirstChild("Urban [Lv. 1750]") or game:GetService("Workspace").Enemies:FindFirstChild("Urban [Lv. 1750]") or game:GetService("ReplicatedStorage"):FindFirstChild("Deandre [Lv. 1750]") or game:GetService("Workspace").Enemies:FindFirstChild("Deandre [Lv. 1750]") then
--                 SetELS.Title("Elite Hunter Spawn : 🟢")
--             else
--                 SetELS.Title("Elite Hunter : 🔴")
--             end
--         end)
--     end
-- end)

local KillRipIndra = Tabs.FindThird:AddToggle("Auto_Dark_Dagger", {
    Title = "Auto Rip Indra",
    Default = Auto_Dark_Dagger
})
local KillElite = Tabs.FindThird:AddToggle("Auto_Farm_Elite_Hunter", {
    Title = "Auto Farm Elite Hunter",
    Default = Auto_Farm_Elite_Hunter
})
local KillEliteHOP = Tabs.FindThird:AddToggle("Auto_Farm_Elite_Hunter_Hop", {
    Title = "Auto Farm Elite Hunter [HOP]",
    Default = Auto_Farm_Elite_Hunter_Hop
})
local StopAtChalice = Tabs.FindThird:AddToggle("Auto_Dark_Dagger", {
    Title = "Stop At God's Chalice",
    Default = true
})

KillRipIndra:OnChanged(function(value)
    Auto_Dark_Dagger = value
    if value == false then
        toTarget(game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame)
    end
    Save()
end)

KillElite:OnChanged(function(value)
    Auto_Farm_Elite_Hunter = value
    if value == false then
        toTarget(game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame)
    end
    Save()
end)

KillEliteHOP:OnChanged(function(value)
    Auto_Farm_Elite_Hunter_Hop = value
    if value == false then
        toTarget(game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame)
    end
    Save()
end)

StopAtChalice:OnChanged(function(value)
    Stop_God_Chalice = value
    if value == false then
        toTarget(game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame)
    end
    Save()
end)

spawn(function()
    while fask.wait() do
        if Auto_Dark_Dagger then
            if game.Workspace.Enemies:FindFirstChild("rip_indra True Form [Lv. 5000] [Raid Boss]") then
                for i, v in pairs(game.Workspace.Enemies:GetChildren()) do
                    if Auto_Dark_Dagger and v.Name == "rip_indra True Form [Lv. 5000] [Raid Boss]" and
                        v:FindFirstChild("HumanoidRootPart") and v:FindFirstChild("Humanoid") and v.Humanoid.Health > 0 then
                        repeat
                            fask.wait()
                            if (v.HumanoidRootPart.Position -
                                game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 150 then
                                Farmtween = toTarget(v.HumanoidRootPart.CFrame * CFrame.new(0, 10, 10))
                            elseif (v.HumanoidRootPart.Position -
                                game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 150 then
                                if Farmtween then
                                    Farmtween:Stop()
                                end
                                EquipWeapon()
                                NeedAttacking = true
                                if Auto_Haki then
                                    if not game.Players.LocalPlayer.Character:FindFirstChild("HasBuso") then
                                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Buso")
                                    end
                                end
                                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.HumanoidRootPart.CFrame *
                                                                                                 CFrame.new(0, 10, 10)
                            end
                        until not Auto_Dark_Dagger or not v.Parent or v.Humanoid.Health <= 0
                        NeedAttacking = false
                    end
                end
            elseif game.ReplicatedStorage:FindFirstChild("rip_indra True Form [Lv. 5000] [Raid Boss]") then
                local CFrameBoss = CFrame.new(-5359, 424, -2735)
                if (CFrameBoss.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 150 then
                    Questtween = toTarget(CFrameBoss)
                elseif (CFrameBoss.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <=
                    150 then
                    if Questtween then
                        Questtween:Stop()
                    end
                    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrameBoss
                end
            elseif game.Players.LocalPlayer.Backpack:FindFirstChild("God's Chalice") or
                game.Players.LocalPlayer.Character:FindFirstChild("God's Chalice") then
                fask.wait(0.25)
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("activateColor", "Winter Sky")
                fask.wait(0.25)
                ChaliceTween = toTarget(CFrame.new(-5420.16602, 1084.9657, -2666.8208, 0.390717864, 0, 0.92051065, 0, 1,
                    0, -0.92051065, 0, 0.390717864))
                ChaliceTween:Wait()
                fask.wait(0.25)
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("activateColor", "Pure Red")
                fask.wait(0.25)
                ChaliceTween = toTarget(CFrame.new(-5414.41357, 309.865753, -2212.45776, 0.374604106, -0, -0.92718488,
                    0, 1, -0, 0.92718488, 0, 0.374604106))
                ChaliceTween:Wait()
                fask.wait(0.25)
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("activateColor", "Snow White")
                fask.wait(0.25)
                ChaliceTween = toTarget(CFrame.new(-4971.47559, 331.565765, -3720.02954, -0.92051065, 0, 0.390717506, 0,
                    1, 0, -0.390717506, 0, -0.92051065))
                ChaliceTween:Wait()
                fask.wait(0.25)
                EquipWeapon("God's Chalice")
                ChaliceTween = toTarget(CFrame.new(-5560.27295, 313.915466, -2663.89795))
                ChaliceTween:Wait()
                fask.wait(0.5)
                EquipWeapon("God's Chalice")
                fask.wait(0.2)
            elseif not inmyselfss("Holy Torch") and
                (game.Workspace.Enemies:FindFirstChild("rip_indra True Form [Lv. 5000] [Raid Boss]") or
                    game.ReplicatedStorage:FindFirstChild("rip_indra True Form [Lv. 5000] [Raid Boss]")) then
                ChaliceTween = toTarget(CFrame.new(5154.17676, 141.786423, 911.046326))
                ChaliceTween:Wait()
                fask.wait(0.2)
                ChaliceTween = toTarget(CFrame.new(5148.03613, 162.352493, 910.548218))
                ChaliceTween:Wait()
                fask.wait(0.5)
            elseif not inmyselfss("God's Chalice") and (game.Workspace.Enemies:FindFirstChild("Deandre [Lv. 1750]") or
                game.Workspace.Enemies:FindFirstChild("Urban [Lv. 1750]") or
                game.Workspace.Enemies:FindFirstChild("Diablo [Lv. 1750]") or
                game.ReplicatedStorage:FindFirstChild("Deandre [Lv. 1750]") or
                game.ReplicatedStorage:FindFirstChild("Urban [Lv. 1750]") or
                game.ReplicatedStorage:FindFirstChild("Diablo [Lv. 1750]")) then
                if game.Players.LocalPlayer.PlayerGui.Main.Quest.Visible == true then
                    if string.find(game.Players.LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text,
                        "Diablo") or
                        string.find(game.Players.LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text,
                            "Urban") or
                        string.find(game.Players.LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text,
                            "Deandre") then
                        for i, v in pairs(game:GetService("ReplicatedStorage"):GetChildren()) do
                            if (string.find(v.Name, "Diablo") or string.find(v.Name, "Urban") or
                                string.find(v.Name, "Deandre")) then
                                TushitaTween = toTarget(v.HumanoidRootPart.Position, v.HumanoidRootPart.CFrame)
                                if (v.HumanoidRootPart.Position -
                                    game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude <= 250 then
                                    if TushitaTween then
                                        TushitaTween:Stop()
                                    end
                                    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.HumanoidRootPart
                                                                                                     .CFrame
                                end
                            end
                        end
                        for i, v in pairs(game.Workspace.Enemies:GetChildren()) do
                            if Auto_Dark_Dagger and
                                (string.find(v.Name, "Diablo") or string.find(v.Name, "Urban") or
                                    string.find(v.Name, "Deandre")) and v:FindFirstChild("Humanoid") and
                                v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
                                repeat
                                    fask.wait()
                                    if (v.HumanoidRootPart.Position -
                                        game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude > 300 then
                                        Farmtween = toTarget(v.HumanoidRootPart.Position, v.HumanoidRootPart.CFrame)
                                    elseif (v.HumanoidRootPart.Position -
                                        game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude <= 300 then
                                        if Farmtween then
                                            Farmtween:Stop()
                                        end
                                        EquipWeapon(Selected_Weapons)
                                        NeedAttacking = true
                                        toAroundTarget(v.HumanoidRootPart.CFrame)
                                    end
                                until not Auto_Dark_Dagger or not v.Parent or v.Humanoid.Health <= 0
                                NeedAttacking = false
                            end

                        end
                    else
                        local string_1 = "EliteHunter";
                        local Target = game:GetService("ReplicatedStorage").Remotes["CommF_"];
                        Target:InvokeServer(string_1);
                    end
                else
                    local string_1 = "EliteHunter";
                    local Target = game:GetService("ReplicatedStorage").Remotes["CommF_"];
                    Target:InvokeServer(string_1);
                end
            end
        else
            break
        end
    end
end)

spawn(function()
    while wait() do
        pcall(function()
            if Stop_God_Chalice and Auto_Farm_Elite_Hunter then
                if game.Players.LocalPlayer.Backpack:FindFirstChild("God's Chalice") or
                    game.Players.LocalPlayer.Character:FindFirstChild("God's Chalice") then
                    Auto_Farm_Elite_Hunter = false
                    Auto_Farm_Elite_Hunter_Hop = false
                end
            end
        end)
    end
end)

function QuestVis()
    return game.Players.LocalPlayer.PlayerGui.Main.Quest.Visible
end

spawn(function()
    while wait() do
        pcall(function()
            if Auto_Farm_Elite_Hunter then
                -- BodyClip()
                -- _G.Noclip = true
                local QuestTitle = game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle
                                       .Title.Text
                if game:GetService("ReplicatedStorage"):FindFirstChild("Diablo [Lv. 1750]") or
                    game:GetService("Workspace").Enemies:FindFirstChild("Diablo [Lv. 1750]") or
                    game:GetService("ReplicatedStorage"):FindFirstChild("Urban [Lv. 1750]") or
                    game:GetService("Workspace").Enemies:FindFirstChild("Urban [Lv. 1750]") or
                    game:GetService("ReplicatedStorage"):FindFirstChild("Deandre [Lv. 1750]") or
                    game:GetService("Workspace").Enemies:FindFirstChild("Deandre [Lv. 1750]") then
                    if not QuestVis() then
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("EliteHunter")
                    elseif QuestVis() then
                        if game:GetService("Workspace").Enemies:FindFirstChild("Diablo [Lv. 1750]") or
                            game:GetService("Workspace").Enemies:FindFirstChild("Deandre [Lv. 1750]") or
                            game:GetService("Workspace").Enemies:FindFirstChild("Urban [Lv. 1750]") then
                            for i, v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                                if v.Name == "Diablo [Lv. 1750]" or v.Name == "Deandre [Lv. 1750]" or v.Name ==
                                    "Urban [Lv. 1750]" then
                                    if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and
                                        v.Humanoid.Health > 0 then
                                        repeat
                                            wait()
                                            NeedAttacking = true
                                            StartMagnet = true
                                            if Auto_Haki then
                                                if not game.Players.LocalPlayer.Character:FindFirstChild("HasBuso") then
                                                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(
                                                        "Buso")
                                                end
                                            end
                                            if not game.Players.LocalPlayer.Character:FindFirstChild(Selected_Weapons) then
                                                wait()
                                                EquipWeapon(Selected_Weapons)
                                            end
                                            PosMon = v.HumanoidRootPart.CFrame
                                            if not Fast_Attack then
                                                game:GetService 'VirtualUser':CaptureController()
                                                game:GetService 'VirtualUser':Button1Down(Vector2.new(1280, 672))
                                            end
                                            v.HumanoidRootPart.Size = Vector3.new(60, 60, 60)
                                            v.HumanoidRootPart.Transparency = 1
                                            v.Humanoid.JumpPower = 0
                                            v.Humanoid.WalkSpeed = 0
                                            v.HumanoidRootPart.CanCollide = false
                                            v.Humanoid:ChangeState(11)
                                            toTarget(v.HumanoidRootPart.CFrame * CFrame.new(0, Distance_Auto_Farm, 0))
                                        until Auto_Farm_Elite_Hunter == false or v.Humanoid.Health <= 0 or not v.Parent
                                        NeedAttacking = false
                                        StartMagnet = false
                                    end
                                end
                            end
                        else
                            if game:GetService("ReplicatedStorage"):FindFirstChild("Diablo [Lv. 1750]") then
                                toTarget(
                                    game:GetService("ReplicatedStorage"):FindFirstChild("Diablo [Lv. 1750]").HumanoidRootPart
                                        .CFrame * CFrame.new(0, 25, 5))
                            end
                            if game:GetService("ReplicatedStorage"):FindFirstChild("Deandre [Lv. 1750]") then
                                toTarget(
                                    game:GetService("ReplicatedStorage"):FindFirstChild("Deandre [Lv. 1750]").HumanoidRootPart
                                        .CFrame * CFrame.new(0, 25, 5))
                            end
                            if game:GetService("ReplicatedStorage"):FindFirstChild("Urban [Lv. 1750]") then
                                toTarget(
                                    game:GetService("ReplicatedStorage"):FindFirstChild("Urban [Lv. 1750]").HumanoidRootPart
                                        .CFrame * CFrame.new(0, 25, 5))
                            end
                        end
                    end
                else
                    if Stop_God_Chalice and Auto_Farm_Elite_Hunter and Auto_Farm_Elite_Hunter_Hop then
                        if game.Players.LocalPlayer.Backpack:FindFirstChild("God's Chalice") or
                            game.Players.LocalPlayer.Character:FindFirstChild("God's Chalice") then
                            -- noting
                        else
                            while wait() do
                                pcall(function()
                                    ServerFunc:NormalTeleport()
                                end)
                            end
                        end
                    else
                        if Auto_Farm_Elite_Hunter_Hop then
                            while wait() do
                                pcall(function()
                                    ServerFunc:NormalTeleport()
                                end)
                            end
                        end
                    end
                end
            end
        end)
    end
end)

Tabs.FindThird:AddParagraph({
    Title = "Cake & Bone",
    Content = "Auto Farm Cake & Bone GG Easy Noob."
})

-- local Mob_Kill_Cake_Prince = Page2:Label("Total : N/A")

-- fask.spawn(function()
--     while wait(.1) do
--         local caketotal = string.match(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CakePrinceSpawner"),"%d+")
--         if caketotal then
--             Mob_Kill_Cake_Prince:Set("Total : "..tostring(caketotal))
--         else
--             Mob_Kill_Cake_Prince:Set("Katakuri : 🟢")
--         end
--     end
-- end)

local GetQuestCakeandBone = Tabs.FindThird:AddToggle("AutoQuest", {
    Title = "Auto Quest Cake & Bones",
    Default = true
})
local CakeFarm = Tabs.FindThird:AddToggle("Auto_Cake_Prince", {
    Title = "Auto Farm Cake Princess",
    Default = Auto_Cake_Prince
})
local BoneFarm = Tabs.FindThird:AddToggle("Farm_Bone", {
    Title = "Auto Farm Bones",
    Default = Farm_Bone
})

GetQuestCakeandBone:OnChanged(function(value)
    AutoQuest = value
end)

CakeFarm:OnChanged(function(value)
    Auto_Cake_Prince = value
    Save()
    if World3 then
        fask.spawn(LPH_JIT_MAX(function()
            while fask.wait() do
                if Auto_Cake_Prince then
                    xpcall(function()
                        local GetQuestTitle = game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container
                                                  .QuestTitle.Title
                        local GetQuest = game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest
                        local MyLevel = game.Players.LocalPlayer.Data.Level.Value
                        local LevelFarm = 1

                        local Monster = "Cookie Crafter [Lv. 2200]"
                        local NameQuest = "CakeQuest1"

                        local LevelQuest = 1
                        local NameCheckQuest = "Cookie Crafter"

                        local CFrameMyMon = CFrame.new(-2365, 38, -12099)

                        local CFrameQuest = CFrame.new(-2020, 38, -12025)

                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CakePrinceSpawner")
                        if not string.find(GetQuestTitle.Text, NameCheckQuest) and AutoQuest == true then
                            _F("AbandonQuest");
                        end
                        if GetQuest.Visible == false and AutoQuest == true then
                            NeedAttacking = false
                            StartMagnet = false
                            Questtween = toTarget(CFrameQuest)
                            if (CFrameQuest.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude <=
                                150 then
                                if Questtween then
                                    Questtween:Stop()
                                end
                                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrameQuest
                                fask.wait(0.95)
                                _F("StartQuest", NameQuest, LevelQuest)
                            end
                        elseif GetQuest.Visible == true or AutoQuest == false then
                            if game:GetService("ReplicatedStorage"):FindFirstChild("Cake Prince [Lv. 2300] [Raid Boss]") or
                                game:GetService("Workspace").Enemies:FindFirstChild("Cake Prince [Lv. 2300] [Raid Boss]") then
                                if game:GetService("Workspace").Enemies:FindFirstChild(
                                    "Cake Prince [Lv. 2300] [Raid Boss]") then
                                    for i, v in pairs(game.Workspace.Enemies:GetChildren()) do
                                        if Auto_Cake_Prince and v.Name == "Cake Prince [Lv. 2300] [Raid Boss]" and
                                            v:FindFirstChild("HumanoidRootPart") and v:FindFirstChild("Humanoid") and
                                            v.Humanoid.Health > 0 then
                                            repeat
                                                fask.wait()
                                                if (v.HumanoidRootPart.Position -
                                                    game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude >
                                                    300 then
                                                    Farmtween =
                                                        toTarget(v.HumanoidRootPart.Position, v.HumanoidRootPart.CFrame)
                                                elseif (v.HumanoidRootPart.Position -
                                                    game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude <=
                                                    300 then
                                                    if Farmtween then
                                                        Farmtween:Stop()
                                                    end
                                                    StartMagnet = true
                                                    NeedAttacking = true
                                                    if Auto_Haki then
                                                        if not game.Players.LocalPlayer.Character:FindFirstChild(
                                                            "HasBuso") then
                                                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(
                                                                "Buso")
                                                        end
                                                    end
                                                    if not game.Players.LocalPlayer.Character:FindFirstChild(
                                                        Selected_Weapons) then
                                                        EquipWeapon(Selected_Weapons)
                                                    end
                                                    PosMon = v.HumanoidRootPart.CFrame
                                                    if not Fast_Attack then
                                                        game:GetService 'VirtualUser':CaptureController()
                                                        game:GetService 'VirtualUser'
                                                            :Button1Down(Vector2.new(1280, 672))
                                                    end
                                                    v.HumanoidRootPart.Size = Vector3.new(60, 60, 60)
                                                    v.HumanoidRootPart.Transparency = 1
                                                    v.Humanoid.JumpPower = 0
                                                    v.Humanoid.WalkSpeed = 0
                                                    v.HumanoidRootPart.CanCollide = false
                                                    v.Humanoid:ChangeState(11)
                                                    toTarget(v.HumanoidRootPart.CFrame *
                                                                 CFrame.new(0, Distance_Auto_Farm, 25))
                                                end
                                            until not Auto_Cake_Prince or not v.Parent or v.Humanoid.Health <= 0 or
                                                game:GetService("ReplicatedStorage")
                                                    :FindFirstChild("Cake Prince [Lv. 2300] [Raid Boss]")
                                            NeedAttacking = false
                                        end
                                    end
                                else
                                    if game:GetService("Workspace").Map.CakeLoaf.BigMirror.Other.Transparency == 0 then
                                        NeedAttacking = false
                                        if tween then
                                            tween:Cancel()
                                        end
                                        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(
                                            -2151.82153, 149.315704, -12404.9053) *
                                                                                                         CFrame.new(
                                                math.random(-5, 5), math.random(-5, 5), math.random(-5, 5))
                                        fask.wait(.1)
                                    end
                                end
                            else
                                if game:GetService("Workspace").Enemies:FindFirstChild("Cookie Crafter [Lv. 2200]") or
                                    game:GetService("Workspace").Enemies:FindFirstChild("Cake Guard [Lv. 2225]") or
                                    game:GetService("Workspace").Enemies:FindFirstChild("Baking Staff [Lv. 2250]") or
                                    game:GetService("Workspace").Enemies:FindFirstChild("Head Baker [Lv. 2275]") then
                                    for i, v in pairs(game.Workspace.Enemies:GetChildren()) do
                                        if 0 and
                                            (v.Name == "Cookie Crafter [Lv. 2200]" or v.Name == "Cake Guard [Lv. 2225]" or
                                                v.Name == "Baking Staff [Lv. 2250]" or v.Name == "Head Baker [Lv. 2275]") and
                                            v:FindFirstChild("HumanoidRootPart") and v:FindFirstChild("Humanoid") and
                                            v.Humanoid.Health > 0 then
                                            repeat
                                                fask.wait()
                                                if (v.HumanoidRootPart.Position -
                                                    game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude >
                                                    300 then
                                                    Farmtween =
                                                        toTarget(v.HumanoidRootPart.Position, v.HumanoidRootPart.CFrame)
                                                elseif (v.HumanoidRootPart.Position -
                                                    game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude <=
                                                    300 then
                                                    if Farmtween then
                                                        Farmtween:Stop()
                                                    end
                                                    StartMagnet = true
                                                    NeedAttacking = true
                                                    StartMagnet = true
                                                    NeedAttacking = true
                                                    if Auto_Haki then
                                                        if not game.Players.LocalPlayer.Character:FindFirstChild(
                                                            "HasBuso") then
                                                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(
                                                                "Buso")
                                                        end
                                                    end
                                                    if not game.Players.LocalPlayer.Character:FindFirstChild(
                                                        Selected_Weapons) then
                                                        EquipWeapon(Selected_Weapons)
                                                    end
                                                    PosMon = v.HumanoidRootPart.CFrame
                                                    if not Fast_Attack then
                                                        game:GetService 'VirtualUser':CaptureController()
                                                        game:GetService 'VirtualUser'
                                                            :Button1Down(Vector2.new(1280, 672))
                                                    end
                                                    v.HumanoidRootPart.Size = Vector3.new(60, 60, 60)
                                                    v.HumanoidRootPart.Transparency = 1
                                                    v.Humanoid.JumpPower = 0
                                                    v.Humanoid.WalkSpeed = 0
                                                    v.HumanoidRootPart.CanCollide = false
                                                    v.Humanoid:ChangeState(11)
                                                    toTarget(v.HumanoidRootPart.CFrame *
                                                                 CFrame.new(0, Distance_Auto_Farm, 25))
                                                end
                                            until not Auto_Cake_Prince or not v.Parent or v.Humanoid.Health <= 0
                                            NeedAttacking = false
                                            StartMagnet = false
                                        end
                                    end
                                else
                                    StartMagnet = false
                                    NeedAttacking = false
                                    Questtween = toTarget(CFrame.new(-2077, 252, -12373).Position,
                                        CFrame.new(-2077, 252, -12373))
                                    if (CFrame.new(-2077, 252, -12373).Position -
                                        game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude <= 300 then
                                        if Questtween then
                                            Questtween:Stop()
                                        end
                                        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-2077,
                                            252, -12373)
                                    end
                                end
                            end
                        end
                    end, print)
                else
                    -- break
                end
            end
        end))
    end
end)

BoneFarm:OnChanged(function(value)
    Farm_Bone = value
    if value == false then
        toTarget(game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame)
    end
    Save()
    fask.spawn(LPH_JIT_MAX(function()
        while fask.wait() do
            xpcall(function()
                if Farm_Bone then
                    local GetQuestTitle = game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container
                                              .QuestTitle.Title
                    local GetQuest = game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest
                    local MyLevel = game.Players.LocalPlayer.Data.Level.Value
                    local LevelFarm = 1

                    local Monster = "Living Zombie [Lv. 2000]"
                    local NameQuest = "HauntedQuest1"

                    local LevelQuest = 2
                    local NameCheckQuest = "Living Zombie"

                    local CFrameMyMon = CFrame.new(-10144, 140, 5932)

                    local CFrameQuest = CFrame.new(-9482, 142, 5567)

                    if not string.find(GetQuestTitle.Text, NameCheckQuest) and AutoQuest == true then
                        _F("AbandonQuest");
                    end
                    if GetQuest.Visible == false and AutoQuest == true then
                        NeedAttacking = false
                        StartMagnet = false
                        Questtween = toTarget(CFrameQuest)
                        if (CFrameQuest.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude <=
                            150 then
                            if Questtween then
                                Questtween:Stop()
                            end
                            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrameQuest
                            fask.wait(0.1)
                            _F("StartQuest", NameQuest, LevelQuest)
                        end
                    elseif GetQuest.Visible == true or AutoQuest == false then
                        if game:GetService("Workspace").Enemies:FindFirstChild("Reborn Skeleton [Lv. 1975]") or
                            game:GetService("Workspace").Enemies:FindFirstChild("Living Zombie [Lv. 2000]") or
                            game:GetService("Workspace").Enemies:FindFirstChild("Demonic Soul [Lv. 2025]") or
                            game:GetService("Workspace").Enemies:FindFirstChild("Posessed Mummy [Lv. 2050]") then
                            for i, v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                                if v.Name == "Reborn Skeleton [Lv. 1975]" or v.Name == "Living Zombie [Lv. 2000]" or
                                    v.Name == "Demonic Soul [Lv. 2025]" or v.Name == "Posessed Mummy [Lv. 2050]" then
                                    if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and
                                        v.Humanoid.Health > 0 then
                                        repeat
                                            fask.wait()
                                            if (v.HumanoidRootPart.Position -
                                                game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude >
                                                150 then
                                                Farmtween = toTarget(v.HumanoidRootPart.CFrame * CFrame.new(0, 10, 10))
                                            elseif (v.HumanoidRootPart.Position -
                                                game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <=
                                                150 then
                                                if Farmtween then
                                                    Farmtween:Stop()
                                                end
                                                StartMagnet = true
                                                NeedAttacking = true
                                                if Auto_Haki then
                                                    if not game.Players.LocalPlayer.Character:FindFirstChild("HasBuso") then
                                                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(
                                                            "Buso")
                                                    end
                                                end
                                                if not game.Players.LocalPlayer.Character:FindFirstChild(
                                                    Selected_Weapons) then
                                                    EquipWeapon(Selected_Weapons)
                                                end
                                                PosMon = v.HumanoidRootPart.CFrame
                                                if not Fast_Attack then
                                                    game:GetService 'VirtualUser':CaptureController()
                                                    game:GetService 'VirtualUser':Button1Down(Vector2.new(1280, 672))
                                                end
                                                v.HumanoidRootPart.Size = Vector3.new(60, 60, 60)
                                                v.HumanoidRootPart.Transparency = 1
                                                v.Humanoid.JumpPower = 0
                                                v.Humanoid.WalkSpeed = 0
                                                v.HumanoidRootPart.CanCollide = false
                                                v.Humanoid:ChangeState(11)
                                                toAroundTarget(v.HumanoidRootPart.CFrame)
                                            end
                                        until not Farm_Bone or v.Humanoid.Health <= 0 or not v.Parent or
                                            v.Humanoid.Health <= 0
                                        StartMagnet = false
                                        NeedAttacking = false
                                    end
                                end
                            end
                        end
                    else
                        toTarget(CFrame.new(-9504.8564453125, 172.14292907714844, 6057.259765625))
                    end
                end
            end, print)
        end
    end))
end)

Tabs.FindThird:AddParagraph({
    Title = "Yama & Tushita",
    Content = "Farm Yama and Tushita Quest"
})

local TushitaQuest = Tabs.FindThird:AddToggle("AutoTushita", {
    Title = "Auto Tushita",
    Default = AutoTushita
})
local TushitaQuestHOP = Tabs.FindThird:AddToggle("AutoTushitaHop", {
    Title = "Auto Tushita [HOP]",
    Default = AutoTushitaHop
})

local YamaQuest = Tabs.FindThird:AddToggle("AutoYama", {
    Title = "Auto Yama",
    Default = AutoYama
})
local YamaQuestHOP = Tabs.FindThird:AddToggle("AutoYamaHOP", {
    Title = "Auto Yama [HOP]",
    Default = AutoYamaHOP
})

TushitaQuest:OnChanged(function(starts)
    if World3 then
        AutoTushita = starts
        Save()
        spawn(function()
            while fask.wait() do
                if AutoTushita then
                    if game.Players.localPlayer.Data.Level.Value > 2000 and
                        (CheckHakiColor("Winter Sky") and CheckHakiColor("Pure Red") and CheckHakiColor("Snow White")) or
                        CheckButtonColorOpen() or
                        not game:GetService("Workspace").Map.Turtle:FindFirstChild("TushitaGate") or
                        (game.Workspace.Enemies:FindFirstChild("rip_indra True Form [Lv. 5000] [Raid Boss]") or
                            game.ReplicatedStorage:FindFirstChild("rip_indra True Form [Lv. 5000] [Raid Boss]")) then
                        if (game.Workspace.Enemies:FindFirstChild("Longma [Lv. 2000] [Boss]") or
                            game.ReplicatedStorage:FindFirstChild("Longma [Lv. 2000] [Boss]")) and
                            not game:GetService("Workspace").Map.Turtle:FindFirstChild("TushitaGate") then
                            if game.Workspace.Enemies:FindFirstChild("Longma [Lv. 2000] [Boss]") then
                                if RipTween then
                                    RipTween:Stop()
                                end
                                for i, v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                                    if AutoTushita and v.Name == "Longma [Lv. 2000] [Boss]" and
                                        v:FindFirstChild("HumanoidRootPart") and v:FindFirstChild("Humanoid") and
                                        v.Humanoid.Health > 0 then
                                        repeat
                                            fask.wait()
                                            if v:FindFirstChild("HumanoidRootPart") and v:FindFirstChild("Humanoid") and
                                                (v.HumanoidRootPart.Position -
                                                    game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude >
                                                150 then
                                                Farmtween = toTarget(v.HumanoidRootPart.Position,
                                                    v.HumanoidRootPart.CFrame)
                                            elseif v:FindFirstChild("HumanoidRootPart") and v:FindFirstChild("Humanoid") and
                                                (v.HumanoidRootPart.Position -
                                                    game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude <=
                                                150 then
                                                EquipWeapon(Selected_Weapons)
                                                if Farmtween then
                                                    Farmtween:Stop()
                                                end
                                                NeedAttacking = true
                                                toAroundTarget(v.HumanoidRootPart.CFrame)
                                            end
                                        until not AutoTushita or not v.Parent or v.Humanoid.Health <= 0
                                        NeedAttacking = false
                                    end
                                end
                            elseif game.ReplicatedStorage:FindFirstChild("Longma [Lv. 2000] [Boss]") then
                                RipTween = toTarget(CFrame.new(-10171.7051, 406.981995, -9552.31738))
                                NeedAttacking = false
                            end
                        elseif game.Players.LocalPlayer.Backpack:FindFirstChild("Holy Torch") or
                            game.Players.LocalPlayer.Character:FindFirstChild("Holy Torch") then
                            ChaliceTween = toTarget(CFrame.new(5148.03613, 162.352493, 910.548218))
                            ChaliceTween:Wait()
                            fask.wait(0.5)
                            EquipWeapon("Holy Torch")
                            fask.wait(0.2)
                            HolyTween = toTarget(CFrame.new(-10752.7695, 412.229523, -9366.36328))
                            HolyTween:Wait()
                            fask.wait(0.4)
                            HolyTween = toTarget(CFrame.new(-11673.4111, 331.749023, -9474.34668))
                            HolyTween:Wait()
                            fask.wait(0.4)
                            HolyTween = toTarget(CFrame.new(-12133.3389, 519.47522, -10653.1904))
                            HolyTween:Wait()
                            fask.wait(0.4)
                            HolyTween = toTarget(CFrame.new(-13336.5, 485.280396, -6983.35254))
                            HolyTween:Wait()
                            fask.wait(0.4)
                            HolyTween = toTarget(CFrame.new(-13487.4131, 334.84845, -7926.34863))
                            HolyTween:Wait()
                            fask.wait(1)
                        elseif game.Players.LocalPlayer.Backpack:FindFirstChild("God's Chalice") or
                            game.Players.LocalPlayer.Character:FindFirstChild("God's Chalice") then
                            fask.wait(0.25)
                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("activateColor",
                                "Winter Sky")
                            fask.wait(0.25)
                            ChaliceTween = toTarget(CFrame.new(-5420.16602, 1084.9657, -2666.8208, 0.390717864, 0,
                                0.92051065, 0, 1, 0, -0.92051065, 0, 0.390717864))
                            ChaliceTween:Wait()
                            fask.wait(0.25)
                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("activateColor", "Pure Red")
                            fask.wait(0.25)
                            ChaliceTween = toTarget(CFrame.new(-5414.41357, 309.865753, -2212.45776, 0.374604106, -0,
                                -0.92718488, 0, 1, -0, 0.92718488, 0, 0.374604106))
                            ChaliceTween:Wait()
                            fask.wait(0.25)
                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("activateColor",
                                "Snow White")
                            fask.wait(0.25)
                            ChaliceTween = toTarget(CFrame.new(-4971.47559, 331.565765, -3720.02954, -0.92051065, 0,
                                0.390717506, 0, 1, 0, -0.390717506, 0, -0.92051065))
                            ChaliceTween:Wait()
                            fask.wait(0.25)
                            EquipWeapon("God's Chalice")
                            ChaliceTween = toTarget(CFrame.new(-5560.27295, 313.915466, -2663.89795))
                            ChaliceTween:Wait()
                            fask.wait(0.5)
                            EquipWeapon("God's Chalice")
                            fask.wait(0.2)
                        elseif not inmyselfss("Holy Torch") and
                            (game.Workspace.Enemies:FindFirstChild("rip_indra True Form [Lv. 5000] [Raid Boss]") or
                                game.ReplicatedStorage:FindFirstChild("rip_indra True Form [Lv. 5000] [Raid Boss]")) then
                            ChaliceTween = toTarget(CFrame.new(5154.17676, 141.786423, 911.046326))
                            ChaliceTween:Wait()
                            fask.wait(0.2)
                            ChaliceTween = toTarget(CFrame.new(5148.03613, 162.352493, 910.548218))
                            ChaliceTween:Wait()
                            fask.wait(0.5)
                        elseif not inmyselfss("God's Chalice") and
                            (game.Workspace.Enemies:FindFirstChild("Deandre [Lv. 1750]") or
                                game.Workspace.Enemies:FindFirstChild("Urban [Lv. 1750]") or
                                game.Workspace.Enemies:FindFirstChild("Diablo [Lv. 1750]") or
                                game.ReplicatedStorage:FindFirstChild("Deandre [Lv. 1750]") or
                                game.ReplicatedStorage:FindFirstChild("Urban [Lv. 1750]") or
                                game.ReplicatedStorage:FindFirstChild("Diablo [Lv. 1750]")) then
                            if game.Players.LocalPlayer.PlayerGui.Main.Quest.Visible == true then
                                if string.find(game.Players.LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title
                                                   .Text, "Diablo") or
                                    string.find(
                                        game.Players.LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text,
                                        "Urban") or
                                    string.find(
                                        game.Players.LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text,
                                        "Deandre") then
                                    for i, v in pairs(game:GetService("ReplicatedStorage"):GetChildren()) do
                                        if (string.find(v.Name, "Diablo") or string.find(v.Name, "Urban") or
                                            string.find(v.Name, "Deandre")) then
                                            TushitaTween = toTarget(v.HumanoidRootPart.Position,
                                                v.HumanoidRootPart.CFrame)
                                            if (v.HumanoidRootPart.Position -
                                                game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude <=
                                                250 then
                                                if TushitaTween then
                                                    TushitaTween:Stop()
                                                end
                                                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame =
                                                    v.HumanoidRootPart.CFrame
                                            end
                                        end
                                    end
                                    for i, v in pairs(game.Workspace.Enemies:GetChildren()) do
                                        if AutoTushita and
                                            (string.find(v.Name, "Diablo") or string.find(v.Name, "Urban") or
                                                string.find(v.Name, "Deandre")) and v:FindFirstChild("Humanoid") and
                                            v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
                                            repeat
                                                fask.wait()
                                                if (v.HumanoidRootPart.Position -
                                                    game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude >
                                                    300 then
                                                    Farmtween =
                                                        toTarget(v.HumanoidRootPart.Position, v.HumanoidRootPart.CFrame)
                                                elseif (v.HumanoidRootPart.Position -
                                                    game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude <=
                                                    300 then
                                                    if Farmtween then
                                                        Farmtween:Stop()
                                                    end
                                                    EquipWeapon(Selected_Weapons)
                                                    NeedAttacking = true
                                                    toAroundTarget(v.HumanoidRootPart.CFrame)
                                                end
                                            until not AutoTushita or not v.Parent or v.Humanoid.Health <= 0
                                            NeedAttacking = false
                                        end

                                    end
                                else
                                    local string_1 = "EliteHunter";
                                    local Target = game:GetService("ReplicatedStorage").Remotes["CommF_"];
                                    Target:InvokeServer(string_1);
                                end
                            else
                                local string_1 = "EliteHunter";
                                local Target = game:GetService("ReplicatedStorage").Remotes["CommF_"];
                                Target:InvokeServer(string_1);
                            end
                        end
                    end
                else
                    break
                end
            end
        end)
    end
end)

TushitaQuestHOP:OnChanged(function(starts)
    if World3 then
        AutoTushita = starts
        AutoTushitaHop = starts
        Save()
        spawn(function()
            while fask.wait() do
                if AutoTushitaHop then
                    if game.Players.localPlayer.Data.Level.Value > 2000 and
                        (CheckHakiColor("Winter Sky") and CheckHakiColor("Pure Red") and CheckHakiColor("Snow White")) or
                        not game:GetService("Workspace").Map.Turtle:FindFirstChild("TushitaGate") or
                        (game.Workspace.Enemies:FindFirstChild("rip_indra True Form [Lv. 5000] [Raid Boss]") or
                            game.ReplicatedStorage:FindFirstChild("rip_indra True Form [Lv. 5000] [Raid Boss]")) then
                        if AutoTushitaHop and not game:GetService("Workspace").Map.Turtle:FindFirstChild("TushitaGate") and
                            not game.Workspace.Enemies:FindFirstChild("Longma [Lv. 2000] [Boss]") and
                            not game.ReplicatedStorage:FindFirstChild("Longma [Lv. 2000] [Boss]") then
                            ServerFunc:TeleportFast()
                        elseif (game.Workspace.Enemies:FindFirstChild("Longma [Lv. 2000] [Boss]") or
                            game.ReplicatedStorage:FindFirstChild("Longma [Lv. 2000] [Boss]")) and
                            game:GetService("Workspace").Map.Turtle.TushitaGate:FindFirstChild("TushitaGate")
                                .Transparency == 1 then
                            if game.Workspace.Enemies:FindFirstChild("Longma [Lv. 2000] [Boss]") then
                                if RipTween then
                                    RipTween:Stop()
                                end
                                for i, v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                                    if AutoTushita and v.Name == "Longma [Lv. 2000] [Boss]" and
                                        v:FindFirstChild("HumanoidRootPart") and v:FindFirstChild("Humanoid") and
                                        v.Humanoid.Health > 0 then
                                        repeat
                                            fask.wait()
                                            if v:FindFirstChild("HumanoidRootPart") and v:FindFirstChild("Humanoid") and
                                                (v.HumanoidRootPart.Position -
                                                    game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude >
                                                150 then
                                                Farmtween = toTarget(v.HumanoidRootPart.Position,
                                                    v.HumanoidRootPart.CFrame)
                                            elseif v:FindFirstChild("HumanoidRootPart") and v:FindFirstChild("Humanoid") and
                                                (v.HumanoidRootPart.Position -
                                                    game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude <=
                                                150 then
                                                EquipWeapon(Selected_Weapons)
                                                if Farmtween then
                                                    Farmtween:Stop()
                                                end
                                                NeedAttacking = true
                                                toAroundTarget(v.HumanoidRootPart.CFrame)
                                            end
                                        until not AutoTushita or not v.Parent or v.Humanoid.Health <= 0
                                        NeedAttacking = false
                                    end
                                end
                            elseif game.ReplicatedStorage:FindFirstChild("Longma [Lv. 2000] [Boss]") then
                                RipTween = toTarget(CFrame.new(-10171.7051, 406.981995, -9552.31738))
                                NeedAttacking = false
                            end
                        elseif game.Players.LocalPlayer.Backpack:FindFirstChild("Holy Torch") or
                            game.Players.LocalPlayer.Character:FindFirstChild("Holy Torch") then
                            ChaliceTween = toTarget(CFrame.new(5148.03613, 162.352493, 910.548218))
                            ChaliceTween:Wait()
                            fask.wait(0.5)
                            EquipWeapon("Holy Torch")
                            fask.wait(0.2)
                            HolyTween = toTarget(CFrame.new(-10752.7695, 412.229523, -9366.36328))
                            HolyTween:Wait()
                            fask.wait(0.4)
                            HolyTween = toTarget(CFrame.new(-11673.4111, 331.749023, -9474.34668))
                            HolyTween:Wait()
                            fask.wait(0.4)
                            HolyTween = toTarget(CFrame.new(-12133.3389, 519.47522, -10653.1904))
                            HolyTween:Wait()
                            fask.wait(0.4)
                            HolyTween = toTarget(CFrame.new(-13336.5, 485.280396, -6983.35254, 0.912677109))
                            HolyTween:Wait()
                            fask.wait(0.4)
                            HolyTween = toTarget(CFrame.new(-13487.4131, 334.84845, -7926.34863))
                            HolyTween:Wait()
                            fask.wait(1)
                        elseif game.Players.LocalPlayer.Backpack:FindFirstChild("God's Chalice") or
                            game.Players.LocalPlayer.Character:FindFirstChild("God's Chalice") then
                            fask.wait(0.25)
                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("activateColor",
                                "Winter Sky")
                            fask.wait(0.25)
                            ChaliceTween = toTarget(CFrame.new(-5420.16602, 1084.9657, -2666.8208, 0.390717864, 0,
                                0.92051065, 0, 1, 0, -0.92051065, 0, 0.390717864))
                            ChaliceTween:Wait()
                            fask.wait(0.25)
                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("activateColor", "Pure Red")
                            fask.wait(0.25)
                            ChaliceTween = toTarget(CFrame.new(-5414.41357, 309.865753, -2212.45776, 0.374604106, -0,
                                -0.92718488, 0, 1, -0, 0.92718488, 0, 0.374604106))
                            ChaliceTween:Wait()
                            fask.wait(0.25)
                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("activateColor",
                                "Snow White")
                            fask.wait(0.25)
                            ChaliceTween = toTarget(CFrame.new(-4971.47559, 331.565765, -3720.02954, -0.92051065, 0,
                                0.390717506, 0, 1, 0, -0.390717506, 0, -0.92051065))
                            ChaliceTween:Wait()
                            fask.wait(0.25)
                            EquipWeapon("God's Chalice")
                            ChaliceTween = toTarget(CFrame.new(-5560.27295, 313.915466, -2663.89795))
                            ChaliceTween:Wait()
                            fask.wait(0.5)
                            EquipWeapon("God's Chalice")
                            fask.wait(0.2)
                            ChaliceTween = toTarget(CFrame.new(5154.17676, 141.786423, 911.046326))
                            ChaliceTween:Wait()
                            fask.wait(0.2)
                            ChaliceTween = toTarget(CFrame.new(5148.03613, 162.352493, 910.548218))
                            ChaliceTween:Wait()
                            fask.wait(0.5)
                        elseif not inmyselfss("Holy Torch") and
                            (game.Workspace.Enemies:FindFirstChild("rip_indra True Form [Lv. 5000] [Raid Boss]") or
                                game.ReplicatedStorage:FindFirstChild("rip_indra True Form [Lv. 5000] [Raid Boss]")) then
                            ChaliceTween = toTarget(CFrame.new(5154.17676, 141.786423, 911.046326))
                            ChaliceTween:Wait()
                            fask.wait(0.2)
                            ChaliceTween = toTarget(CFrame.new(5148.03613, 162.352493, 910.548218))
                            ChaliceTween:Wait()
                            fask.wait(0.5)
                        elseif not inmyselfss("God's Chalice") and
                            (game.Workspace.Enemies:FindFirstChild("Deandre [Lv. 1750]") or
                                game.Workspace.Enemies:FindFirstChild("Urban [Lv. 1750]") or
                                game.Workspace.Enemies:FindFirstChild("Diablo [Lv. 1750]") or
                                game.ReplicatedStorage:FindFirstChild("Deandre [Lv. 1750]") or
                                game.ReplicatedStorage:FindFirstChild("Urban [Lv. 1750]") or
                                game.ReplicatedStorage:FindFirstChild("Diablo [Lv. 1750]")) then
                            if game.Players.LocalPlayer.PlayerGui.Main.Quest.Visible == true then
                                if string.find(game.Players.LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title
                                                   .Text, "Diablo") or
                                    string.find(
                                        game.Players.LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text,
                                        "Urban") or
                                    string.find(
                                        game.Players.LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text,
                                        "Deandre") then
                                    for i, v in pairs(game:GetService("ReplicatedStorage"):GetChildren()) do
                                        if string.find(v.Name, "Diablo") then
                                            TushitaTween = toTarget(v.HumanoidRootPart.Position,
                                                v.HumanoidRootPart.CFrame)
                                            if (v.HumanoidRootPart.Position -
                                                game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude <=
                                                250 then
                                                if TushitaTween then
                                                    TushitaTween:Stop()
                                                end
                                                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame =
                                                    v.HumanoidRootPart.CFrame
                                            end
                                        end
                                        if string.find(v.Name, "Urban") then
                                            TushitaTween = toTarget(v.HumanoidRootPart.Position,
                                                v.HumanoidRootPart.CFrame)
                                            if (v.HumanoidRootPart.Position -
                                                game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude <=
                                                250 then
                                                if TushitaTween then
                                                    TushitaTween:Stop()
                                                end
                                                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame =
                                                    v.HumanoidRootPart.CFrame
                                            end
                                        end
                                        if string.find(v.Name, "Deandre") then
                                            TushitaTween = toTarget(v.HumanoidRootPart.Position,
                                                v.HumanoidRootPart.CFrame)
                                            if (v.HumanoidRootPart.Position -
                                                game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude <=
                                                250 then
                                                if TushitaTween then
                                                    TushitaTween:Stop()
                                                end
                                                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame =
                                                    v.HumanoidRootPart.CFrame
                                            end
                                        end
                                    end
                                    for i, v in pairs(game.Workspace.Enemies:GetChildren()) do
                                        if AutoTushita and string.find(v.Name, "Diablo") and
                                            v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and
                                            v.Humanoid.Health > 0 then
                                            repeat
                                                fask.wait()
                                                if (v.HumanoidRootPart.Position -
                                                    game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude >
                                                    300 then
                                                    Farmtween =
                                                        toTarget(v.HumanoidRootPart.Position, v.HumanoidRootPart.CFrame)
                                                elseif (v.HumanoidRootPart.Position -
                                                    game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude <=
                                                    300 then
                                                    if Farmtween then
                                                        Farmtween:Stop()
                                                    end
                                                    EquipWeapon(Selected_Weapons)
                                                    NeedAttacking = true
                                                    toAroundTarget(v.HumanoidRootPart.CFrame)
                                                end
                                            until not AutoTushita or not v.Parent or v.Humanoid.Health <= 0
                                            NeedAttacking = false
                                        end
                                        if AutoTushita and string.find(v.Name, "Urban") and v:FindFirstChild("Humanoid") and
                                            v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
                                            repeat
                                                fask.wait()
                                                if (v.HumanoidRootPart.Position -
                                                    game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude >
                                                    300 then
                                                    Farmtween =
                                                        toTarget(v.HumanoidRootPart.Position, v.HumanoidRootPart.CFrame)
                                                elseif (v.HumanoidRootPart.Position -
                                                    game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude <=
                                                    300 then
                                                    if Farmtween then
                                                        Farmtween:Stop()
                                                    end
                                                    EquipWeapon(Selected_Weapons)
                                                    NeedAttacking = true
                                                    toAroundTarget(v.HumanoidRootPart.CFrame)
                                                end
                                            until not AutoTushita or not v.Parent or v.Humanoid.Health <= 0
                                            NeedAttacking = false
                                        end
                                        if AutoTushita and string.find(v.Name, "Deandre") and
                                            v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and
                                            v.Humanoid.Health > 0 then
                                            repeat
                                                fask.wait()
                                                if (v.HumanoidRootPart.Position -
                                                    game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude >
                                                    300 then
                                                    Farmtween =
                                                        toTarget(v.HumanoidRootPart.Position, v.HumanoidRootPart.CFrame)
                                                elseif (v.HumanoidRootPart.Position -
                                                    game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude <=
                                                    300 then
                                                    if Farmtween then
                                                        Farmtween:Stop()
                                                    end
                                                    EquipWeapon(Selected_Weapons)
                                                    NeedAttacking = true
                                                    toAroundTarget(v.HumanoidRootPart.CFrame)
                                                end
                                            until not AutoTushita or not v.Parent or v.Humanoid.Health <= 0
                                            NeedAttacking = false
                                        end
                                    end
                                else
                                    local string_1 = "EliteHunter";
                                    local Target = game:GetService("ReplicatedStorage").Remotes["CommF_"];
                                    Target:InvokeServer(string_1);
                                end
                            else
                                local string_1 = "EliteHunter";
                                local Target = game:GetService("ReplicatedStorage").Remotes["CommF_"];
                                Target:InvokeServer(string_1);
                            end
                        elseif AutoTushitaHop then
                            ServerFunc:TeleportFast()
                        end
                    elseif not (game.Workspace.Enemies:FindFirstChild("rip_indra True Form [Lv. 5000] [Raid Boss]") or
                        game.ReplicatedStorage:FindFirstChild("rip_indra True Form [Lv. 5000] [Raid Boss]")) then
                        ServerFunc:NormalTeleport()
                    end
                else
                    break
                end
            end
        end)
    end
end)

YamaQuest:OnChanged(function(starts)
    if World3 then
        AutoYama = starts
        Save()
        spawn(function()
            while fask.wait() do
                if AutoYama then
                    if game:GetService("ReplicatedStorage").Remotes["CommF_"]:InvokeServer("EliteHunter", "Progress") <
                        30 then
                        if game.Players.LocalPlayer.PlayerGui.Main.Quest.Visible == true then
                            if string.find(
                                game.Players.LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, "Diablo") or
                                string.find(
                                    game.Players.LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text,
                                    "Urban") or
                                string.find(
                                    game.Players.LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text,
                                    "Deandre") then
                                for i, v in pairs(game:GetService("ReplicatedStorage"):GetChildren()) do
                                    if (string.find(v.Name, "Diablo") or string.find(v.Name, "Urban") or
                                        string.find(v.Name, "Deandre")) then
                                        YemaTween = toTarget(v.HumanoidRootPart.Position, v.HumanoidRootPart.CFrame)
                                        if (v.HumanoidRootPart.Position -
                                            game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude <=
                                            250 then
                                            if YemaTween then
                                                YemaTween:Stop()
                                            end
                                            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame =
                                                v.HumanoidRootPart.CFrame
                                        end
                                    end
                                end
                                for i, v in pairs(game.Workspace.Enemies:GetChildren()) do
                                    if AutoYama and
                                        (string.find(v.Name, "Diablo") or string.find(v.Name, "Urban") or
                                            string.find(v.Name, "Deandre")) and v:FindFirstChild("Humanoid") and
                                        v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
                                        repeat
                                            fask.wait()
                                            if (v.HumanoidRootPart.Position -
                                                game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude >
                                                300 then
                                                Farmtween = toTarget(v.HumanoidRootPart.Position,
                                                    v.HumanoidRootPart.CFrame)
                                            elseif (v.HumanoidRootPart.Position -
                                                game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude <=
                                                300 then
                                                if Farmtween then
                                                    Farmtween:Stop()
                                                end
                                                EquipWeapon(Selected_Weapons)
                                                NeedAttacking = true
                                                toAroundTarget(v.HumanoidRootPart.CFrame)
                                            end
                                        until not AutoYama or not v.Parent or v.Humanoid.Health <= 0
                                        NeedAttacking = false
                                    end

                                end
                            else
                                local string_1 = "EliteHunter";
                                local Target = game:GetService("ReplicatedStorage").Remotes["CommF_"];
                                Target:InvokeServer(string_1);
                            end
                        else
                            if AutoYamaHOP and
                                game:GetService("ReplicatedStorage").Remotes["CommF_"]:InvokeServer("EliteHunter") ==
                                "I don't have anything for you right now. Come back later." then
                                ServerFunc:TeleportFast()
                            else
                                local string_1 = "EliteHunter";
                                local Target = game:GetService("ReplicatedStorage").Remotes["CommF_"];
                                Target:InvokeServer(string_1);
                            end
                        end
                    else
                        TweenYema = toTarget(game.Workspace.Map.Waterfall.SealedKatana.Handle.Position,
                            game.Workspace.Map.Waterfall.SealedKatana.Handle.CFrame)
                        if (game.Workspace.Map.Waterfall.SealedKatana.Handle.Position -
                            game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude <= 300 then
                            if TweenYema then
                                TweenYema:Stop()
                            end
                            if game.Workspace.Enemies:FindFirstChild("Ghost [Lv. 1500]") then
                                for i, v in pairs(game.Workspace.Enemies:GetChildren()) do
                                    if AutoYama and v:FindFirstChild("Humanoid") and
                                        v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 and v.Name ==
                                        "Ghost [Lv. 1500]" then
                                        repeat
                                            fask.wait()
                                            if (v.HumanoidRootPart.Position -
                                                game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude >
                                                300 then
                                                Farmtween = toTarget(v.HumanoidRootPart.Position,
                                                    v.HumanoidRootPart.CFrame)
                                            elseif (v.HumanoidRootPart.Position -
                                                game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude <=
                                                300 then
                                                if Farmtween then
                                                    Farmtween:Stop()
                                                end
                                                EquipWeapon(Selected_Weapons)
                                                NeedAttacking = true
                                                toAroundTarget(v.HumanoidRootPart.CFrame)
                                            end
                                        until not AutoYama or not v.Parent or v.Humanoid.Health <= 0
                                        NeedAttacking = false
                                    end
                                end
                            else
                                if TweenYema then
                                    TweenYema:Stop()
                                end
                                fireclickdetector(game.Workspace.Map.Waterfall.SealedKatana.Handle.ClickDetector)
                            end
                        end
                    end
                else
                    break
                end
            end
        end)
    end
end)

YamaQuestHOP:OnChanged(function(starts)
    if World3 then
        AutoYama = starts
        AutoYamaHOP = starts
        Save()
        spawn(function()
            while fask.wait() do
                if AutoYama then
                    if game:GetService("ReplicatedStorage").Remotes["CommF_"]:InvokeServer("EliteHunter", "Progress") <
                        30 then
                        if game.Players.LocalPlayer.PlayerGui.Main.Quest.Visible == true then
                            if string.find(
                                game.Players.LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, "Diablo") or
                                string.find(
                                    game.Players.LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text,
                                    "Urban") or
                                string.find(
                                    game.Players.LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text,
                                    "Deandre") then
                                for i, v in pairs(game:GetService("ReplicatedStorage"):GetChildren()) do
                                    if (string.find(v.Name, "Diablo") or string.find(v.Name, "Urban") or
                                        string.find(v.Name, "Deandre")) then
                                        YemaTween = toTarget(v.HumanoidRootPart.Position, v.HumanoidRootPart.CFrame)
                                        if (v.HumanoidRootPart.Position -
                                            game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude <=
                                            250 then
                                            if YemaTween then
                                                YemaTween:Stop()
                                            end
                                            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame =
                                                v.HumanoidRootPart.CFrame
                                        end
                                    end

                                end
                                for i, v in pairs(game.Workspace.Enemies:GetChildren()) do
                                    if AutoYama and
                                        (string.find(v.Name, "Diablo") or string.find(v.Name, "Urban") or
                                            string.find(v.Name, "Deandre")) and v:FindFirstChild("Humanoid") and
                                        v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
                                        repeat
                                            fask.wait()
                                            if (v.HumanoidRootPart.Position -
                                                game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude >
                                                300 then
                                                Farmtween = toTarget(v.HumanoidRootPart.Position,
                                                    v.HumanoidRootPart.CFrame)
                                            elseif (v.HumanoidRootPart.Position -
                                                game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude <=
                                                300 then
                                                if Farmtween then
                                                    Farmtween:Stop()
                                                end
                                                EquipWeapon(Selected_Weapons)
                                                NeedAttacking = true
                                                toAroundTarget(v.HumanoidRootPart.CFrame)
                                            end
                                        until not AutoYama or not v.Parent or v.Humanoid.Health <= 0
                                        NeedAttacking = false
                                    end

                                end
                            else
                                local string_1 = "EliteHunter";
                                local Target = game:GetService("ReplicatedStorage").Remotes["CommF_"];
                                Target:InvokeServer(string_1);
                            end
                        else
                            if AutoYamaHOP and
                                game:GetService("ReplicatedStorage").Remotes["CommF_"]:InvokeServer("EliteHunter") ==
                                "I don't have anything for you right now. Come back later." then
                                ServerFunc:TeleportFast()
                            else
                                local string_1 = "EliteHunter";
                                local Target = game:GetService("ReplicatedStorage").Remotes["CommF_"];
                                Target:InvokeServer(string_1);
                            end
                        end
                    else
                        TweenYema = toTarget(game.Workspace.Map.Waterfall.SealedKatana.Handle.Position,
                            game.Workspace.Map.Waterfall.SealedKatana.Handle.CFrame)
                        if (game.Workspace.Map.Waterfall.SealedKatana.Handle.Position -
                            game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude <= 300 then
                            if TweenYema then
                                TweenYema:Stop()
                            end
                            if game.Workspace.Enemies:FindFirstChild("Ghost [Lv. 1500]") then
                                for i, v in pairs(game.Workspace.Enemies:GetChildren()) do
                                    if AutoYama and v:FindFirstChild("Humanoid") and
                                        v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 and v.Name ==
                                        "Ghost [Lv. 1500]" then
                                        repeat
                                            fask.wait()
                                            if (v.HumanoidRootPart.Position -
                                                game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude >
                                                300 then
                                                Farmtween = toTarget(v.HumanoidRootPart.Position,
                                                    v.HumanoidRootPart.CFrame)
                                            elseif (v.HumanoidRootPart.Position -
                                                game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude <=
                                                300 then
                                                if Farmtween then
                                                    Farmtween:Stop()
                                                end
                                                EquipWeapon(Selected_Weapons)
                                                NeedAttacking = true
                                                toAroundTarget(v.HumanoidRootPart.CFrame)
                                            end
                                        until not AutoYama or not v.Parent or v.Humanoid.Health <= 0
                                        NeedAttacking = false
                                    end
                                end
                            else
                                if TweenYema then
                                    TweenYema:Stop()
                                end
                                fireclickdetector(game.Workspace.Map.Waterfall.SealedKatana.Handle.ClickDetector)
                            end
                        end
                    end
                else
                    break
                end
            end
        end)
    end
end)

Tabs.FindThird:AddParagraph({
    Title = "Auto Cursed Dual Katana",
    Content = "Auto Yama + Tushita = Cursed Dual Katana"
})

local Tushita2Quest = Tabs.FindThird:AddToggle("Tushita_Quest", {
    Title = "Auto Finish Tushita Quest",
    Default = Tushita_Quest
})
local Yama2Quest = Tabs.FindThird:AddToggle("Yama_Quest", {
    Title = "Auto Finish Yama Quest",
    Default = Yama_Quest
})

local GetCursedDualQuest = Tabs.FindThird:AddToggle("Get_Cursed", {
    Title = "Auto Get Cursed Dual Katana",
    Default = Get_Cursed
})

Tushita2Quest:OnChanged(function(value)
    Tushita_Quest = value
    if value == false then
        toTarget(game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame)
    end
    Save()
end)

Yama2Quest:OnChanged(function(value)
    Yama_Quest = value
    if value == false then
        toTarget(game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame)
    end
    Save()
end)

GetCursedDualQuest:OnChanged(function(value)
    Get_Cursed = value
    if value == false then
        toTarget(game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame)
    end
    Save()
end)

spawn(function()
    while fask.wait() do
        pcall(function()
            if Tushita_Quest then
                -- BodyClip()
                -- _G.Noclip = true
                if tostring(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CDKQuest", "OpenDoor")) ~=
                    "opened" then
                    wait(.7)
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CDKQuest", "OpenDoor")
                    wait(.3)
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CDKQuest", "OpenDoor", true)
                    warn("กำลังเปิดเปิดประตู...")
                else
                    if game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CDKQuest", "Progress")["Finished"] ==
                        nil then
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CDKQuest", "StartTrial",
                            "Good")
                    elseif game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CDKQuest", "Progress")["Finished"] ==
                        false then
                        if tonumber(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CDKQuest",
                                        "Progress")["Good"]) == -3 then
                            repeat
                                wait()
                                toTarget(CFrame.new(-4602.5107421875, 16.446542739868164, -2880.998046875))
                            until (CFrame.new(-4602.5107421875, 16.446542739868164, -2880.998046875).Position -
                                game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <=
                                3 or not Tushita_Quest or
                                tonumber(
                                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CDKQuest",
                                        "Progress")["Good"]) == 1
                            if (CFrame.new(-4602.5107421875, 16.446542739868164, -2880.998046875).Position -
                                game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <=
                                10 then
                                wait(.7)
                                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CDKQuest",
                                    "BoatQuest", workspace.NPCs:FindFirstChild("Luxury Boat Dealer"), "Check")
                                wait(.5)
                                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CDKQuest",
                                    "BoatQuest", workspace.NPCs:FindFirstChild("Luxury Boat Dealer"))
                            end
                            wait(1)
                            repeat
                                wait()
                                toTarget(CFrame.new(4001.185302734375, 10.089399337768555, -2654.86328125))
                            until (CFrame.new(4001.185302734375, 10.089399337768555, -2654.86328125).Position -
                                game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <=
                                3 or not Tushita_Quest or
                                tonumber(
                                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CDKQuest",
                                        "Progress")["Good"]) == 1
                            if (CFrame.new(4001.185302734375, 10.089399337768555, -2654.86328125).Position -
                                game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <=
                                10 then
                                wait(.7)
                                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CDKQuest",
                                    "BoatQuest", workspace.NPCs:FindFirstChild("Luxury Boat Dealer"), "Check")
                                wait(.5)
                                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CDKQuest",
                                    "BoatQuest", workspace.NPCs:FindFirstChild("Luxury Boat Dealer"))
                            end
                            wait(1)
                            repeat
                                wait()
                                toTarget(CFrame.new(-9530.763671875, 7.245208740234375, -8375.5087890625))
                            until (CFrame.new(-9530.763671875, 7.245208740234375, -8375.5087890625).Position -
                                game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <=
                                3 or not Tushita_Quest or
                                tonumber(
                                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CDKQuest",
                                        "Progress")["Good"]) == 1
                            if (CFrame.new(-9530.763671875, 7.245208740234375, -8375.5087890625).Position -
                                game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <=
                                10 then
                                wait(.7)
                                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CDKQuest",
                                    "BoatQuest", workspace.NPCs:FindFirstChild("Luxury Boat Dealer"), "Check")
                                wait(.5)
                                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CDKQuest",
                                    "BoatQuest", workspace.NPCs:FindFirstChild("Luxury Boat Dealer"))
                            end
                            fask.wait(1)
                        elseif tonumber(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CDKQuest",
                                            "Progress")["Good"]) == -4 then
                            if game:GetService("Workspace").Enemies:FindFirstChildOfClass("Model") then
                                for i, v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                                    if (v:FindFirstChild("HumanoidRootPart").Position -
                                        CFrame.new(-5463.74560546875, 313.7947082519531, -2844.50390625).Position).Magnitude <=
                                        1000 then
                                        if v:FindFirstChild("HumanoidRootPart") and v:FindFirstChild("Humanoid") and
                                            v:FindFirstChild("Humanoid").Health > 0 then
                                            repeat
                                                fask.wait()
                                                if Auto_Haki then
                                                    if not game.Players.LocalPlayer.Character:FindFirstChild("HasBuso") then
                                                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(
                                                            "Buso")
                                                    end
                                                end
                                                if not game.Players.LocalPlayer.Character:FindFirstChild(
                                                    Selected_Weapons) then
                                                    wait()
                                                    EquipWeapon(Selected_Weapons)
                                                end
                                                v.HumanoidRootPart.CanCollide = false
                                                v.Head.CanCollide = false
                                                toTarget(v.HumanoidRootPart.CFrame *
                                                             CFrame.new(0, Distance_Auto_Farm, 0))
                                                NeedAttacking = true
                                                PosTHQuest = v.HumanoidRootPart.CFrame
                                                MagnetTHQuest = true
                                                NameTH = v.Name
                                            until not Tushita_Quest or v.Humanoid.Health <= 0 or not v.Parent or
                                                tonumber(
                                                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(
                                                        "CDKQuest", "Progress")["Good"]) == 2
                                            NeedAttacking = false
                                        end
                                    else
                                        toTarget(CFrame.new(-5084.20849609375, 314.5412902832031, -2975.078125))
                                    end
                                end
                            else
                                toTarget(CFrame.new(-5084.20849609375, 314.5412902832031, -2975.078125))
                            end
                        elseif tonumber(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CDKQuest",
                                            "Progress")["Good"]) == -5 then
                            ---
                            if game:GetService("Workspace").Enemies:FindFirstChild("Cake Queen [Lv. 2175] [Boss]") then
                                for i, v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                                    if v.Name == "Cake Queen [Lv. 2175] [Boss]" then
                                        if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and
                                            v.Humanoid.Health > 0 then
                                            repeat
                                                fask.wait()
                                                if Auto_Haki then
                                                    if not game.Players.LocalPlayer.Character:FindFirstChild("HasBuso") then
                                                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(
                                                            "Buso")
                                                    end
                                                end
                                                if not game.Players.LocalPlayer.Character:FindFirstChild(
                                                    Selected_Weapons) then
                                                    wait()
                                                    EquipWeapon(Selected_Weapons)
                                                end
                                                v.HumanoidRootPart.CanCollide = false
                                                v.Head.CanCollide = false
                                                toTarget(v.HumanoidRootPart.CFrame *
                                                             CFrame.new(0, Distance_Auto_Farm, 0))
                                                NeedAttacking = true
                                            until not Tushita_Quest or not v.Parent or v.Humanoid.Health <= 0 or
                                                tonumber(
                                                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(
                                                        "CDKQuest", "Progress")["Good"]) == 3
                                            NeedAttacking = false
                                        end
                                    end
                                end
                            elseif game:GetService("ReplicatedStorage"):FindFirstChild("Cake Queen [Lv. 2175] [Boss]") and
                                game:GetService("ReplicatedStorage"):FindFirstChild("Cake Queen [Lv. 2175] [Boss]").Humanoid
                                    .Health > 0 then
                                toTarget(game:GetService("ReplicatedStorage"):FindFirstChild(
                                             "Cake Queen [Lv. 2175] [Boss]").HumanoidRootPart.CFrame *
                                             Distance_Auto_Farm)
                            else
                                if (game.Players.LocalPlayer.Character.HumanoidRootPart.Position -
                                    game:GetService("Workspace").Map.HeavenlyDimension.Spawn.Position).Magnitude <= 1000 then
                                    for i, v in pairs(
                                        game:GetService("Workspace").Map.HeavenlyDimension.Exit:GetChildren()) do
                                        Ex = i
                                    end
                                    if Ex == 2 then
                                        repeat
                                            fask.wait()
                                            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame =
                                                game:GetService("Workspace").Map.HeavenlyDimension.Exit.CFrame
                                        until not Tushita_Quest or
                                            tonumber(
                                                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(
                                                    "CDKQuest", "Progress")["Good"]) == 3
                                    end
                                    NeedAttacking = true
                                    repeat
                                        fask.wait()
                                        repeat
                                            fask.wait()
                                            toTarget(CFrame.new(-22529.6171875, 5275.77392578125, 3873.5712890625))
                                            for i, v in pairs(
                                                game:GetService("Workspace").Map.HeavenlyDimension:GetDescendants()) do
                                                if v:IsA("ProximityPrompt") then
                                                    fireproximityprompt(v)
                                                end
                                            end

                                        until (CFrame.new(-22529.6171875, 5275.77392578125, 3873.5712890625).Position -
                                            game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude < 5
                                        wait(2)
                                        _G.DoneT1 = true
                                    until not Tushita_Quest or _G.DoneT1
                                    repeat
                                        fask.wait()
                                        repeat
                                            fask.wait()
                                            toTarget(CFrame.new(-22637.291015625, 5281.365234375, 3749.28857421875))
                                            for i, v in pairs(
                                                game:GetService("Workspace").Map.HeavenlyDimension:GetDescendants()) do
                                                if v:IsA("ProximityPrompt") then
                                                    fireproximityprompt(v)
                                                end
                                            end
                                        until (CFrame.new(-22637.291015625, 5281.365234375, 3749.28857421875).Position -
                                            game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude < 5
                                        wait(2)
                                        _G.DoneT2 = true
                                    until _G.DoneT2 or Tushita_Quest == false
                                    repeat
                                        wait()
                                        repeat
                                            fask.wait()
                                            toTarget(CFrame.new(-22791.14453125, 5277.16552734375, 3764.570068359375))
                                            for i, v in pairs(
                                                game:GetService("Workspace").Map.HeavenlyDimension:GetDescendants()) do
                                                if v:IsA("ProximityPrompt") then
                                                    fireproximityprompt(v)
                                                end
                                            end
                                        until (CFrame.new(-22791.14453125, 5277.16552734375, 3764.570068359375).Position -
                                            game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude < 5
                                        wait(2)
                                        _G.DoneT3 = true
                                    until _G.DoneT3 or Tushita_Quest == false
                                    for i, v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                                        if (v:FindFirstChild("HumanoidRootPart").Position -
                                            CFrame.new(-22695.7012, 5270.93652, 3814.42847, 0.11794927, 3.32185834e-08,
                                                0.99301964, -8.73070718e-08, 1, -2.30819008e-08, -0.99301964,
                                                -8.3975138e-08, 0.11794927).Position).Magnitude <= 300 then
                                            if v:FindFirstChild("HumanoidRootPart") and v:FindFirstChild("Humanoid") and
                                                v:FindFirstChild("Humanoid").Health > 0 then
                                                repeat
                                                    fask.wait()
                                                    if Auto_Haki then
                                                        if not game.Players.LocalPlayer.Character:FindFirstChild(
                                                            "HasBuso") then
                                                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(
                                                                "Buso")
                                                        end
                                                    end
                                                    if not game.Players.LocalPlayer.Character:FindFirstChild(
                                                        Selected_Weapons) then
                                                        wait()
                                                        EquipWeapon(Selected_Weapons)
                                                    end
                                                    v.HumanoidRootPart.CanCollide = false
                                                    v.Head.CanCollide = false
                                                    toTarget(v.HumanoidRootPart.CFrame *
                                                                 CFrame.new(0, Distance_Auto_Farm, 0))
                                                    NeedAttacking = true
                                                    PosTHQuest = v.HumanoidRootPart.CFrame
                                                    MagnetTHQuest = true
                                                    NameTH = v.Name
                                                until not Tushita_Quest or v.Humanoid.Health <= 0 or not v.Parent
                                                NeedAttacking = false
                                            end
                                        else
                                            MagnetTHQuest = false
                                        end
                                    end
                                end
                            end
                        end
                    end
                end
            end
        end)
    end
end)

PosMsList = {
    ["Pirate Millionaire [Lv. 1500]"] = CFrame.new(-426, 176, 5558),
    ["Pistol Billionaire [Lv. 1525]"] = CFrame.new(-83, 127, 6097),
    ["Dragon Crew Warrior [Lv. 1575]"] = CFrame.new(6320, 52, -1282),
    ["Dragon Crew Archer [Lv. 1600]"] = CFrame.new(6625, 378, 244),
    ["Female Islander [Lv. 1625]"] = CFrame.new(4692.7939453125, 797.9766845703125, 858.8480224609375),
    ["Giant Islander [Lv. 1650]"] = CFrame.new(4902, 670, 39),
    ["Marine Commodore [Lv. 1700]"] = CFrame.new(2401, 123, -7589),
    ["Marine Rear Admiral [Lv. 1725]"] = CFrame.new(3588, 229, -7085),
    ["Fishman Raider [Lv. 1775]"] = CFrame.new(-10941, 332, -8760),
    ["Fishman Captain [Lv. 1800]"] = CFrame.new(-11035, 332, -9087),
    ["Forest Pirate [Lv. 1825]"] = CFrame.new(-13446, 413, -7760),
    ["Mythological Pirate [Lv. 1850]"] = CFrame.new(-13510, 584, -6987),
    ["Jungle Pirate [Lv. 1900]"] = CFrame.new(-11778, 426, -10592),
    ["Musketeer Pirate [Lv. 1925]"] = CFrame.new(-13282, 496, -9565),
    ["Reborn Skeleton [Lv. 1975]"] = CFrame.new(-8764, 142, 5963),
    ["Living Zombie [Lv. 2000]"] = CFrame.new(-10227, 421, 6161),
    ["Demonic Soul [Lv. 2025]"] = CFrame.new(-9579, 6, 6194),
    ["Posessed Mummy [Lv. 2050]"] = CFrame.new(-9579, 6, 6194),
    ["Peanut Scout [Lv. 2075]"] = CFrame.new(-1993, 187, -10103),
    ["Peanut President [Lv. 2100]"] = CFrame.new(-2215, 159, -10474),
    ["Ice Cream Chef [Lv. 2125]"] = CFrame.new(-877, 118, -11032),
    ["Ice Cream Commander [Lv. 2150]"] = CFrame.new(-877, 118, -11032),
    ["Cookie Crafter [Lv. 2200]"] = CFrame.new(-2021, 38, -12028),
    ["Cake Guard [Lv. 2225]"] = CFrame.new(-2024, 38, -12026),
    ["Baking Staff [Lv. 2250]"] = CFrame.new(-1932, 38, -12848),
    ["Head Baker [Lv. 2275]"] = CFrame.new(-1932, 38, -12848),
    ["Cocoa Warrior [Lv. 2300]"] = CFrame.new(95, 73, -12309),
    ["Chocolate Bar Battler [Lv. 2325]"] = CFrame.new(647, 42, -12401),
    ["Sweet Thief [Lv. 2350]"] = CFrame.new(116, 36, -12478),
    ["Candy Rebel [Lv. 2375]"] = CFrame.new(47, 61, -12889),
    ["Ghost [Lv. 1500]"] = CFrame.new(5251, 5, 1111)
}

fask.spawn(function()
    while fask.wait() do
        pcall(function()
            if Yama_Quest then
                -- BodyClip()
                -- _G.Noclip = true 
                if tostring(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CDKQuest", "OpenDoor")) ~=
                    "opened" then
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CDKQuest", "OpenDoor")
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CDKQuest", "OpenDoor", true)
                else
                    if game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CDKQuest", "Progress")["Finished"] ==
                        nil then
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CDKQuest", "StartTrial",
                            "Evil")
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CDKQuest", "StartTrial",
                            "Evil")
                    elseif game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CDKQuest", "Progress")["Finished"] ==
                        false then
                        if tonumber(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CDKQuest",
                                        "Progress")["Evil"]) == -3 then
                            repeat
                                fask.wait()
                                if not game:GetService("Workspace").Enemies:FindFirstChild("Forest Pirate [Lv. 1825]") then
                                    toTarget(CFrame.new(-13223.521484375, 428.1938171386719, -7766.06787109375))
                                else
                                    for i, v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                                        if v.Name == "Forest Pirate [Lv. 1825]" then
                                            PosMon = v.HumanoidRootPart.CFrame
                                            spawn(function()
                                                BringMobs(PosMon, v.Name)
                                            end)
                                            toTarget(game:GetService("Workspace").Enemies:FindFirstChild(
                                                         "Forest Pirate [Lv. 1825]").HumanoidRootPart.CFrame)
                                        end
                                    end
                                end
                            until tonumber(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CDKQuest",
                                               "Progress")["Evil"]) == 1 or not Yama_Quest
                        elseif tonumber(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CDKQuest",
                                            "Progress")["Evil"]) == -4 then
                            for ix, HitMon in pairs(game:GetService("Players").LocalPlayer.QuestHaze:GetChildren()) do
                                for NameMonHaze, CFramePos in pairs(PosMsList) do
                                    if string.find(NameMonHaze, HitMon.Name) and HitMon.Value > 0 then
                                        if game:GetService("Workspace").Enemies:FindFirstChild(NameMonHaze) then
                                            for i, v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                                                if v:FindFirstChild("HumanoidRootPart") and v:FindFirstChild("Humanoid") and
                                                    v:FindFirstChild("Humanoid").Health > 0 and
                                                    v:FindFirstChild("HazeESP") then
                                                    repeat
                                                        fask.wait()
                                                        if Auto_Haki then
                                                            if not game.Players.LocalPlayer.Character:FindFirstChild(
                                                                "HasBuso") then
                                                                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(
                                                                    "Buso")
                                                            end
                                                        end
                                                        if not game.Players.LocalPlayer.Character:FindFirstChild(
                                                            Selected_Weapons) then
                                                            wait()
                                                            EquipWeapon(Selected_Weapons)
                                                        end
                                                        v.HumanoidRootPart.CanCollide = false
                                                        v.Head.CanCollide = false
                                                        toTarget(v.HumanoidRootPart.CFrame * CFrame.new(0, 30, 0))
                                                        NeedAttacking = true
                                                        PosMon = v.HumanoidRootPart.CFrame
                                                        spawn(function()
                                                            BringMobs(PosMon, v.Name)
                                                        end)
                                                    until not Yama_Quest or
                                                        tonumber(
                                                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(
                                                                "CDKQuest", "Progress")["Evil"]) == 2
                                                end
                                            end
                                        else
                                            repeat
                                                wait()
                                                if game:GetService("Workspace").Enemies:FindFirstChild(NameMonHaze) then
                                                    for i, v in
                                                        pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                                                        if v:FindFirstChild("HumanoidRootPart") and
                                                            v:FindFirstChild("Humanoid") and
                                                            v:FindFirstChild("Humanoid").Health > 0 and
                                                            v:FindFirstChild("HazeESP") then
                                                            repeat
                                                                fask.wait()
                                                                if Auto_Haki then
                                                                    if not game.Players.LocalPlayer.Character:FindFirstChild(
                                                                        "HasBuso") then
                                                                        game:GetService("ReplicatedStorage").Remotes
                                                                            .CommF_:InvokeServer("Buso")
                                                                    end
                                                                end
                                                                if not game.Players.LocalPlayer.Character:FindFirstChild(
                                                                    Selected_Weapons) then
                                                                    wait()
                                                                    EquipWeapon(Selected_Weapons)
                                                                end
                                                                v.HumanoidRootPart.CanCollide = false
                                                                v.Head.CanCollide = false
                                                                toTarget(v.HumanoidRootPart.CFrame *
                                                                             CFrame.new(0, Distance_Auto_Farm, 0))
                                                                NeedAttacking = true
                                                                PosMon = v.HumanoidRootPart.CFrame
                                                                spawn(function()
                                                                    BringMobs(PosMon, v.Name)
                                                                end)
                                                            until not v:FindFirstChild("HazeESP") or not Yama_Quest or
                                                                tonumber(
                                                                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(
                                                                        "CDKQuest", "Progress")["Evil"]) == 2
                                                        end
                                                    end
                                                else
                                                    if (CFramePos.Position -
                                                        game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <=
                                                        2500 then
                                                        toTarget(CFramePos)
                                                    else
                                                        game.Players.LocalPlayer.Character.Humanoid.Health = die
                                                        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame =
                                                            CFramePos
                                                        wait(.2)
                                                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(
                                                            "SetSpawnPoint")
                                                    end
                                                end
                                            until not Yama_Quest
                                        end
                                    end
                                end
                            end
                        elseif tonumber(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CDKQuest",
                                            "Progress")["Evil"]) == -5 then
                            if game:GetService("Workspace").Map:FindFirstChild("HellDimension") then
                                if (game.Players.LocalPlayer.Character.HumanoidRootPart.Position -
                                    game:GetService("Workspace").Map.HellDimension.Spawn.Position).Magnitude <= 1000 then
                                    for gg, ez in pairs(
                                        game:GetService("Workspace").Map.HellDimension.Exit:GetChildren()) do
                                        if tonumber(gg) == 2 then
                                            repeat
                                                fask.wait()
                                                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame =
                                                    game:GetService("Workspace").Map.HellDimension.Exit.CFrame
                                            until not Yama_Quest or
                                                tonumber(
                                                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(
                                                        "CDKQuest", "Progress")["Evil"]) == 3
                                        end
                                    end
                                    NeedAttacking = true
                                    if not game.Players.LocalPlayer.Character:FindFirstChild(Selected_Weapons) then
                                        wait()
                                        EquipWeapon(Selected_Weapons)
                                    end
                                    if tonumber(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(
                                                    "CDKQuest", "Progress")["Evil"]) ~= 3 then
                                        repeat
                                            fask.wait()
                                            repeat
                                                fask.wait()
                                                toTarget(game:GetService("Workspace").Map.HellDimension.Torch1.Particles
                                                             .CFrame)
                                                for i, v in pairs(
                                                    game:GetService("Workspace").Map.HellDimension:GetDescendants()) do
                                                    if v:IsA("ProximityPrompt") then
                                                        fireproximityprompt(v)
                                                    end
                                                end
                                            until (game:GetService("Workspace").Map.HellDimension.Torch1.Particles
                                                .Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <
                                                5
                                            wait(2)
                                            _G.T1Yama = true
                                        until not Yama_Quest or _G.T1Yama or
                                            tonumber(
                                                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(
                                                    "CDKQuest", "Progress")["Evil"]) == 3
                                        repeat
                                            fask.wait()
                                            repeat
                                                fask.wait()
                                                toTarget(game:GetService("Workspace").Map.HellDimension.Torch2.Particles
                                                             .CFrame)
                                                for i, v in pairs(
                                                    game:GetService("Workspace").Map.HellDimension:GetDescendants()) do
                                                    if v:IsA("ProximityPrompt") then
                                                        fireproximityprompt(v)
                                                    end
                                                end
                                            until (game:GetService("Workspace").Map.HellDimension.Torch2.Particles
                                                .Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <
                                                5
                                            wait(2)
                                            _G.T2Yama = true
                                        until _G.T2Yama or Yama_Quest == false or
                                            tonumber(
                                                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(
                                                    "CDKQuest", "Progress")["Evil"]) == 3
                                        repeat
                                            wait()
                                            repeat
                                                fask.wait()
                                                toTarget(game:GetService("Workspace").Map.HellDimension.Torch3.Particles
                                                             .CFrame)
                                                for i, v in pairs(
                                                    game:GetService("Workspace").Map.HellDimension:GetDescendants()) do
                                                    if v:IsA("ProximityPrompt") then
                                                        fireproximityprompt(v)
                                                    end
                                                end
                                            until (game:GetService("Workspace").Map.HellDimension.Torch3.Particles
                                                .Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <
                                                5
                                            wait(2)
                                            _G.T3Yama = true
                                        until _G.T3Yama or Yama_Quest == false or
                                            tonumber(
                                                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(
                                                    "CDKQuest", "Progress")["Evil"]) == 3
                                    end
                                    for i, v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                                        if (v:FindFirstChild("HumanoidRootPart").Position -
                                            game:GetService("Workspace").Map.HellDimension.Spawn.Position).Magnitude <=
                                            300 then
                                            if v:FindFirstChild("HumanoidRootPart") and v:FindFirstChild("Humanoid") and
                                                v:FindFirstChild("Humanoid").Health > 0 then
                                                repeat
                                                    fask.wait()
                                                    if Auto_Haki then
                                                        if not game.Players.LocalPlayer.Character:FindFirstChild(
                                                            "HasBuso") then
                                                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(
                                                                "Buso")
                                                        end
                                                    end
                                                    if not game.Players.LocalPlayer.Character:FindFirstChild(
                                                        Selected_Weapons) then
                                                        wait()
                                                        EquipWeapon(Selected_Weapons)
                                                    end
                                                    v.HumanoidRootPart.CanCollide = false
                                                    v.Head.CanCollide = false
                                                    toTarget(v.HumanoidRootPart.CFrame *
                                                                 CFrame.new(0, Distance_Auto_Farm, 0))
                                                    NeedAttacking = true
                                                    PosMon = v.HumanoidRootPart.CFrame
                                                    spawn(function()
                                                        BringMobs(PosMon, v.Name)
                                                    end)
                                                until not Yama_Quest or v.Humanoid.Health <= 0 or not v.Parent or
                                                    tonumber(
                                                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(
                                                            "CDKQuest", "Progress")["Evil"]) == 3
                                                NeedAttacking = false
                                            end
                                        else
                                            MagnetYamaQuest = false
                                        end
                                    end
                                end
                            end
                        end
                    end
                end
            end
        end)
    end
end)

spawn(function()
    while fask.wait() do
        pcall(function()
            if Yama_Quest then
                if tonumber(
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CDKQuest", "Progress")["Evil"]) ==
                    -5 then
                    if not game:GetService("Workspace").Map:FindFirstChild("HellDimension") or
                        (game.Players.LocalPlayer.Character.HumanoidRootPart.Position -
                            game:GetService("Workspace").Map.HellDimension.Spawn.Position).Magnitude > 1000 then
                        if game:GetService("Workspace").Enemies:FindFirstChild("Soul Reaper [Lv. 2100] [Raid Boss]") then
                            for i, v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                                if string.find(v.Name, "Soul Reaper") then
                                    repeat
                                        fask.wait()
                                        toTarget(v.HumanoidRootPart.CFrame)
                                    until v.Humanoid.Health <= 0 or not Yama_Quest or not v.Parent or
                                        tonumber(
                                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CDKQuest",
                                                "Progress")["Evil"]) == 3 or
                                        (game:GetService("Workspace").Map:FindFirstChild("HellDimension") and
                                            (game.Players.LocalPlayer.Character.HumanoidRootPart.Position -
                                                game:GetService("Workspace").Map.HellDimension.Spawn.Position).Magnitude <=
                                            1000)
                                end
                            end
                        elseif game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Hallow Essence") or
                            game:GetService("Players").LocalPlayer.Character:FindFirstChild("Hallow Essence") then
                            repeat
                                toTarget(CFrame.new(-8932.322265625, 146.83154296875, 6062.55078125))
                                fask.wait()
                            until (CFrame.new(-8932.322265625, 146.83154296875, 6062.55078125).Position -
                                game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 8
                            EquipWeapon("Hallow Essence")
                        elseif game:GetService("ReplicatedStorage"):FindFirstChild("Soul Reaper [Lv. 2100] [Raid Boss]") and
                            game:GetService("ReplicatedStorage"):FindFirstChild("Soul Reaper [Lv. 2100] [Raid Boss]").Humanoid
                                .Health > 0 then
                            toTarget(game:GetService("ReplicatedStorage"):FindFirstChild(
                                         "Soul Reaper [Lv. 2100] [Raid Boss]").HumanoidRootPart.CFrame)
                        else
                            if game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Bones", "Check") < 50 and
                                not game:GetService("Workspace").Enemies:FindFirstChild(
                                    "Soul Reaper [Lv. 2100] [Raid Boss]") and
                                not game:GetService("ReplicatedStorage")
                                    :FindFirstChild("Soul Reaper [Lv. 2100] [Raid Boss]") and
                                not game:GetService("Workspace").Map:FindFirstChild("HellDimension") then
                                if game:GetService("Workspace").Enemies:FindFirstChild("Reborn Skeleton [Lv. 1975]") or
                                    game:GetService("Workspace").Enemies:FindFirstChild("Living Zombie [Lv. 2000]") or
                                    game:GetService("Workspace").Enemies:FindFirstChild("Domenic Soul [Lv. 2025]") or
                                    game:GetService("Workspace").Enemies:FindFirstChild("Posessed Mummy [Lv. 2050]") then
                                    for i, v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                                        if v.Name == "Reborn Skeleton [Lv. 1975]" or v.Name ==
                                            "Living Zombie [Lv. 2000]" or v.Name == "Demonic Soul [Lv. 2025]" or v.Name ==
                                            "Posessed Mummy [Lv. 2050]" then
                                            if v:FindFirstChild("HumanoidRootPart") and v:FindFirstChild("Humanoid") and
                                                v:FindFirstChild("Humanoid").Health > 0 then
                                                repeat
                                                    fask.wait()
                                                    if Auto_Haki then
                                                        if not game.Players.LocalPlayer.Character:FindFirstChild(
                                                            "HasBuso") then
                                                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(
                                                                "Buso")
                                                        end
                                                    end
                                                    if not game.Players.LocalPlayer.Character:FindFirstChild(
                                                        Selected_Weapons) then
                                                        wait()
                                                        EquipWeapon(Selected_Weapons)
                                                    end
                                                    v.HumanoidRootPart.CanCollide = false
                                                    v.Head.CanCollide = false
                                                    toTarget(v.HumanoidRootPart.CFrame *
                                                                 CFrame.new(0, Distance_Auto_Farm, 0))
                                                    NeedAttacking = true
                                                    PosMon = v.HumanoidRootPart.CFrame
                                                    spawn(function()
                                                        BringMobs(PosMon, v.Name)
                                                    end)
                                                until not Yama_Quest or v.Humanoid.Health <= 0 or not v.Parent
                                                NeedAttacking = false
                                            end
                                        end
                                    end
                                else
                                    MagnetWaitY = false
                                    toTarget(CFrame.new(-9515.2255859375, 164.0062255859375, 5785.38330078125))
                                end
                            else
                                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Bones", "Buy", 1, 1)
                            end
                        end
                    end
                end
            end
        end)
    end
end)
fask.spawn(function()
    while fask.wait() do
        pcall(function()
            if Get_Cursed then
                -- BodyClip()
                -- _G.Noclip = true
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CDKQuest", "Progress", "Good")
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CDKQuest", "Progress", "Evil")
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CDKQuest", "StartTrial", "Boss")
                if game:GetService("Workspace").Enemies:FindFirstChild("Cursed Skeleton Boss [Lv. 2025] [Boss]") then
                    for i, v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                        if v.Name == "Cursed Skeleton Boss [Lv. 2025] [Boss]" then
                            if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and
                                v.Humanoid.Health > 0 then
                                repeat
                                    fask.wait()
                                    if game.Players.LocalPlayer.Character:FindFirstChild("Yama") or
                                        game.Players.LocalPlayer.Backpack:FindFirstChild("Yama") then
                                        EquipWeapon("Yama")
                                    elseif game.Players.LocalPlayer.Character:FindFirstChild("Tushita") or
                                        game.Players.LocalPlayer.Backpack:FindFirstChild("Tushita") then
                                        EquipWeapon("Tushita")
                                    else
                                        warn("Yama or Tushita Only!!!")
                                        wait(5)
                                    end
                                    if Auto_Haki then
                                        if not game.Players.LocalPlayer.Character:FindFirstChild("HasBuso") then
                                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Buso")
                                        end
                                    end
                                    v.HumanoidRootPart.CanCollide = false
                                    v.Humanoid.WalkSpeed = 0
                                    toTarget(v.HumanoidRootPart.CFrame * CFrame.new(0, Distance_Auto_Farm, 0))
                                    NeedAttacking = true
                                    sethiddenproperty(game.Players.LocalPlayer, "SimulationRadius", math.huge)
                                until not Get_Cursed or not v.Parent or v.Humanoid.Health <= 0
                                NeedAttacking = false
                            end
                        end
                    end
                else
                    toTarget(CFrame.new(-12318.193359375, 601.9518432617188, -6538.662109375))
                    fask.wait(.5)
                    toTarget(game:GetService("Workspace").Map.Turtle.Cursed.BossDoor.CFrame)
                end
            end
        end)
    end
end)

Tabs.FindThird:AddParagraph({
    Title = "Auto Soul Guitar",
    Content = "Auto Soul Guitar Fully [Maybe]"
})

local GetSoulGuitar = Tabs.FindThird:AddToggle("Auto_Quest_Soul_Guitar", {
    Title = "Auto Soul Guitar",
    Default = Auto_Quest_Soul_Guitar
})

GetSoulGuitar:OnChanged(function(value)
    Auto_Quest_Soul_Guitar = value
    if value == false then
        toTarget(game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame)
    end
    Save()
end)

LPH_JIT_MAX(function()
    fask.spawn(function() -- Bring Mob Function
        while wait() do
            if StartSoulGuitarMagnt then
                pcall(function()
                    for i, v in pairs(game.Workspace.Enemies:GetChildren()) do
                        if v.Name == "Living Zombie [Lv. 2000]" then
                            v.HumanoidRootPart.CFrame = CFrame.new(-10138.3974609375, 138.6524658203125,
                                5902.89208984375)
                            v.Head.CanCollide = false
                            v.Humanoid.Sit = false
                            v.HumanoidRootPart.CanCollide = false
                            v.Humanoid.JumpPower = 0
                            v.Humanoid.WalkSpeed = 0
                            if v.Humanoid:FindFirstChild('Animator') then
                                v.Humanoid:FindFirstChild('Animator'):Destroy()
                            end
                            sethiddenproperty(game.Players.LocalPlayer, "SimulationRadius", math.huge)
                        end
                    end
                end)
            end
        end
    end)
end)()

fask.spawn(function()
    while wait() do
        pcall(function()
            if GetWeaponInventory("Soul Guitar") == false then
                if Auto_Quest_Soul_Guitar then
                    if GetMaterial("Bones") >= 500 and GetMaterial("Ectoplasm") >= 250 and GetMaterial("Dark Fragment") >=
                        1 then
                        if (CFrame.new(-9681.458984375, 6.139880657196045, 6341.3720703125).Position -
                            game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <=
                            3000 then
                            if game:GetService("Workspace").Map["Haunted Castle"].Candle1.Transparency == 0 then
                                local Remotes = game.ReplicatedStorage:WaitForChild("Remotes");
                                local __CommF = Remotes:WaitForChild("CommF_");
                                local GuitarProgress = __CommF:InvokeServer("GuitarPuzzleProgress", "Check");
                                if not GuitarProgress then
                                    local gravestoneEvent = game.ReplicatedStorage.Remotes.CommF_:InvokeServer(
                                        "gravestoneEvent", 2);
                                    if gravestoneEvent == true then
                                        __CommF:InvokeServer("gravestoneEvent", 2, true);
                                    else
                                        if Auto_Quest_Soul_Guitar_Hop then
                                            ServerFunc:NormalTeleport()
                                        end
                                    end
                                end
                                if GuitarProgress then
                                    local Swamp = GuitarProgress.Swamp;
                                    local Gravestones = GuitarProgress.Gravestones;
                                    local Ghost = GuitarProgress.Ghost;
                                    local Trophies = GuitarProgress.Trophies;
                                    local Pipes = GuitarProgress.Pipes;
                                    local CraftedOnce = GuitarProgress.CraftedOnce;
                                    if Swamp and Gravestones and Ghost and Trophies and Pipes then
                                        Auto_Quest_Soul_Guitar = false
                                    end
                                    if not Swamp then
                                        repeat
                                            wait()
                                            Tween(CFrame.new(-10141.462890625, 138.6524658203125, 5935.06298828125) *
                                                      CFrame.new(0, 30, 0))
                                        until game.Players.LocalPlayer:DistanceFromCharacter(Vector3.new(
                                            -10141.462890625, 138.6524658203125, 5935.06298828125)) <= 100
                                        for i, v in pairs(game.Workspace.Enemies:GetChildren()) do
                                            if v.Name == "Living Zombie [Lv. 2000]" then
                                                if v:FindFirstChild('Humanoid') then
                                                    if v:FindFirstChild('HumanoidRootPart') then
                                                        if game.Players.LocalPlayer:DistanceFromCharacter(
                                                            v.HumanoidRootPart.Position) <= 2000 then
                                                            repeat
                                                                wait()
                                                                if Auto_Haki then
                                                                    if not game.Players.LocalPlayer.Character:FindFirstChild(
                                                                        "HasBuso") then
                                                                        game:GetService("ReplicatedStorage").Remotes
                                                                            .CommF_:InvokeServer("Buso")
                                                                    end
                                                                end
                                                                if not game.Players.LocalPlayer.Character:FindFirstChild(
                                                                    Selected_Weapons) then
                                                                    wait()
                                                                    EquipWeapon(Selected_Weapons)
                                                                end
                                                                if not Fast_Attack then
                                                                    game:GetService 'VirtualUser':CaptureController()
                                                                    game:GetService 'VirtualUser':Button1Down(
                                                                        Vector2.new(1280, 672))
                                                                end
                                                                v.HumanoidRootPart.Size = Vector3.new(60, 60, 60)
                                                                v.HumanoidRootPart.Transparency = 1
                                                                v.HumanoidRootPart.CFrame = CFrame.new(
                                                                    -10138.3974609375, 138.6524658203125,
                                                                    5902.89208984375)
                                                                StartSoulGuitarMagnt = true
                                                                v.Humanoid.JumpPower = 0
                                                                v.Humanoid.WalkSpeed = 0
                                                                v.HumanoidRootPart.CanCollide = false
                                                                v.Humanoid:ChangeState(11)
                                                                toTarget(v.HumanoidRootPart.CFrame *
                                                                             CFrame.new(0, 30, 15))
                                                            until not v.Parent or v.Humanoid.Health <= 0 or
                                                                not v:FindFirstChild('HumanoidRootPart') or
                                                                not v:FindFirstChild('Humanoid') or
                                                                not Auto_Quest_Soul_Guitar
                                                            StartSoulGuitarMagnt = false
                                                        end
                                                    end
                                                end
                                            end
                                        end
                                    end
                                    wait(1)
                                    if Swamp and not Gravestones then
                                        __CommF:InvokeServer("GuitarPuzzleProgress", "Gravestones");
                                    end
                                    wait(1)
                                    if Swamp and Gravestones and not Ghost then
                                        __CommF:InvokeServer("GuitarPuzzleProgress", "Ghost");
                                    end
                                    wait(1)
                                    if Swamp and Gravestones and Ghost and not Trophies then
                                        __CommF:InvokeServer("GuitarPuzzleProgress", "Trophies");
                                    end
                                    wait(1)
                                    if Swamp and Gravestones and Ghost and Trophies and not Pipes then
                                        __CommF:InvokeServer("GuitarPuzzleProgress", "Pipes");
                                    end
                                end
                            else
                                if string.find(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(
                                    "gravestoneEvent", 2), "Error") then
                                    print("Go to Grave")
                                    toTarget(CFrame.new(-8653.2060546875, 140.98487854003906, 6160.033203125))
                                elseif string.find(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(
                                    "gravestoneEvent", 2), "Nothing") then
                                    print("Wait Next Night")
                                else
                                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("gravestoneEvent",
                                        2, true)
                                end
                            end
                        else
                            toTarget(CFrame.new(-9681.458984375, 6.139880657196045, 6341.3720703125))
                        end
                    else
                        if GetMaterial("Ectoplasm") <= 250 then
                            if World2 then
                                if game:GetService("Workspace").Enemies:FindFirstChild("Ship Deckhand [Lv. 1250]") or
                                    game:GetService("Workspace").Enemies:FindFirstChild("Ship Engineer [Lv. 1275]") or
                                    game:GetService("Workspace").Enemies:FindFirstChild("Ship Steward [Lv. 1300]") or
                                    game:GetService("Workspace").Enemies:FindFirstChild("Ship Officer [Lv. 1325]") or
                                    game:GetService("Workspace").Enemies:FindFirstChild("Arctic Warrior [Lv. 1350]") then
                                    for i, v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                                        if v.Name == "Ship Deckhand [Lv. 1250]" or v.Name == "Ship Engineer [Lv. 1275]" or
                                            v.Name == "Ship Steward [Lv. 1300]" or v.Name == "Ship Officer [Lv. 1325]" or
                                            v.Name == "Arctic Warrior [Lv. 1350]" then
                                            if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and
                                                v.Humanoid.Health > 0 then
                                                repeat
                                                    wait()
                                                    StartMagnet = true
                                                    NeedAttacking = true
                                                    if Auto_Haki then
                                                        if not game.Players.LocalPlayer.Character:FindFirstChild(
                                                            "HasBuso") then
                                                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(
                                                                "Buso")
                                                        end
                                                    end
                                                    if not game.Players.LocalPlayer.Character:FindFirstChild(
                                                        Selected_Weapons) then
                                                        wait()
                                                        EquipWeapon(Selected_Weapons)
                                                    end
                                                    PosMon = v.HumanoidRootPart.CFrame
                                                    if not Fast_Attack then
                                                        game:GetService 'VirtualUser':CaptureController()
                                                        game:GetService 'VirtualUser'
                                                            :Button1Down(Vector2.new(1280, 672))
                                                    end
                                                    v.HumanoidRootPart.Size = Vector3.new(60, 60, 60)
                                                    v.HumanoidRootPart.Transparency = 1
                                                    v.Humanoid.JumpPower = 0
                                                    v.Humanoid.WalkSpeed = 0
                                                    v.HumanoidRootPart.CanCollide = false
                                                    v.Humanoid:ChangeState(11)
                                                    toTarget(v.HumanoidRootPart.CFrame *
                                                                 CFrame.new(0, Distance_Auto_Farm, 0))
                                                until not Auto_Quest_Soul_Guitar or not v.Parent or v.Humanoid.Health <=
                                                    0
                                                StartMagnet = false
                                                NeedAttacking = false
                                            end
                                        end
                                    end
                                else
                                    StartMagnet = false
                                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",
                                        Vector3.new(923.21252441406, 126.9760055542, 32852.83203125))
                                end
                            else
                                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("TravelDressrosa")
                            end
                        elseif GetMaterial("Dark Fragment") < 1 then
                            if World2 then
                                if game.ReplicatedStorage:FindFirstChild("Darkbeard [Lv. 1000] [Raid Boss]") or
                                    game:GetService("Workspace").Enemies:FindFirstChild(
                                        "Darkbeard [Lv. 1000] [Raid Boss]") then
                                    for i, v in pairs(game.Workspace.Enemies:GetChildren()) do
                                        if v.Name == "Darkbeard [Lv. 1000] [Raid Boss]" and v.Humanoid.Health > 0 and
                                            v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") then
                                            repeat
                                                wait()
                                                NeedAttacking = true
                                                if Auto_Haki then
                                                    if not game.Players.LocalPlayer.Character:FindFirstChild("HasBuso") then
                                                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(
                                                            "Buso")
                                                    end
                                                end
                                                if not game.Players.LocalPlayer.Character:FindFirstChild(
                                                    Selected_Weapons) then
                                                    wait()
                                                    EquipWeapon(Selected_Weapons)
                                                end
                                                if not Fast_Attack then
                                                    game:GetService 'VirtualUser':CaptureController()
                                                    game:GetService 'VirtualUser':Button1Down(Vector2.new(1280, 672))
                                                end
                                                v.HumanoidRootPart.Size = Vector3.new(60, 60, 60)
                                                v.HumanoidRootPart.Transparency = 1
                                                v.Humanoid.JumpPower = 0
                                                v.Humanoid.WalkSpeed = 0
                                                v.HumanoidRootPart.CanCollide = false
                                                v.Humanoid:ChangeState(11)
                                                toTarget(v.HumanoidRootPart.CFrame *
                                                             CFrame.new(0, Distance_Auto_Farm, 0))
                                            until Auto_Quest_Soul_Guitar or v.Humanoid.Health <= 0
                                        end
                                    end
                                else
                                    toTarget(CFrame.new(3798.4575195313, 13.826690673828, -3399.806640625))
                                end
                            else
                                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("TravelDressrosa")
                            end
                        elseif GetMaterial("Bones") <= 500 then
                            if World3 then
                                if game:GetService("Workspace").Enemies:FindFirstChild("Reborn Skeleton [Lv. 1975]") or
                                    game:GetService("Workspace").Enemies:FindFirstChild("Living Zombie [Lv. 2000]") or
                                    game:GetService("Workspace").Enemies:FindFirstChild("Demonic Soul [Lv. 2025]") or
                                    game:GetService("Workspace").Enemies:FindFirstChild("Posessed Mummy [Lv. 2050]") then
                                    for i, v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                                        if v.Name == "Reborn Skeleton [Lv. 1975]" or v.Name ==
                                            "Living Zombie [Lv. 2000]" or v.Name == "Demonic Soul [Lv. 2025]" or v.Name ==
                                            "Posessed Mummy [Lv. 2050]" then
                                            if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and
                                                v.Humanoid.Health > 0 then
                                                repeat
                                                    wait()
                                                    StartMagnet = true
                                                    NeedAttacking = true
                                                    if Auto_Haki then
                                                        if not game.Players.LocalPlayer.Character:FindFirstChild(
                                                            "HasBuso") then
                                                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(
                                                                "Buso")
                                                        end
                                                    end
                                                    if not game.Players.LocalPlayer.Character:FindFirstChild(
                                                        Selected_Weapons) then
                                                        wait()
                                                        EquipWeapon(Selected_Weapons)
                                                    end
                                                    PosMon = v.HumanoidRootPart.CFrame
                                                    if not Fast_Attack then
                                                        game:GetService 'VirtualUser':CaptureController()
                                                        game:GetService 'VirtualUser'
                                                            :Button1Down(Vector2.new(1280, 672))
                                                    end
                                                    v.HumanoidRootPart.Size = Vector3.new(60, 60, 60)
                                                    v.HumanoidRootPart.Transparency = 1
                                                    v.Humanoid.JumpPower = 0
                                                    v.Humanoid.WalkSpeed = 0
                                                    v.HumanoidRootPart.CanCollide = false
                                                    v.Humanoid:ChangeState(11)
                                                    toTarget(v.HumanoidRootPart.CFrame *
                                                                 CFrame.new(0, Distance_Auto_Farm, 0))
                                                until not Auto_Quest_Soul_Guitar or v.Humanoid.Health <= 0 or
                                                    not v.Parent or v.Humanoid.Health <= 0
                                                StartMagnet = false
                                                NeedAttacking = false
                                            end
                                        end
                                    end
                                else
                                    toTarget(CFrame.new(-9504.8564453125, 172.14292907714844, 6057.259765625))
                                end
                            else
                                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("TravelZou")
                            end
                        end
                    end
                end
            end
        end)
    end
end)

Tabs.FindThird:AddParagraph({
    Title = "Miscellaneous",
    Content = "miscellaneous function in tab"
})

local Holy_Torch = Tabs.FindThird:AddToggle("Auto_Holy_Torch", {
    Title = "Auto Holy Torch",
    Default = Auto_Holy_Torch
})
local PiratesRaid = Tabs.FindThird:AddToggle("PirateRaid", {
    Title = "Auto Farm Pirates Raid",
    Default = PirateRaid
})

local RainbowHaki = Tabs.FindThird:AddToggle("Auto_Rainbow_Haki", {
    Title = "Auto Rainbow Haki",
    Default = Auto_Rainbow_Haki
})
local MusketeerHat = Tabs.FindThird:AddToggle("Auto_Musketeer_Hat", {
    Title = "Auto Musketeer Hat",
    Default = Auto_Musketeer_Hat
})

local ObservationV2 = Tabs.FindThird:AddToggle("Auto_Observation_V2", {
    Title = "Auto Observation V2",
    Default = Auto_Observation_V2
})
local UnJiRaid = Tabs.FindThird:AddToggle("Auto_Dough_V2", {
    Title = "Auto Unlock Dough Dungeon",
    Default = Auto_Dough_V2
})
local UnPhiRaid = Tabs.FindThird:AddToggle("AutoFinishPhoenixDun", {
    Title = "Auto Unlock Phoenix Dungeon",
    Default = AutoFinishPhoenixDun
})

Holy_Torch:OnChanged(function(value)
    Auto_Holy_Torch = value
    if value == false then
        toTarget(game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame)
    end
    Save()
end)

PiratesRaid:OnChanged(function(value)
    PirateRaid = value
    if value == false then
        toTarget(game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame)
    end
    Save()
end)

RainbowHaki:OnChanged(function(value)
    Auto_Rainbow_Haki = value
    if value == false then
        toTarget(game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame)
    end
    Save()
end)

MusketeerHat:OnChanged(function(value)
    Auto_Musketeer_Hat = value
    if value == false then
        toTarget(game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame)
    end
    Save()
end)

ObservationV2:OnChanged(function(value)
    Auto_Observation_V2 = value
    if value == false then
        toTarget(game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame)
    end
    Save()
end)

UnJiRaid:OnChanged(function(value)
    Auto_Dough_V2 = value
    if value == false then
        toTarget(game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame)
    end
    Save()
end)

UnPhiRaid:OnChanged(function(value)
    AutoFinishPhoenixDun = value
end)

fask.spawn(function()
    while wait() do
        if Auto_Holy_Torch then
            if not game:GetService("Players").LocalPlayer.Character:FindFirstChild("Holy Torch") and
                not game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Holy Torch") then
                print("You dont have torch")
            else
                repeat
                    toTarget(CFrame.new(-10752, 417, -9366))
                    wait()
                until not Auto_Holy_Torch or
                    (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - Vector3.new(-10752, 417, -9366)).Magnitude <=
                    10
                wait(1)
                repeat
                    toTarget(CFrame.new(-11672, 334, -9474))
                    wait()
                until not Auto_Holy_Torch or
                    (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - Vector3.new(-11672, 334, -9474)).Magnitude <=
                    10
                wait(1)
                repeat
                    toTarget(CFrame.new(-12132, 521, -10655))
                    wait()
                until not Auto_Holy_Torch or
                    (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - Vector3.new(-12132, 521, -10655)).Magnitude <=
                    10
                wait(1)
                repeat
                    toTarget(CFrame.new(-13336, 486, -6985))
                    wait()
                until not Auto_Holy_Torch or
                    (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - Vector3.new(-13336, 486, -6985)).Magnitude <=
                    10
                wait(1)
                repeat
                    toTarget(CFrame.new(-13489, 332, -7925))
                    wait()
                until not Auto_Holy_Torch or
                    (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - Vector3.new(-13489, 332, -7925)).Magnitude <=
                    10
            end
        else
            toTarget(game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame)
            break
        end
    end
end)

spawn(function()
    while wait() do
        pcall(function()
            if PirateRaid then
                local PiratesWaitPos = Vector3.new(-4999.45, 318.181, -3010.54)
                if (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - PiratesWaitPos).magnitude > 1000 then
                    toTarget(PiratesWaitPos)
                else
                    for i, v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                        if (v.HumanoidRootPart.Position -
                            game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).magnitude <= 750 then
                            repeat
                                wait()
                                StartMagnet = true
                                NeedAttacking = true
                                if Auto_Haki then
                                    if not game.Players.LocalPlayer.Character:FindFirstChild("HasBuso") then
                                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Buso")
                                    end
                                end
                                if not game.Players.LocalPlayer.Character:FindFirstChild(Selected_Weapons) then
                                    wait()
                                    EquipWeapon(Selected_Weapons)
                                end
                                PosMon = v.HumanoidRootPart.CFrame
                                if not Fast_Attack then
                                    game:GetService 'VirtualUser':CaptureController()
                                    game:GetService 'VirtualUser':Button1Down(Vector2.new(1280, 672))
                                end
                                v.HumanoidRootPart.Size = Vector3.new(60, 60, 60)
                                v.HumanoidRootPart.Transparency = 1
                                v.Humanoid.JumpPower = 0
                                v.Humanoid.WalkSpeed = 0
                                v.HumanoidRootPart.CanCollide = false
                                v.Humanoid:ChangeState(11)
                                toTarget(v.HumanoidRootPart.CFrame * CFrame.new(0, Distance_Auto_Farm, 0))
                            until not PirateRaid or not v.Parent or v.Humanoid.Health <= 0
                            StartMagnet = false
                            NeedAttacking = false
                        else
                            toTarget(PiratesWaitPos)
                        end
                    end
                end
            end
        end)
    end
end)

fask.spawn(function()
    while wait() do
        pcall(function()
            if Auto_Rainbow_Haki then
                if game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == false then
                    -- [[ Fast ]]
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("HornedMan", "Bet")
                elseif game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == true and
                    string.find(
                        game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text,
                        "Stone") then
                    if game:GetService("Workspace").Enemies:FindFirstChild("Stone [Lv. 1550] [Boss]") then
                        for i, v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                            if v.Name == "Stone [Lv. 1550] [Boss]" then
                                repeat
                                    wait()
                                    StartMagnet = true
                                    NeedAttacking = true
                                    if Auto_Haki then
                                        if not game.Players.LocalPlayer.Character:FindFirstChild("HasBuso") then
                                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Buso")
                                        end
                                    end
                                    if not game.Players.LocalPlayer.Character:FindFirstChild(Selected_Weapons) then
                                        wait()
                                        EquipWeapon(Selected_Weapons)
                                    end
                                    PosMon = v.HumanoidRootPart.CFrame
                                    if not Fast_Attack then
                                        game:GetService 'VirtualUser':CaptureController()
                                        game:GetService 'VirtualUser':Button1Down(Vector2.new(1280, 672))
                                    end
                                    v.HumanoidRootPart.Size = Vector3.new(60, 60, 60)
                                    v.HumanoidRootPart.Transparency = 1
                                    v.Humanoid.JumpPower = 0
                                    v.Humanoid.WalkSpeed = 0
                                    v.HumanoidRootPart.CanCollide = false
                                    v.Humanoid:ChangeState(11)
                                    toTarget(v.HumanoidRootPart.CFrame * CFrame.new(0, Distance_Auto_Farm, 0))
                                until not Auto_Rainbow_Haki or v.Humanoid.Health <= 0 or not v.Parent or
                                    game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == false
                                StartMagnet = false
                                NeedAttacking = false
                            end
                        end
                    else
                        toTarget(CFrame.new(-1086.11621, 38.8425903, 6768.71436, 0.0231462717, -0.592676699,
                            0.805107772, 2.03251839e-05, 0.805323839, 0.592835128, -0.999732077, -0.0137055516,
                            0.0186523199))
                    end
                elseif game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == true and
                    string.find(
                        game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text,
                        "Island Empress") then
                    if game:GetService("Workspace").Enemies:FindFirstChild("Island Empress [Lv. 1675] [Boss]") then
                        for i, v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                            if v.Name == "Island Empress [Lv. 1675] [Boss]" then
                                repeat
                                    wait()
                                    StartMagnet = true
                                    NeedAttacking = true
                                    if Auto_Haki then
                                        if not game.Players.LocalPlayer.Character:FindFirstChild("HasBuso") then
                                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Buso")
                                        end
                                    end
                                    if not game.Players.LocalPlayer.Character:FindFirstChild(Selected_Weapons) then
                                        wait()
                                        EquipWeapon(Selected_Weapons)
                                    end
                                    PosMon = v.HumanoidRootPart.CFrame
                                    if not Fast_Attack then
                                        game:GetService 'VirtualUser':CaptureController()
                                        game:GetService 'VirtualUser':Button1Down(Vector2.new(1280, 672))
                                    end
                                    v.HumanoidRootPart.Size = Vector3.new(60, 60, 60)
                                    v.HumanoidRootPart.Transparency = 1
                                    v.Humanoid.JumpPower = 0
                                    v.Humanoid.WalkSpeed = 0
                                    v.HumanoidRootPart.CanCollide = false
                                    v.Humanoid:ChangeState(11)
                                    toTarget(v.HumanoidRootPart.CFrame * CFrame.new(0, Distance_Auto_Farm, 0))
                                until not Auto_Rainbow_Haki or v.Humanoid.Health <= 0 or not v.Parent or
                                    game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == false
                                StartMagnet = false
                                NeedAttacking = false
                            end
                        end
                    else
                        toTarget(CFrame.new(5713.98877, 601.922974, 202.751251, -0.101080291, -0, -0.994878292, -0, 1,
                            -0, 0.994878292, 0, -0.101080291))
                    end
                elseif string.find(game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle
                                       .Title.Text, "Kilo Admiral") then
                    if game:GetService("Workspace").Enemies:FindFirstChild("Kilo Admiral [Lv. 1750] [Boss]") then
                        for i, v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                            if v.Name == "Kilo Admiral [Lv. 1750] [Boss]" then
                                repeat
                                    wait()
                                    StartMagnet = true
                                    NeedAttacking = true
                                    if Auto_Haki then
                                        if not game.Players.LocalPlayer.Character:FindFirstChild("HasBuso") then
                                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Buso")
                                        end
                                    end
                                    if not game.Players.LocalPlayer.Character:FindFirstChild(Selected_Weapons) then
                                        wait()
                                        EquipWeapon(Selected_Weapons)
                                    end
                                    PosMon = v.HumanoidRootPart.CFrame
                                    if not Fast_Attack then
                                        game:GetService 'VirtualUser':CaptureController()
                                        game:GetService 'VirtualUser':Button1Down(Vector2.new(1280, 672))
                                    end
                                    v.HumanoidRootPart.Size = Vector3.new(60, 60, 60)
                                    v.HumanoidRootPart.Transparency = 1
                                    v.Humanoid.JumpPower = 0
                                    v.Humanoid.WalkSpeed = 0
                                    v.HumanoidRootPart.CanCollide = false
                                    v.Humanoid:ChangeState(11)
                                    toTarget(v.HumanoidRootPart.CFrame * CFrame.new(0, Distance_Auto_Farm, 0))
                                until not Auto_Rainbow_Haki or v.Humanoid.Health <= 0 or not v.Parent or
                                    game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == false
                                StartMagnet = false
                                NeedAttacking = false
                            end
                        end
                    else
                        toTarget(CFrame.new(2877.61743, 423.558685, -7207.31006, -0.989591599, -0, -0.143904909, -0,
                            1.00000012, -0, 0.143904924, 0, -0.989591479))
                    end
                elseif string.find(game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle
                                       .Title.Text, "Captain Elephant") then
                    if game:GetService("Workspace").Enemies:FindFirstChild("Captain Elephant [Lv. 1875] [Boss]") then
                        for i, v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                            if v.Name == "Captain Elephant [Lv. 1875] [Boss]" then
                                repeat
                                    wait()
                                    StartMagnet = true
                                    NeedAttacking = true
                                    if Auto_Haki then
                                        if not game.Players.LocalPlayer.Character:FindFirstChild("HasBuso") then
                                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Buso")
                                        end
                                    end
                                    if not game.Players.LocalPlayer.Character:FindFirstChild(Selected_Weapons) then
                                        wait()
                                        EquipWeapon(Selected_Weapons)
                                    end
                                    PosMon = v.HumanoidRootPart.CFrame
                                    if not Fast_Attack then
                                        game:GetService 'VirtualUser':CaptureController()
                                        game:GetService 'VirtualUser':Button1Down(Vector2.new(1280, 672))
                                    end
                                    v.HumanoidRootPart.Size = Vector3.new(60, 60, 60)
                                    v.HumanoidRootPart.Transparency = 1
                                    v.Humanoid.JumpPower = 0
                                    v.Humanoid.WalkSpeed = 0
                                    v.HumanoidRootPart.CanCollide = false
                                    v.Humanoid:ChangeState(11)
                                    toTarget(v.HumanoidRootPart.CFrame * CFrame.new(0, Distance_Auto_Farm, 0))
                                until not Auto_Rainbow_Haki or v.Humanoid.Health <= 0 or not v.Parent or
                                    game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == false
                                StartMagnet = false
                                NeedAttacking = false
                            end
                        end
                    else
                        toTarget(CFrame.new(-13485.0283, 331.709259, -8012.4873, 0.714521289, 7.98849911e-08,
                            0.69961375, -1.02065748e-07, 1, -9.94383065e-09, -0.69961375, -6.43015241e-08, 0.714521289))
                    end
                elseif string.find(game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle
                                       .Title.Text, "Beautiful Pirate") then
                    if game:GetService("Workspace").Enemies:FindFirstChild("Beautiful Pirate [Lv. 1950] [Boss]") then
                        for i, v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                            if v.Name == "Beautiful Pirate [Lv. 1950] [Boss]" then
                                repeat
                                    wait()
                                    StartMagnet = true
                                    NeedAttacking = true
                                    if Auto_Haki then
                                        if not game.Players.LocalPlayer.Character:FindFirstChild("HasBuso") then
                                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Buso")
                                        end
                                    end
                                    if not game.Players.LocalPlayer.Character:FindFirstChild(Selected_Weapons) then
                                        wait()
                                        EquipWeapon(Selected_Weapons)
                                    end
                                    PosMon = v.HumanoidRootPart.CFrame
                                    if not Fast_Attack then
                                        game:GetService 'VirtualUser':CaptureController()
                                        game:GetService 'VirtualUser':Button1Down(Vector2.new(1280, 672))
                                    end
                                    v.HumanoidRootPart.Size = Vector3.new(60, 60, 60)
                                    v.HumanoidRootPart.Transparency = 1
                                    v.Humanoid.JumpPower = 0
                                    v.Humanoid.WalkSpeed = 0
                                    v.HumanoidRootPart.CanCollide = false
                                    v.Humanoid:ChangeState(11)
                                    toTarget(v.HumanoidRootPart.CFrame * CFrame.new(0, Distance_Auto_Farm, 0))
                                until not Auto_Rainbow_Haki or v.Humanoid.Health <= 0 or not v.Parent or
                                    game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == false
                                StartMagnet = false
                                NeedAttacking = false
                            end
                        end
                    else
                        toTarget(CFrame.new(5312.3598632813, 20.141201019287, -10.158538818359))
                    end
                else
                    toTarget(CFrame.new(-11892.0703125, 930.57672119141, -8760.1591796875))
                    if (Vector3.new(-11892.0703125, 930.57672119141, -8760.1591796875) -
                        game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 30 then
                        wait(1.5)
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("HornedMan", "Bet")
                    end
                end
            end
        end)
    end
end)

fask.spawn(function()
    while wait() do
        pcall(function()
            if Auto_Musketeer_Hat then
                if game:GetService("Players").LocalPlayer.Data.Level.Value >= 1800 and
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CitizenQuestProgress")
                        .KilledBandits == false then
                    if string.find(game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle
                                       .Title.Text, "Forest Pirate") and
                        string.find(
                            game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text,
                            "50") and game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == true then
                        if game:GetService("Workspace").Enemies:FindFirstChild("Forest Pirate [Lv. 1825]") then
                            for i, v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                                if v.Name == "Forest Pirate [Lv. 1825]" then
                                    repeat
                                        wait()
                                        StartMagnet = true
                                        NeedAttacking = true
                                        if Auto_Haki then
                                            if not game.Players.LocalPlayer.Character:FindFirstChild("HasBuso") then
                                                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Buso")
                                            end
                                        end
                                        if not game.Players.LocalPlayer.Character:FindFirstChild(Selected_Weapons) then
                                            wait()
                                            EquipWeapon(Selected_Weapons)
                                        end
                                        PosMon = v.HumanoidRootPart.CFrame
                                        if not Fast_Attack then
                                            game:GetService 'VirtualUser':CaptureController()
                                            game:GetService 'VirtualUser':Button1Down(Vector2.new(1280, 672))
                                        end
                                        v.HumanoidRootPart.Size = Vector3.new(60, 60, 60)
                                        v.HumanoidRootPart.Transparency = 1
                                        v.Humanoid.JumpPower = 0
                                        v.Humanoid.WalkSpeed = 0
                                        v.HumanoidRootPart.CanCollide = false
                                        v.Humanoid:ChangeState(11)
                                        toTarget(v.HumanoidRootPart.CFrame * CFrame.new(0, Distance_Auto_Farm, 0))
                                    until not Auto_Musketeer_Hat or v.Humanoid.Health <= 0 or not v.Parent or
                                        game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == false
                                    StartMagnet = false
                                    NeedAttacking = false
                                end
                            end
                        else
                            toTarget(CFrame.new(-13206.452148438, 425.89199829102, -7964.5537109375))
                        end
                    else
                        toTarget(CFrame.new(-12443.8671875, 332.40396118164, -7675.4892578125))
                        if (Vector3.new(-12443.8671875, 332.40396118164, -7675.4892578125) -
                            game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 30 then
                            wait(1.5)
                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StartQuest",
                                "CitizenQuest", 1)
                        end
                    end
                elseif game:GetService("Players").LocalPlayer.Data.Level.Value >= 1800 and
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CitizenQuestProgress").KilledBoss ==
                    false then
                    if game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible and
                        string.find(
                            game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text,
                            "Captain Elephant") and game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible ==
                        true then
                        if game:GetService("Workspace").Enemies:FindFirstChild("Captain Elephant [Lv. 1875] [Boss]") then
                            for i, v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                                if v.Name == "Captain Elephant [Lv. 1875] [Boss]" then
                                    OldCFrameElephant = v.HumanoidRootPart.CFrame
                                    repeat
                                        wait()
                                        StartMagnet = true
                                        NeedAttacking = true
                                        if Auto_Haki then
                                            if not game.Players.LocalPlayer.Character:FindFirstChild("HasBuso") then
                                                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Buso")
                                            end
                                        end
                                        if not game.Players.LocalPlayer.Character:FindFirstChild(Selected_Weapons) then
                                            wait()
                                            EquipWeapon(Selected_Weapons)
                                        end
                                        PosMon = v.HumanoidRootPart.CFrame
                                        if not Fast_Attack then
                                            game:GetService 'VirtualUser':CaptureController()
                                            game:GetService 'VirtualUser':Button1Down(Vector2.new(1280, 672))
                                        end
                                        v.HumanoidRootPart.Size = Vector3.new(60, 60, 60)
                                        v.HumanoidRootPart.Transparency = 1
                                        v.Humanoid.JumpPower = 0
                                        v.Humanoid.WalkSpeed = 0
                                        v.HumanoidRootPart.CanCollide = false
                                        v.Humanoid:ChangeState(11)
                                        toTarget(v.HumanoidRootPart.CFrame * CFrame.new(0, Distance_Auto_Farm, 0))
                                    until not Auto_Musketeer_Hat or v.Humanoid.Health <= 0 or not v.Parent or
                                        game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == false
                                    StartMagnet = false
                                    NeedAttacking = false
                                end
                            end
                        else
                            toTarget(CFrame.new(-13374.889648438, 421.27752685547, -8225.208984375))
                        end
                    else
                        toTarget(CFrame.new(-12443.8671875, 332.40396118164, -7675.4892578125))
                        if (CFrame.new(-12443.8671875, 332.40396118164, -7675.4892578125).Position -
                            game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 4 then
                            wait(1.5)
                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CitizenQuestProgress",
                                "Citizen")
                        end
                    end
                elseif game:GetService("Players").LocalPlayer.Data.Level.Value >= 1800 and
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CitizenQuestProgress", "Citizen") ==
                    2 then
                    toTarget(CFrame.new(-12512.138671875, 340.39279174805, -9872.8203125))
                end
            end
        end)
    end
end)

--

fask.spawn(function()
    while wait() do
        pcall(function()
            if Auto_Observation_V2 then
                if game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == false then
                    repeat
                        toTarget(CFrame.new(-12444.78515625, 332.40396118164, -7673.1806640625))
                        wait()
                    until not Auto_Observation_V2 or (game.Players.LocalPlayer.Character.HumanoidRootPart.Position -
                        Vector3.new(-12444.78515625, 332.40396118164, -7673.1806640625)).Magnitude <= 10
                    wait(.5)
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CitizenQuestProgress", "Citizen")
                    wait(1)
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StartQuest", "CitizenQuest", 1)
                else
                    if game.Players.LocalPlayer.Backpack:FindFirstChild("Banana") and
                        game.Players.LocalPlayer.Backpack:FindFirstChild("Apple") and
                        game.Players.LocalPlayer.Backpack:FindFirstChild("Pineapple") then
                        repeat
                            toTarget(CFrame.new(-12444.78515625, 332.40396118164, -7673.1806640625))
                            wait()
                        until not Auto_Observation_V2 or (game.Players.LocalPlayer.Character.HumanoidRootPart.Position -
                            Vector3.new(-12444.78515625, 332.40396118164, -7673.1806640625)).Magnitude <= 10
                        wait(.5)
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CitizenQuestProgress",
                            "Citizen")
                    elseif game.Players.LocalPlayer.Backpack:FindFirstChild("Fruit Bowl") or
                        game.Players.LocalPlayer.Character:FindFirstChild("Fruit Bowl") then
                        repeat
                            toTarget(CFrame.new(-10920.125, 624.20275878906, -10266.995117188))
                            wait()
                        until not Auto_Observation_V2 or (game.Players.LocalPlayer.Character.HumanoidRootPart.Position -
                            Vector3.new(-10920.125, 624.20275878906, -10266.995117188)).Magnitude <= 10
                        wait(.5)
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("KenTalk2", "Start")
                        wait(1)
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("KenTalk2", "Buy")
                    elseif string.find(game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle
                                           .Title.Text, "Defeat 50 Forest Pirates") then
                        if game:GetService("Workspace").Enemies:FindFirstChild("Forest Pirate [Lv. 1825]") then
                            for i, v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                                if v.Name == "Forest Pirate [Lv. 1825]" then
                                    repeat
                                        wait()
                                        StartMagnet = true
                                        NeedAttacking = true
                                        if Auto_Haki then
                                            if not game.Players.LocalPlayer.Character:FindFirstChild("HasBuso") then
                                                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Buso")
                                            end
                                        end
                                        if not game.Players.LocalPlayer.Character:FindFirstChild(Selected_Weapons) then
                                            wait()
                                            EquipWeapon(Selected_Weapons)
                                        end
                                        PosMon = v.HumanoidRootPart.CFrame
                                        if not Fast_Attack then
                                            game:GetService 'VirtualUser':CaptureController()
                                            game:GetService 'VirtualUser':Button1Down(Vector2.new(1280, 672))
                                        end
                                        v.HumanoidRootPart.Size = Vector3.new(60, 60, 60)
                                        v.HumanoidRootPart.Transparency = 1
                                        v.Humanoid.JumpPower = 0
                                        v.Humanoid.WalkSpeed = 0
                                        v.HumanoidRootPart.CanCollide = false
                                        v.Humanoid:ChangeState(11)
                                        toTarget(v.HumanoidRootPart.CFrame * CFrame.new(0, Distance_Auto_Farm, 0))
                                    until not Auto_Observation_V2 or v.Humanoid.Health <= 0
                                    StartMagnet = false
                                    NeedAttacking = false
                                end
                            end
                        else
                            repeat
                                toTarget(CFrame.new(-13277.568359375, 370.34185791016, -7821.1572265625))
                                wait()
                            until not Auto_Observation_V2 or
                                (game.Players.LocalPlayer.Character.HumanoidRootPart.Position -
                                    Vector3.new(-13277.568359375, 370.34185791016, -7821.1572265625)).Magnitude <= 10
                        end
                    elseif game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text ==
                        "Defeat  Captain Elephant (0/1)" then
                        if game:GetService("Workspace").Enemies:FindFirstChild("Captain Elephant [Lv. 1875] [Boss]") then
                            for i, v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                                if v.Name == "Captain Elephant [Lv. 1875] [Boss]" then
                                    repeat
                                        wait()
                                        StartMagnet = true
                                        NeedAttacking = true
                                        if Auto_Haki then
                                            if not game.Players.LocalPlayer.Character:FindFirstChild("HasBuso") then
                                                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Buso")
                                            end
                                        end
                                        if not game.Players.LocalPlayer.Character:FindFirstChild(Selected_Weapons) then
                                            wait()
                                            EquipWeapon(Selected_Weapons)
                                        end
                                        PosMon = v.HumanoidRootPart.CFrame
                                        if not Fast_Attack then
                                            game:GetService 'VirtualUser':CaptureController()
                                            game:GetService 'VirtualUser':Button1Down(Vector2.new(1280, 672))
                                        end
                                        v.HumanoidRootPart.Size = Vector3.new(60, 60, 60)
                                        v.HumanoidRootPart.Transparency = 1
                                        v.Humanoid.JumpPower = 0
                                        v.Humanoid.WalkSpeed = 0
                                        v.HumanoidRootPart.CanCollide = false
                                        v.Humanoid:ChangeState(11)
                                        toTarget(v.HumanoidRootPart.CFrame * CFrame.new(0, Distance_Auto_Farm, 0))
                                    until not Auto_Observation_V2 or v.Humanoid.Health <= 0
                                    StartMagnet = false
                                    NeedAttacking = false
                                end
                            end
                        else
                            repeat
                                toTarget(CFrame.new(-13493.12890625, 318.89553833008, -8373.7919921875))
                                wait()
                            until not Auto_Observation_V2 or
                                (game.Players.LocalPlayer.Character.HumanoidRootPart.Position -
                                    Vector3.new(-13493.12890625, 318.89553833008, -8373.7919921875)).Magnitude <= 10
                        end
                    else
                        for i, v in pairs(game.Workspace:GetDescendants()) do
                            if v.Name == "Apple" or v.Name == "Banana" or v.Name == "Pineapple" then
                                v.Handle.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame *
                                                      CFrame.new(0, 1, 10)
                                wait()
                                firetouchinterest(game.Players.LocalPlayer.Character.HumanoidRootPart, v.Handle, 0)
                                wait()
                            end
                        end
                    end
                end
            end
        end)
    end
end)

DoughMob = {"Cookie Crafter [Lv. 2200]", "Cake Guard [Lv. 2225]", "Baking Staff [Lv. 2250]"}

fask.spawn(function()
    while wait() do
        if Auto_Dough_V2 then
            if not game:GetService("Workspace").Map.CakeLoaf:FindFirstChild("RedDoor") then
                if game.Players.LocalPlayer.Character:FindFirstChild("Red Key") or
                    game.Players.LocalPlayer.Backpack:FindFirstChild("Red Key") then
                    local args = {
                        [1] = "CakeScientist",
                        [2] = "Check"
                    }

                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
                    local args = {
                        [1] = "RaidsNpc",
                        [2] = "Check"
                    }

                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
                end
            elseif game:GetService("Workspace").Map.CakeLoaf:FindFirstChild("RedDoor") then
                if game.Players.LocalPlayer.Character:FindFirstChild("Red Key") or
                    game.Players.LocalPlayer.Backpack:FindFirstChild("Red Key") then
                    RedDorTween = toTargetP(CFrame.new(-2681.97998, 64.3921585, -12853.7363, 0.149007782,
                        -1.87902192e-08, 0.98883605, 3.60619588e-08, 1, 1.35681812e-08, -0.98883605, 3.36376011e-08,
                        0.149007782))
                    if (CFrame.new(-2681.97998, 64.3921585, -12853.7363, 0.149007782, -1.87902192e-08, 0.98883605,
                        3.60619588e-08, 1, 1.35681812e-08, -0.98883605, 3.36376011e-08, 0.149007782).Position -
                        game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude <= 5 then
                        if RedDorTween then
                            RedDorTween:Stop()
                        end
                        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame =
                            CFrame.new(-2681.97998, 64.3921585, -12853.7363, 0.149007782, -1.87902192e-08, 0.98883605,
                                3.60619588e-08, 1, 1.35681812e-08, -0.98883605, 3.36376011e-08, 0.149007782)
                        wait(0.5)
                        EquipWeapon("Red Key")
                        wait(0.5)
                    end
                elseif game.Workspace:FindFirstChild("Enemies"):FindFirstChild("Dough King [Lv. 2300] [Raid Boss]") or
                    game:GetService("ReplicatedStorage"):FindFirstChild("Dough King [Lv. 2300] [Raid Boss]") then
                    if game:GetService("Workspace").Enemies:FindFirstChild("Dough King [Lv. 2300] [Raid Boss]") then
                        for i, v in pairs(game.Workspace.Enemies:GetChildren()) do
                            if Auto_Dough_V2 and v.Name == "Dough King [Lv. 2300] [Raid Boss]" and
                                v:FindFirstChild("HumanoidRootPart") and v:FindFirstChild("Humanoid") and
                                v.Humanoid.Health > 0 then
                                repeat
                                    wait()
                                    if (v.HumanoidRootPart.Position -
                                        game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude > 300 then
                                        Farmtween = toTarget(v.HumanoidRootPart.CFrame)
                                    elseif (v.HumanoidRootPart.Position -
                                        game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude <= 300 then
                                        if Farmtween then
                                            Farmtween:Stop()
                                        end
                                        EquipWeapon(Selected_Weapons)
                                        v.HumanoidRootPart.Size = Vector3.new(55, 55, 55)
                                        NeedAttacking = true
                                        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.HumanoidRootPart
                                                                                                         .CFrame *
                                                                                                         CFrame.new(0,
                                                30, 0)
                                    end
                                until not Auto_Dough_V2 or not v.Parent or v.Humanoid.Health <= 0 or
                                    game:GetService("ReplicatedStorage")
                                        :FindFirstChild("Dough King [Lv. 2300] [Raid Boss]")
                                NeedAttacking = false
                            end
                        end
                    else
                        if game:GetService("Workspace").Map.CakeLoaf.BigMirror.Other.Transparency == 0 then
                            NeedAttacking = false
                            Questtween = toTargetP(CFrame.new(-2151.82153, 149.315704, -12404.9053))
                            if (CFrame.new(-2151.82153, 149.315704, -12404.9053).Position -
                                game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude <= 300 then
                                if Questtween then
                                    Questtween:Stop()
                                end
                                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-2151.82153,
                                    149.315704, -12404.9053)
                                wait(1)
                            end
                        end
                    end
                elseif game.Players.LocalPlayer.Character:FindFirstChild("Sweet Chalice") or
                    game.Players.LocalPlayer.Backpack:FindFirstChild("Sweet Chalice") then
                    -- if string.find(tostring(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CakePrinceSpawner", true)),"already") then

                    -- else
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CakePrinceSpawner", true)
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CakePrinceSpawner")
                    if game:GetService("Workspace").Enemies:FindFirstChild("Cookie Crafter [Lv. 2200]") or
                        game:GetService("Workspace").Enemies:FindFirstChild("Cake Guard [Lv. 2225]") or
                        game:GetService("Workspace").Enemies:FindFirstChild("Baking Staff [Lv. 2250]") or
                        game:GetService("Workspace").Enemies:FindFirstChild("Head Baker [Lv. 2275]") then
                        for i, v in pairs(game.Workspace.Enemies:GetChildren()) do
                            if Auto_Dough_V2 and
                                (v.Name == "Cookie Crafter [Lv. 2200]" or v.Name == "Cake Guard [Lv. 2225]" or v.Name ==
                                    "Baking Staff [Lv. 2250]" or v.Name == "Head Baker [Lv. 2275]") and
                                v:FindFirstChild("HumanoidRootPart") and v:FindFirstChild("Humanoid") and
                                v.Humanoid.Health > 0 then
                                repeat
                                    wait()
                                    if (v.HumanoidRootPart.Position -
                                        game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude > 300 then
                                        Farmtween = toTarget(v.HumanoidRootPart.CFrame)
                                    elseif (v.HumanoidRootPart.Position -
                                        game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude <= 300 then
                                        if Farmtween then
                                            Farmtween:Stop()
                                        end
                                        NeedAttacking = true
                                        PosFarmCakePrince = v.HumanoidRootPart.CFrame
                                        EquipWeapon(Selected_Weapons)
                                        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.HumanoidRootPart
                                                                                                         .CFrame *
                                                                                                         CFrame.new(0,
                                                30, 0)
                                        MagnetFarmCakePrince = true
                                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(
                                            "CakePrinceSpawner", true)
                                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(
                                            "CakePrinceSpawner")
                                    end
                                until not Auto_Dough_V2 or not v.Parent or v.Humanoid.Health <= 0
                                NeedAttacking = false
                                MagnetFarmCakePrince = false
                            end
                        end
                    else
                        MagnetFarmCakePrince = false
                        NeedAttacking = false
                        Questtween = toTarget(CFrame.new(-2077, 252, -12373))
                        if (CFrame.new(-2077, 252, -12373).Position -
                            game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude <= 300 then
                            if Questtween then
                                Questtween:Stop()
                            end
                            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-2077, 252, -12373)
                        end
                    end

                    -- end
                elseif (game.Players.LocalPlayer.Backpack:FindFirstChild("God's Chalice") or
                    game.Players.LocalPlayer.Character:FindFirstChild("God's Chalice")) and
                    GetMaterial("Conjured Cocoa") >= 10 then
                    game.ReplicatedStorage.Remotes.CommF_:InvokeServer("SweetChaliceNpc")
                    wait(0.2)
                elseif not game.Players.LocalPlayer.Backpack:FindFirstChild("God's Chalice") and
                    not game.Players.LocalPlayer.Character:FindFirstChild("God's Chalice") and
                    (game.Workspace.Enemies:FindFirstChild("Deandre [Lv. 1750]") or
                        game.Workspace.Enemies:FindFirstChild("Urban [Lv. 1750]") or
                        game.Workspace.Enemies:FindFirstChild("Diablo [Lv. 1750]") or
                        game.ReplicatedStorage:FindFirstChild("Deandre [Lv. 1750]") or
                        game.ReplicatedStorage:FindFirstChild("Urban [Lv. 1750]") or
                        game.ReplicatedStorage:FindFirstChild("Diablo [Lv. 1750]")) then
                    if game.Players.LocalPlayer.PlayerGui.Main.Quest.Visible == true then
                        if string.find(game.Players.LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text,
                            "Diablo") or
                            string.find(game.Players.LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text,
                                "Urban") or
                            string.find(game.Players.LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text,
                                "Deandre") then
                            for i, v in pairs(game:GetService("ReplicatedStorage"):GetChildren()) do
                                if string.find(v.Name, "Diablo") then
                                    DoughTween = toTarget(v.HumanoidRootPart.CFrame)
                                    if (v.HumanoidRootPart.Position -
                                        game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude <= 150 then
                                        if DoughTween then
                                            DoughTween:Stop()
                                        end
                                        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.HumanoidRootPart
                                                                                                         .CFrame
                                    end
                                end
                                if string.find(v.Name, "Urban") then
                                    DoughTween = toTarget(v.HumanoidRootPart.CFrame)
                                    if (v.HumanoidRootPart.Position -
                                        game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude <= 150 then
                                        if DoughTween then
                                            DoughTween:Stop()
                                        end
                                        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.HumanoidRootPart
                                                                                                         .CFrame
                                    end
                                end
                                if string.find(v.Name, "Deandre") then
                                    DoughTween = toTarget(v.HumanoidRootPart.CFrame)
                                    if (v.HumanoidRootPart.Position -
                                        game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude <= 150 then
                                        if DoughTween then
                                            DoughTween:Stop()
                                        end
                                        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.HumanoidRootPart
                                                                                                         .CFrame
                                    end
                                end
                            end
                            for i, v in pairs(game.Workspace.Enemies:GetChildren()) do
                                if Auto_Dough_V2 and string.find(v.Name, "Diablo") and v:FindFirstChild("Humanoid") and
                                    v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
                                    repeat
                                        wait()
                                        if (v.HumanoidRootPart.Position -
                                            game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude >
                                            300 then
                                            Farmtween = toTarget(v.HumanoidRootPart.CFrame)
                                        elseif (v.HumanoidRootPart.Position -
                                            game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude <=
                                            300 then
                                            if Farmtween then
                                                Farmtween:Stop()
                                            end
                                            EquipWeapon(Selected_Weapons)
                                            NeedAttacking = true
                                            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame =
                                                v.HumanoidRootPart.CFrame * CFrame.new(0, 30, 0)
                                        end
                                    until not Auto_Dough_V2 or not v.Parent or v.Humanoid.Health <= 0
                                    NeedAttacking = false
                                end
                                if Auto_Dough_V2 and string.find(v.Name, "Urban") and v:FindFirstChild("Humanoid") and
                                    v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
                                    repeat
                                        wait()
                                        if (v.HumanoidRootPart.Position -
                                            game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude >
                                            300 then
                                            Farmtween = toTarget(v.HumanoidRootPart.CFrame)
                                        elseif (v.HumanoidRootPart.Position -
                                            game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude <=
                                            300 then
                                            if Farmtween then
                                                Farmtween:Stop()
                                            end
                                            EquipWeapon(Selected_Weapons)
                                            NeedAttacking = true
                                            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame =
                                                v.HumanoidRootPart.CFrame * CFrame.new(0, 30, 0)
                                        end
                                    until not Auto_Dough_V2 or not v.Parent or v.Humanoid.Health <= 0
                                    NeedAttacking = false
                                end
                                if Auto_Dough_V2 and string.find(v.Name, "Deandre") and v:FindFirstChild("Humanoid") and
                                    v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
                                    repeat
                                        wait()
                                        if (v.HumanoidRootPart.Position -
                                            game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude >
                                            300 then
                                            Farmtween = toTarget(v.HumanoidRootPart.CFrame)
                                        elseif (v.HumanoidRootPart.Position -
                                            game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude <=
                                            300 then
                                            if Farmtween then
                                                Farmtween:Stop()
                                            end
                                            EquipWeapon(Selected_Weapons)
                                            NeedAttacking = true
                                            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame =
                                                v.HumanoidRootPart.CFrame * CFrame.new(0, 30, 0)
                                        end
                                    until not Auto_Dough_V2 or not v.Parent or v.Humanoid.Health <= 0
                                    NeedAttacking = false
                                end
                            end
                        else
                            local string_1 = "EliteHunter";
                            local Target = game:GetService("ReplicatedStorage").Remotes["CommF_"];
                            Target:InvokeServer(string_1);
                        end
                    else
                        local string_1 = "EliteHunter";
                        local Target = game:GetService("ReplicatedStorage").Remotes["CommF_"];
                        Target:InvokeServer(string_1);
                    end
                else
                    if game:GetService("Workspace").Enemies:FindFirstChild("Candy Rebel [Lv. 2375]") or
                        game:GetService("Workspace").Enemies:FindFirstChild("Sweet Thief [Lv. 2350]") or
                        game:GetService("Workspace").Enemies:FindFirstChild("Chocolate Bar Battler [Lv. 2325]") or
                        game:GetService("Workspace").Enemies:FindFirstChild("Cocoa Warrior [Lv. 2300]") then
                        for i, v in pairs(game.Workspace.Enemies:GetChildren()) do
                            if Auto_Dough_V2 and
                                (v.Name == "Candy Rebel [Lv. 2375]" or v.Name == "Sweet Thief [Lv. 2350]" or v.Name ==
                                    "Chocolate Bar Battler [Lv. 2325]" or v.Name == "Cocoa Warrior [Lv. 2300]") and
                                v:FindFirstChild("HumanoidRootPart") and v:FindFirstChild("Humanoid") and
                                v.Humanoid.Health > 0 then
                                repeat
                                    wait()
                                    if (v.HumanoidRootPart.Position -
                                        game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude > 150 then
                                        Farmtween = toTarget(v.HumanoidRootPart.CFrame)
                                        NeedAttacking = false
                                    elseif (v.HumanoidRootPart.Position -
                                        game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude <= 150 then
                                        if Farmtween then
                                            Farmtween:Stop()
                                        end
                                        NeedAttacking = true
                                        PosFarmCoco = v.HumanoidRootPart.CFrame
                                        EquipWeapon(Selected_Weapons)
                                        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.HumanoidRootPart
                                                                                                         .CFrame *
                                                                                                         CFrame.new(0,
                                                30, 0)
                                        MagnetFarmCoco = true
                                    end
                                until not Auto_Dough_V2 or not v.Parent or v.Humanoid.Health <= 0
                                NeedAttacking = false
                                MagnetFarmCoco = false
                            end
                        end
                    else
                        MagnetFarmCoco = false
                        NeedAttacking = false
                        Questtween = toTarget(CFrame.new(620.6344604492188, 78.93644714355469, -12581.369140625))
                        if (CFrame.new(620.6344604492188, 78.93644714355469, -12581.369140625).Position -
                            game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude <= 150 then
                            if Questtween then
                                Questtween:Stop()
                            end
                            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(620.6344604492188,
                                78.93644714355469, -12581.369140625)
                        end
                    end
                end
            else
                print("Error Whyyy")
            end
        else
            break
        end
    end
end)

spawn(function()
    while wait() do
        if Auto_Dough_V2 then
            if MagnetFarmCakePrince then
                for i, v in pairs(game.Workspace.Enemies:GetChildren()) do
                    if MagnetFarmCakePrince and Auto_Dough_V2 and
                        (v.Name == "Cookie Crafter [Lv. 2200]" or v.Name == "Cake Guard [Lv. 2225]" or v.Name ==
                            "Baking Staff [Lv. 2250]" or v.Name == "Head Baker [Lv. 2275]") and
                        v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 and
                        (v.HumanoidRootPart.Position -
                            game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).magnitude <= 350 then
                        if InMyNetWork(v.HumanoidRootPart) then
                            v.HumanoidRootPart.CFrame = PosFarmCakePrince
                            v.HumanoidRootPart.CanCollide = false
                            v.HumanoidRootPart.Size = Vector3.new(60, 60, 60)
                        end
                    end
                end
            end
        else
            break
        end
    end
end)

spawn(function()
    while wait() do
        pcall(function()
            if AutoFinishPhoenixDun then
                if string.find(game:GetService("Players").LocalPlayer.Data.DevilFruit.Value, "Phoenix") then
                    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame =
                        CFrame.new(-2813.459716796875, 254.8035125732422, -12591.5029296875)
                end
            end
        end)
    end
end)

Tabs.FullMirage:AddParagraph({
    Title = "~ Full Moon ~",
    Content = "Yo you can see status Full Moon!"
})

-- local FullMoonStatus = Page4:Label("N/S")

-- pcall(function()
--     local MoonPhase = tonumber(game:GetService("Lighting"):GetAttribute("MoonPhase"))
--     if MoonPhase == 8 then
--         FullMoonStatus:Set("Moon 25% After Full Moon")
--     elseif MoonPhase == 7 then
--         FullMoonStatus:Set("Moon 50% After Full Moon")
--     elseif MoonPhase == 6 then
--         FullMoonStatus:Set("Moon 75% After Full Moon")
--     elseif MoonPhase == 5 then
--         FullMoonStatus:Set("Moon 100%")
--     elseif MoonPhase == 4 then
--         FullMoonStatus:Set("Moon 75%")
--     elseif MoonPhase == 3 then
--         FullMoonStatus:Set("Moon 50%")
--     elseif MoonPhase == 2 then
--         FullMoonStatus:Set("Moon 25%")
--     elseif MoonPhase == 1 then
--         FullMoonStatus:Set("Moon 0%")
--     end
-- end)
-- Page4:Button("Update Moon Status",function()
--     pcall(function()
--         local MoonPhase = tonumber(game:GetService("Lighting"):GetAttribute("MoonPhase"))
--         if MoonPhase == 8 then
--             FullMoonStatus:Set("Moon 25% After Full Moon")
--         elseif MoonPhase == 7 then
--             FullMoonStatus:Set("Moon 50% After Full Moon")
--         elseif MoonPhase == 6 then
--             FullMoonStatus:Set("Moon 75% After Full Moon")
--         elseif MoonPhase == 5 then
--             FullMoonStatus:Set("Moon 100%")
--         elseif MoonPhase == 4 then
--             FullMoonStatus:Set("Moon 75%")
--         elseif MoonPhase == 3 then
--             FullMoonStatus:Set("Moon 50%")
--         elseif MoonPhase == 2 then
--             FullMoonStatus:Set("Moon 25%")
--         elseif MoonPhase == 1 then
--             FullMoonStatus:Set("Moon 0%")
--         end
--     end)
-- end)

local FindFull = Tabs.FullMirage:AddToggle("Auto_Find_Full_Moon", {
    Title = "Auto Find Full Moon [HOP]",
    Default = Auto_Find_Full_Moon
})

FindFull:OnChanged(function(starts)
    Auto_Find_Full_Moon = starts
    Save()
    spawn(function()
        while fask.wait() do
            if Auto_Find_Full_Moon and (not Auto_Mirage_Island_Hop or not Auto_Mirage_Island) then
                local MoonPhase = tonumber(game:GetService("Lighting"):GetAttribute("MoonPhase"))
                if MoonPhase == 5 then
                    print('ez')
                    break
                else
                    ServerFunc:NormalTeleport()
                    fask.wait(2)
                end
            else
                break
            end
        end
    end)
end)

Tabs.FullMirage:AddButton({
    Title = "Check Full Moon",
    Description = "Check Full Moon (Image)",
    Callback = function()
        local ScreenGui = Instance.new("ScreenGui")
        local MoonImg = Instance.new("ImageLabel")

        ScreenGui.Name = "FullMoonLibrary"
        ScreenGui.Parent = game:GetService("CoreGui")
        ScreenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

        MoonImg.Name = "MoonImg"
        MoonImg.Parent = ScreenGui
        MoonImg.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
        MoonImg.BackgroundTransparency = 1.000
        MoonImg.Size = UDim2.new(0, 100, 0, 100)
        MoonImg.Image = game:GetService("Lighting").Sky.MoonTextureId

        wait(5)

        game:GetService("CoreGui"):FindFirstChild("FullMoonLibrary"):Destroy()

    end
})

Tabs.FullMirage:AddParagraph({
    Title = "~ Mirage ~",
    Content = "Yo you can see status Mirage!"
})

-- local MirageLabel = Page4:Label("Mirage Spawn : 🔴")

-- fask.spawn(function()
--     while wait() do 
--         pcall(function()
--             if game:GetService("Workspace").Map:FindFirstChild("MysticIsland") then
--                 MirageLabel:Set("Mirage Spawn : 🟢")
--             else
--                 MirageLabel:Set("Mirage Spawn : 🔴")
--             end
--         end)
--     end
-- end)

local FindMirage = Tabs.FullMirage:AddToggle("Auto_Mirage_Island", {
    Title = "Auto Mirage Island",
    Default = Auto_Mirage_Island
})
local FindMirageHop = Tabs.FullMirage:AddToggle("Auto_Mirage_Island_Hop", {
    Title = "Auto Mirage Island [HOP]",
    Default = Auto_Mirage_Island_Hop
})

local GrabChestMirage = Tabs.FullMirage:AddToggle("GrabChestMysticIsland", {
    Title = "Auto Grab Chest [Mirage]",
    Default = GrabChestMysticIsland
})
local FindMirageSHop = Tabs.FullMirage:AddToggle("FindFruitShop", {
    Title = "Auto Find Advance Shop",
    Default = FindFruitShop
})

FindMirage:OnChanged(function(value)
    Auto_Mirage_Island = value
    Save()
end)
FindMirageHop:OnChanged(function(value)
    Auto_Mirage_Island_Hop = value
    Save()
end)
GrabChestMirage:OnChanged(function(value)
    GrabChestMysticIsland = value
    spawn(function()
        while fask.wait() do
            if GrabChestMysticIsland then
                if game:GetService("Workspace").Map:FindFirstChild("MysticIsland") then
                    for i, v in pairs(game:GetService("Workspace").Map.MysticIsland.Chests:GetChildren()) do
                        if v.Name:match("Chest") and v:IsA("BasePart") and v.Transparency == 0 then
                            if ChestTarget then
                                ChestTarget:Stop()
                            end
                            repeat
                                fask.wait()
                                ChestTarget = toTarget(v.CFrame)
                                game:service('VirtualInputManager'):SendKeyEvent(true, "W", false, game)
                                fask.wait(0.123)
                                game:service('VirtualInputManager'):SendKeyEvent(false, "W", false, game)
                            until (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - v.Position).Magnitude <=
                                2 or not GrabChestMysticIsland or not v.Parent

                            if not GrabChestMysticIsland then
                                if tween then
                                    tween:Cancel()
                                end
                                break
                            end
                            for i = 1, 2 do
                                game:service('VirtualInputManager'):SendKeyEvent(true, "W", false, game)
                                fask.wait(0.123)
                                game:service('VirtualInputManager'):SendKeyEvent(false, "W", false, game)
                                fask.wait(0.123)
                                game:service('VirtualInputManager'):SendKeyEvent(true, 32, false, game)
                                fask.wait(0.123)
                                game:service('VirtualInputManager'):SendKeyEvent(false, 32, false, game)
                            end
                        end
                    end
                end

            end
        end
    end)
    Save()
end)
FindMirageSHop:OnChanged(function(starts)
    FindFruitShop = starts
    spawn(function()
        while fask.wait() do
            if FindFruitShop then
                if game:GetService("Workspace").Map:FindFirstChild("MysticIsland") then
                    if not game:GetService("Workspace").NPCs:FindFirstChild("Advanced Fruit Dealer") then
                        for i, v in pairs(game:GetService("Workspace").Map.MysticIsland.npcspawn:GetChildren()) do
                            if not game:GetService("Workspace").NPCs:FindFirstChild("Advanced Fruit Dealer") then
                                if NpSTarget then
                                    NpSTarget:Stop()
                                end
                                repeat
                                    fask.wait()
                                    NpSTarget = toTarget(v.CFrame)
                                until (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - v.Position).Magnitude <=
                                    10 or not FindFruitShop or not v.Parent
                                if not FindFruitShop or
                                    game:GetService("Workspace").NPCs:FindFirstChild("Advanced Fruit Dealer") then
                                    if tween then
                                        tween:Cancel()
                                    end
                                    break
                                end
                                fask.wait(0.1)
                            end
                        end
                    else
                        for i, v in pairs(game:GetService("Workspace").NPCs:GetChildren()) do
                            if v.Name == "Advanced Fruit Dealer" then
                                toTarget(v.HumanoidRootPart.CFrame * CFrame.new(0, 0, 0))
                            end
                        end
                    end
                end
                fask.wait(0.1)
            else
                break
            end
        end
    end)
end)

spawn(function()
    while wait() do
        pcall(function()
            if game:GetService("Workspace").Map:FindFirstChild("MysticIsland") then
                if Auto_Mirage_Island then
                    toTarget(game:GetService("Workspace").Map:FindFirstChild("MysticIsland").npcspawn.npcSpawn.CFrame)
                end
            else
                if Auto_Mirage_Island_Hop then
                    ServerFunc:NormalTeleport()
                end
            end
        end)
    end
end)

local ESPSS = loadstring(game:HttpGet(
    "https://raw.githubusercontent.com/xZcAtliftz/Apis/ecd29b46a1daacc67b88d16406966676c3f18cb3/ESP.lua"))()

Tabs.Players:AddParagraph({
    Title = "ESP",
    Content = "ESP Players and more!"
})

local ESPPlr = Tabs.Players:AddToggle("ESP_Players", {
    Title = "ESP Players",
    Default = _G.ESP_Players
})
local ESPflw = Tabs.Players:AddToggle("FlowerEsp", {
    Title = "ESP Flower",
    Default = _G.FlowerEsp
})
local ESPDF = Tabs.Players:AddToggle("DFEsp", {
    Title = "ESP Devil Fruits",
    Default = _G.DFEsp
})
local ESPIsland = Tabs.Players:AddToggle("IslandEsp", {
    Title = "ESP Island",
    Default = _G.IslandEsp
})
local ESPChest = Tabs.Players:AddToggle("ChestEsp", {
    Title = "ESP Chest",
    Default = _G.ChestEsp
})

ESPPlr:OnChanged(function(a)
    _G.ESP_Players = a
    while _G.ESP_Players do
        wait()
        PlrESP()
    end
end)

ESPflw:OnChanged(function(a)
    _G.FlowerEsp = a
    while _G.FlowerEsp do
        wait()
        FlowerESP()
    end
end)

ESPDF:OnChanged(function(a)
    _G.DFEsp = a
    while _G.DFEsp do
        wait()
        UpdateBfEsp()
    end
end)

ESPIsland:OnChanged(function(a)
    _G.IslandEsp = a
    while _G.IslandEsp do
        wait()
        IslandESP()
    end
end)

ESPChest:OnChanged(function(a)
    _G.ChestEsp = a
    while _G.ChestEsp do
        wait()
        ChestSESP()
    end
end)

getplayers = {}
for i, v in pairs(game.Players:GetChildren()) do
    if v.Name ~= game.Players.LocalPlayer.Name then
        table.insert(getplayers, v.Name)
    end
end

Tabs.Players:AddParagraph({
    Title = "Players",
    Content = "Main Select And Tp Plr"
})

local sy = {};

for a, w4 in pairs(game:GetService("Players"):GetChildren()) do
    if w4.Name ~= game.Players.LocalPlayer.Name then
        table.insert(sy, w4.Name);
    end
end

local PlrSelect = Tabs.Players:AddDropdown("Selected_Players", {
    Title = "Select Players",
    Values = sy,
    Multi = false,
    Default = 1
})

PlrSelect:OnChanged(function(value)
    _G.Selected_Players = value
end)

local SpecPlr = Tabs.Players:AddToggle("SpecPlr", {
    Title = "Spectator Player",
    Default = false
})

SpecPlr:OnChanged(function(value)
    if value then
        if game.Players:FindFirstChild(_G.Selected_Players) then
            game.Workspace.Camera.CameraSubject = game.Players:FindFirstChild(_G.Selected_Players).Character.Humanoid
        end
    else
        game.Workspace.Camera.CameraSubject = game.Players.LocalPlayer.Character.Humanoid
    end
end)

local TpPlrs = Tabs.Players:AddToggle("TpPlr", {
    Title = "Teleport to Player",
    Default = TpPlr
})

TpPlrs:OnChanged(function(value)
    TpPlr = value
    if value == false then
        toTarget(game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame)
    end
end)

fask.spawn(function()
    while fask.wait() do
        if TpPlr then
            toTarget(game:GetService("Players"):FindFirstChild(tostring(_G.Selected_Players)).Character.HumanoidRootPart
                         .CFrame)
        end
    end
end)

inmydick = LPH_JIT_MAX(function(name)
    if game:GetService("Players").LocalPlayer.Backpack:FindFirstChild(name) then
        return game:GetService("Players").LocalPlayer.Backpack:FindFirstChild(name)
    end
    local OutValue
    for i, v in pairs(game.Players.LocalPlayer.Character:GetChildren()) do
        if v:IsA("Tool") then
            if v.Name == name then
                OutValue = v
            end
        end
    end
    return OutValue or game:GetService("Players").LocalPlayer.Character:FindFirstChild(name)
end)

local function CustomFindFirstChild(tablename)
    for i, v in pairs(tablename) do
        if game:GetService("Workspace").Enemies:FindFirstChild(v) then
            return true
        end
    end
    return false
end

Tabs.V4Race:AddParagraph({
    Title = "Auto Race V4 Fully",
    Content = "Can't Use Now!"
})

SelectPartyV4 = {}
SelectHostV4 = {}

PlayerName = {}
for i, v in pairs(game.Players:GetChildren()) do
    table.insert(PlayerName, v.Name)
end

local HostPlayers = Tabs.V4Race:AddDropdown("SelectHostV4", {
    Title = "Selected Host",
    Values = SelectHostV4,
    Multi = false,
    Default = 1
})

HostPlayers:OnChanged(function(Value)
    SelectHostV4 = Value
end)

local PartyPlayers = Tabs.V4Race:AddDropdown("SelectPartyV4", {
    Title = "Selected Party",
    Values = SelectPartyV4,
    Multi = true,
    Default = 1
})

PartyPlayers:OnChanged(function(Value)
    SelectPartyV4 = Value
end)

-- RaceMain:Button("Refresh Players",function()
--     PartyPlayers:Clear()
--     HostPlayers:Clear()
--     PlayerName = {}
--     for i,v in pairs(game.Players:GetChildren()) do
--         table.insert(PlayerName ,v.Name)
--     end
--     PartyPlayers:Add(PlayerName)
--     HostPlayers:Add(PlayerName)
-- end)

local MsgReady = {"Halo_How_AreU", "i_find_thxxu", "this_game_so_good"}

local OpenRaceMsg = {"what_is_it_how_to_know", "it_just_mob_dont_mind", "owo_so_cool"}

local ReadySendNow = 0
local NameNotDup = {}

game:GetService("Players").LocalPlayer.PlayerGui.Chat.Frame.ChatChannelParentFrame.Frame_MessageLogDisplay.Scroller
    .ChildAdded:Connect(function(v)
    fask.wait(0.5)
    if AutoV4 then
        if v:FindFirstChild("TextLabel") then
            local Msg = v.TextLabel.Text:gsub(" ", "")
            local NameF = (v.TextLabel.TextButton.Text:gsub("%[", "")):split("%]")[1]
            if AutoV4 then
                if table.find(OpenRaceMsg, Msg) then
                    ReadySendNow = 0
                    NameNotDup = {}
                    game:GetService("ReplicatedStorage").Remotes.CommE:FireServer("ActivateAbility")
                end
                if game.Players.LocalPlayer.Name == SelectHostV4 then
                    if table.find(MsgReady, Msg) and not table.find(NameNotDup, NameF) then
                        table.insert(NameNotDup, NameF)
                        ReadySendNow = ReadySendNow + 1
                    end
                end
            end
        end
    end
end)

local function havetrial()
    if game:GetService("Players")["LocalPlayer"].PlayerGui.Main.Timer.Visible == true then
        if game:GetService("Players").LocalPlayer.Data.Race.Value == "Mink" and
            game:GetService("Workspace").Map:FindFirstChild("MinkTrial") then -- มิ้ง
            return true
        elseif game:GetService("Players").LocalPlayer.Data.Race.Value == "Human" and
            game:GetService("Workspace").Map:FindFirstChild("HumanTrial") then -- เผ่ามนุษย์
            return true
        elseif game:GetService("Players").LocalPlayer.Data.Race.Value == "Fishman" and
            game:GetService("Workspace").Map:FindFirstChild("FishmanTrial") then -- ปลา
            return true
        elseif game:GetService("Players").LocalPlayer.Data.Race.Value == "Cyborg" and
            game:GetService("Workspace").Map:FindFirstChild("CyborgTrial") then -- ไซบอร์ก
            toTarget(game:GetService("Workspace").Map.CyborgTrial:GetModelCFrame() * CFrame.new(1, 150, 0))
        elseif game:GetService("Players").LocalPlayer.Data.Race.Value == "Ghoul" and
            game:GetService("Workspace").Map:FindFirstChild("GhoulTrial") then -- กูล
            return true
        elseif game:GetService("Players").LocalPlayer.Data.Race.Value == "Skypiea" and
            game:GetService("Workspace").Map:FindFirstChild("SkyTrial") then -- สกาย
            return true
        end
    end
    return false
end

local function DoTrialPls()
    if game:GetService("Players").LocalPlayer.Data.Race.Value == "Mink" and
        game:GetService("Workspace").Map:FindFirstChild("MinkTrial") then -- มิ้ง
        if (game:GetService("Workspace").Map:FindFirstChild("MinkTrial"):GetModelCFrame().Position -
            game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 1000 then
            if not game:GetService("Workspace"):FindFirstChild "StartPoint" then

            elseif game:GetService("Workspace"):FindFirstChild "StartPoint" then
                MinkToTar = toTarget(game:GetService("Workspace"):FindFirstChild("StartPoint").CFrame *
                                         CFrame.new(0, 1, 0))
            end
        else
            if MinkToTar then
                MinkToTar:Stop()
            end
        end
    elseif game:GetService("Players").LocalPlayer.Data.Race.Value == "Human" and
        game:GetService("Workspace").Map:FindFirstChild("HumanTrial") then -- เผ่ามนุษย์
        for i, v in pairs(game.Workspace.Enemies:GetChildren()) do
            if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
                pcall(function()
                    repeat
                        fask.wait(.1)
                        v.Humanoid.Health = 0
                        v.HumanoidRootPart.CanCollide = false
                        sethiddenproperty(game.Players.LocalPlayer, "SimulationRadius", math.huge)
                    until not (AutoRaceTrial or AutoV4) or not v.Parent or v.Humanoid.Health <= 0
                end)
            end
        end
    elseif game:GetService("Players").LocalPlayer.Data.Race.Value == "Fishman" and
        game:GetService("Workspace").Map:FindFirstChild("FishmanTrial") then -- ปลา
        for i, v in pairs(game:GetService("Workspace").SeaBeasts:GetChildren()) do
            if v:FindFirstChild("HumanoidRootPart") and (AutoRaceTrial or AutoV4) and
                (v:FindFirstChild("HumanoidRootPart").Position -
                    game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 800 then
                toTarget(v:FindFirstChild("HumanoidRootPart").CFrame * CFrame.new(0, 450, 0))
                for i, v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
                    if v:IsA("Tool") then
                        if table.find({"Melee", "Blox Fruit", "Sword"}, v.ToolTip) then -- "Blox Fruit" , "Sword" , "Wear" , "Agility"
                            game.Players.LocalPlayer.Character.Humanoid:EquipTool(v)
                            fask.wait(.2)
                            game:GetService("VirtualInputManager"):SendKeyEvent(true, 122, false, game.Players
                                .LocalPlayer.Character.HumanoidRootPart)
                            game:GetService("VirtualInputManager"):SendKeyEvent(false, 122, false, game.Players
                                .LocalPlayer.Character.HumanoidRootPart)
                            fask.wait(.2)
                            game:GetService("VirtualInputManager"):SendKeyEvent(true, 120, false, game.Players
                                .LocalPlayer.Character.HumanoidRootPart)
                            game:GetService("VirtualInputManager"):SendKeyEvent(false, 120, false, game.Players
                                .LocalPlayer.Character.HumanoidRootPart)
                            fask.wait(.2)
                            game:GetService("VirtualInputManager"):SendKeyEvent(true, 99, false, game.Players
                                .LocalPlayer.Character.HumanoidRootPart)
                            game:GetService("VirtualInputManager"):SendKeyEvent(false, 99, false, game.Players
                                .LocalPlayer.Character.HumanoidRootPart)

                        end
                    end
                end
            end
        end
    elseif game:GetService("Players").LocalPlayer.Data.Race.Value == "Cyborg" and
        game:GetService("Workspace").Map:FindFirstChild("CyborgTrial") then -- ไซบอร์ก
        toTarget(game:GetService("Workspace").Map.CyborgTrial:GetModelCFrame() * CFrame.new(1, 150, 0))
    elseif game:GetService("Players").LocalPlayer.Data.Race.Value == "Ghoul" and
        game:GetService("Workspace").Map:FindFirstChild("GhoulTrial") then -- กูล
        for i, v in pairs(game.Workspace.Enemies:GetChildren()) do
            if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
                pcall(function()
                    repeat
                        fask.wait(.1)
                        v.Humanoid.Health = 0
                        v.HumanoidRootPart.CanCollide = false
                        sethiddenproperty(game.Players.LocalPlayer, "SimulationRadius", math.huge)
                    until not (AutoRaceTrial or AutoV4) or not v.Parent or v.Humanoid.Health <= 0
                end)
            end
        end
    elseif game:GetService("Players").LocalPlayer.Data.Race.Value == "Skypiea" and
        game:GetService("Workspace").Map:FindFirstChild("SkyTrial") then -- สกาย
        if (game:GetService("Workspace").Map:FindFirstChild("SkyTrial"):GetModelCFrame().Position -
            game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 1000 then
            for i, v in pairs(game:GetService("Workspace").Map.SkyTrial.Model:GetChildren()) do
                if v.Name == "snowisland_Cylinder.081" then
                    SkyToTar = toTarget(v.CFrame * CFrame.new(0, 0, 0))
                end
            end
        else
            if SkyToTar then
                SkyToTar:Stop()
            end
        end

    else
        if tween then
            tween:Cancel()
        end
    end
end

local V4Auta = Tabs.V4Race:AddToggle("AutoV4", {
    Title = "Auto V4",
    Default = AutoV4
})

V4Auta:OnChanged(function(starts)
    AutoV4 = starts
    spawn(function()
        while fask.wait() do
            if AutoV4 then
                xpcall(function()
                    local CheckRaceup = _F("UpgradeRace", "Check")
                    if CheckRaceup == 0 or
                        (table.find(SelectPartyV4, game.Players.LocalPlayer.Name) and CheckRaceup == 5) then
                        if game.Players.LocalPlayer.Name == SelectHostV4 then
                            if CheckPlayerInServ(SelectPartyV4) then
                                if havetrial() then
                                    DoTrialPls()
                                elseif game:GetService("Workspace").Map["Temple of Time"].FFABorder.Forcefield
                                    .Transparency < 1 then

                                else
                                    local DoorCF
                                    if game:GetService("Players").LocalPlayer.Data.Race.Value == "Mink" then
                                        DoorCF = CFrame.new(29022.06640625, 14890.658203125, -379.0537109375)
                                    elseif game:GetService("Players").LocalPlayer.Data.Race.Value == "Human" then
                                        DoorCF = CFrame.new(29238.294921875, 14890.658203125, -206.130615234375)
                                    elseif game:GetService("Players").LocalPlayer.Data.Race.Value == "Fishman" then
                                        DoorCF = CFrame.new(28227.8671875, 14890.658203125, -212.64332580566406)
                                    elseif game:GetService("Players").LocalPlayer.Data.Race.Value == "Cyborg" then
                                        DoorCF = CFrame.new(28491.025390625, 14895.658203125, -422.96429443359375)
                                    elseif game:GetService("Players").LocalPlayer.Data.Race.Value == "Ghoul" then
                                        DoorCF = CFrame.new(28673.31640625, 14890.3583984375, 456.43255615234375)
                                    elseif game:GetService("Players").LocalPlayer.Data.Race.Value == "Skypiea" then
                                        DoorCF = CFrame.new(28969.44140625, 14919.306640625, 233.89479064941406)
                                    end
                                    if not DoorCF then
                                        return
                                    end
                                    local TaStopDone = toTarget(DoorCF *
                                                                    CFrame.new(math.random(0, 5), 0, math.random(0, 5)))
                                    if (DoorCF.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude <=
                                        150 then
                                        if TaStopDone then
                                            TaStopDone:Stop()
                                        end
                                        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = DoorCF
                                        if ReadySendNow > 2 then
                                            fask.wait(0.5)
                                            game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents
                                                .SayMessageRequest:FireServer(
                                                tostring(OpenRaceMsg[math.random(1, #OpenRaceMsg)]), "All")
                                        end
                                        fask.wait(1)
                                    end
                                end

                            else
                                local notif = Notification.new("warning", "Alert", "U Party Not In Server") -- Args(<string> Type, <string> Heading, <string> Body, <boolean?> AutoRemoveNotif, <number?> AutoRemoveTime, <function?> OnCloseFunction)
                                notif:deleteTimeout(3)
                                fask.wait(3)
                            end
                        elseif table.find(SelectPartyV4, game.Players.LocalPlayer.Name) then
                            if CheckPlayerInServ(SelectPartyV4) and CheckPlayerInServ({SelectHostV4}) then
                                if havetrial() then
                                    DoTrialPls()
                                elseif game:GetService("Workspace").Map["Temple of Time"].FFABorder.Forcefield
                                    .Transparency < 1 then
                                    if game:GetService("Players")["LocalPlayer"].PlayerGui.Main.Timer.Visible == true then
                                        local Humn = game:GetService("Players").LocalPlayer.Character:FindFirstChild(
                                            "Humanoid")
                                        if Humn then
                                            Humn.Health = 0
                                        end
                                    end
                                else
                                    local DoorCF
                                    if game:GetService("Players").LocalPlayer.Data.Race.Value == "Mink" then
                                        DoorCF = CFrame.new(29015.681640625, 14890.6328125, -379.1084289550781)
                                    elseif game:GetService("Players").LocalPlayer.Data.Race.Value == "Human" then
                                        DoorCF = CFrame.new(29232.015625, 14890.6328125, -206.3213348388672)
                                    elseif game:GetService("Players").LocalPlayer.Data.Race.Value == "Fishman" then
                                        DoorCF = CFrame.new(28227.8671875, 14890.658203125, -212.64332580566406)
                                    elseif game:GetService("Players").LocalPlayer.Data.Race.Value == "Cyborg" then
                                        DoorCF = CFrame.new(28499.8359375, 14895.6328125, -423.3853759765625)
                                    elseif game:GetService("Players").LocalPlayer.Data.Race.Value == "Ghoul" then
                                        DoorCF = CFrame.new(28672.34375, 14890.333984375, 448.00518798828125)
                                    elseif game:GetService("Players").LocalPlayer.Data.Race.Value == "Skypiea" then
                                        DoorCF = CFrame.new(28962.724609375, 14919.28125, 234.03871154785156)
                                    end
                                    if not DoorCF then
                                        return
                                    end
                                    local TaStopDone = toTarget(DoorCF)
                                    if (DoorCF.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude <=
                                        150 then
                                        if TaStopDone then
                                            TaStopDone:Stop()
                                        end
                                        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = DoorCF
                                        spawn(function()
                                            if not delaysend10sec then
                                                delaysend10sec = true
                                                game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents
                                                    .SayMessageRequest:FireServer(
                                                    tostring(MsgReady[math.random(1, #MsgReady)]), "All")
                                                fask.wait(8)
                                                delaysend10sec = false
                                            end
                                        end)
                                        fask.wait(0.1)
                                    end
                                end
                            else
                                local notif = Notification.new("warning", "Alert", "U Party/Host Not In Server") -- Args(<string> Type, <string> Heading, <string> Body, <boolean?> AutoRemoveNotif, <number?> AutoRemoveTime, <function?> OnCloseFunction)
                                notif:deleteTimeout(3)
                                fask.wait(3)
                            end
                        else
                            table.foreach(SelectPartyV4, print)

                            local notif = Notification.new("warning", "Notify!!", "U Not Have Party") -- Args(<string> Type, <string> Heading, <string> Body, <boolean?> AutoRemoveNotif, <number?> AutoRemoveTime, <function?> OnCloseFunction)
                            notif:deleteTimeout(3)
                            fask.wait(3)
                        end
                    elseif CheckRaceup == 5 then
                        local notif = Notification.new("success", "Notify!!", "U Race Max") -- Args(<string> Type, <string> Heading, <string> Body, <boolean?> AutoRemoveNotif, <number?> AutoRemoveTime, <function?> OnCloseFunction)
                        notif:deleteTimeout(3)
                        fask.wait(4)
                    elseif CheckRaceup % 2 == 0 then
                        if game:GetService("Players")["LocalPlayer"].Character.RaceTransformed.Value == true then
                            local me = game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart").CFrame
                            repeat
                                fask.wait()
                                game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart").CFrame = me *
                                                                                                                   CFrame.new(
                                        1, 500, 0)
                            until not AutoV4 or
                                game:GetService("Players")["LocalPlayer"].Character.RaceTransformed.Value == false
                            fask.wait(0.2)
                            game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart").CFrame = me
                            fask.wait(0.2)
                        else
                            local OpenV4Race = inmydick("Awakening")
                            if OpenV4Race then
                                OpenV4Race.RemoteFunction:InvokeServer(true)
                            end
                            MaterialMob = {"Sweet Thief [Lv. 2350]", "Candy Rebel [Lv. 2375]",
                                           "Candy Pirate [Lv. 2400]", "Snow Demon [Lv. 2425]"}

                            CFrameMonM = {CFrame.new(71.89511108398438, 77.21478271484375, -12632.435546875),
                                          CFrame.new(134.3748016357422, 77.21473693847656, -12882.1650390625),
                                          CFrame.new(-1271.6993408203125, 139.93331909179688, -14354.8515625),
                                          CFrame.new(-844.35546875, 138.32464599609375, -14496.455078125)}
                            if CustomFindFirstChild(MaterialMob) then
                                for i, v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                                    if AutoV4 and
                                        game:GetService("Players")["LocalPlayer"].Character.RaceTransformed.Value ==
                                        false and table.find(MaterialMob, v.Name) and
                                        v:FindFirstChild("HumanoidRootPart") and v:FindFirstChild("Humanoid") and
                                        v.Humanoid.Health > 0 then
                                        repeat
                                            fask.wait()
                                            FarmtoTarget = toTarget(v.HumanoidRootPart.CFrame * CFrame.new(0, 30, 1))
                                            if v:FindFirstChild("HumanoidRootPart") and v:FindFirstChild("Humanoid") and
                                                (v.HumanoidRootPart.Position -
                                                    game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude <=
                                                150 then
                                                if FarmtoTarget then
                                                    FarmtoTarget:Stop()
                                                end
                                                NeedAttacking = true
                                                EquipWeapon(Selected_Weapons)
                                                spawn(function()
                                                    for i, v2 in pairs(
                                                        game:GetService("Workspace").Enemies:GetChildren()) do
                                                        if table.find(MaterialMob, v2.Name) then
                                                            spawn(function()
                                                                if InMyNetWork(v2.HumanoidRootPart) then
                                                                    v2.HumanoidRootPart.CFrame = v.HumanoidRootPart
                                                                                                     .CFrame
                                                                    v2.Humanoid.JumpPower = 0
                                                                    v2.Humanoid.WalkSpeed = 0
                                                                    v2.HumanoidRootPart.CanCollide = false
                                                                    v2.Humanoid:ChangeState(14)
                                                                    v2.Humanoid:ChangeState(11)
                                                                    v2.HumanoidRootPart.Size = Vector3.new(55, 55, 55)
                                                                end
                                                            end)
                                                        end
                                                    end
                                                end)
                                                if game.Players.LocalPlayer.Character:FindFirstChild("Black Leg") and
                                                    game.Players.LocalPlayer.Character:FindFirstChild("Black Leg").Level
                                                        .Value >= 150 then
                                                    game:service('VirtualInputManager'):SendKeyEvent(true, "V", false,
                                                        game)
                                                    game:service('VirtualInputManager'):SendKeyEvent(false, "V", false,
                                                        game)
                                                end
                                                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame =
                                                    v.HumanoidRootPart.CFrame * CFrame.new(0, 30, 1)
                                            end
                                        until not CustomFindFirstChild(MaterialMob) or not AutoV4 or v.Humanoid.Health <=
                                            0 or not v.Parent or
                                            game:GetService("Players")["LocalPlayer"].Character.RaceTransformed.Value ==
                                            true
                                        NeedAttacking = false
                                    end
                                end
                            else
                                NeedAttacking = false
                                for i, v in pairs(CFrameMonM) do
                                    if AutoV4 and not CustomFindFirstChild(MaterialMob) and
                                        game:GetService("Players")["LocalPlayer"].Character.RaceTransformed.Value ==
                                        false then
                                        while AutoV4 and not CustomFindFirstChild(MaterialMob) and
                                            game:GetService("Players")["LocalPlayer"].Character.RaceTransformed.Value ==
                                            false do
                                            fask.wait()
                                            Modstween = toTarget(v)
                                            if (v.Position -
                                                game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude <=
                                                150 then
                                                if Modstween then
                                                    Modstween:Stop()
                                                end
                                                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v
                                                break
                                            end
                                            fask.wait(1)
                                        end
                                    end
                                    fask.wait(0)
                                end
                            end
                        end
                    elseif CheckRaceup % 2 == 1 then
                        _F("UpgradeRace", "Buy")
                    end
                end, print)
            else
                break
            end
        end
    end)
end)

local DieAfterTrials = Tabs.V4Race:AddToggle("Autodieafter", {
    Title = "Auto Die After Trial",
    Default = false
})
local KillAfterTrials = Tabs.V4Race:AddToggle("AutoV4", {
    Title = "Auto V4",
    Default = false
})

DieAfterTrials:OnChanged(function(starts)
    Autodieafter = starts
    spawn(function()
        while fask.wait(1) do
            if not Autodieafter then
                break
            end
            if game:GetService("Workspace").Map["Temple of Time"].FFABorder.Forcefield.Transparency < 1 then
                if game:GetService("Players")["LocalPlayer"].PlayerGui.Main.Timer.Visible == true then
                    local Humn = game:GetService("Players").LocalPlayer.Character:FindFirstChild("Humanoid")
                    if Humn then
                        Humn.Health = 0
                    end
                end
            end
        end
    end)
end)

local RoomPosition = Vector3.new(28719.505859375, 14899.4365234375, -95.38821411132812)

KillAfterTrials:OnChanged(function(starts)
    autokillafter = starts
    spawn(function()
        while fask.wait(0.1) do
            if autokillafter then
                if game:GetService("Workspace").Map["Temple of Time"].FFABorder.Forcefield.Transparency < 1 then
                    if game:GetService("Players")["LocalPlayer"].PlayerGui.Main.Timer.Visible == true then
                        local MaxRange = 250
                        local tar = ""
                        for i, v in pairs(game:GetService("Workspace").Characters:GetChildren()) do
                            if autokillafter and (v.HumanoidRootPart.Position - RoomPosition).magnitude <= 150 then
                                local rangenow =
                                    (RoomPosition - v:FindFirstChild("HumanoidRootPart").Position).Magnitude
                                if rangenow < MaxRange then
                                    MaxRange = rangenow
                                    tar = v.Name
                                end
                            end
                        end
                        for i, v in pairs(game:GetService("Workspace").Characters:GetChildren()) do
                            if autokillafter and v.Name == tar then
                                repeat
                                    fask.wait()
                                    if (v.HumanoidRootPart.Position -
                                        game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude > 150 then
                                        Farmtween = toTargetNoDie(v.HumanoidRootPart.CFrame)
                                        NeedAttacking = false
                                    else
                                        if Farmtween then
                                            Farmtween:Stop()
                                        end
                                        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.HumanoidRootPart
                                                                                                         .CFrame *
                                                                                                         CFrame.new(1,
                                                11, 0)
                                        EquipWeapon(Selected_Weapons)
                                        NeedAttacking = true
                                    end
                                until not autokillafter or
                                    game.Players.LocalPlayer.Character:WaitForChild("Humanoid").Health == 0 or
                                    v.Humanoid.Health == 0 or (v.HumanoidRootPart.Position - RoomPosition).magnitude >
                                    150 or not v.Parent
                                NeedAttacking = false
                                if Farmtween then
                                    Farmtween:Stop()
                                end
                                fask.wait(1)
                            end
                        end
                    end
                end
            else
                break
            end

        end
    end)
end)

Tabs.V4Race:AddParagraph({
    Title = "---------"
})

Tabs.V4Race:AddButton({
    Title = "Tp To Temple of time",
    Callback = function()
        local TaStopDone = toTarget(CFrame.new(28288.15234375, 14896.5341796875, 100.4998779296875))
        NoClip = true
        TaStopDone:Wait()
        NoClip = false
    end
})

local RaceDoor = {
    ["Human Door"] = CFrame.new(29232.015625, 14890.6328125, -206.3213348388672),
    ["Mink Door"] = CFrame.new(29015.681640625, 14890.6328125, -379.1084289550781),
    ["Sky Door"] = CFrame.new(28962.724609375, 14919.28125, 234.03871154785156),
    ["Fish Door"] = CFrame.new(28227.8671875, 14890.658203125, -212.64332580566406),
    ["Cyborg Door"] = CFrame.new(28499.8359375, 14895.6328125, -423.3853759765625),
    ["Ghoul Door"] = CFrame.new(28672.34375, 14890.333984375, 448.00518798828125),
    ["Ancient One"] = CFrame.new(28973.794921875, 14889.658203125, -117.06352996826172),
    ["Clock"] = CFrame.new(29553.7812, 15066.6133, -88.2750015, 1, 0, 0, 0, 1, 0, 0, 0, 1)
}

for i, v in pairs(RaceDoor) do
    Tabs.V4Race:AddButton({
        Title = i,
        Callback = function()
            local TaStopDone = toTarget(v)
            NoClip = true
            TaStopDone:Wait()
            NoClip = false
        end
    })
end

Tabs.V4Race:AddParagraph({
    Title = "---------"
})

Tabs.V4Race:AddButton({
    Title = "Tp To you Race Door",
    Callback = function()
        local DoorCF
        if game:GetService("Players").LocalPlayer.Data.Race.Value == "Mink" then
            DoorCF = CFrame.new(29015.681640625, 14890.6328125, -379.1084289550781)
        elseif game:GetService("Players").LocalPlayer.Data.Race.Value == "Human" then
            DoorCF = CFrame.new(29232.015625, 14890.6328125, -206.3213348388672)
        elseif game:GetService("Players").LocalPlayer.Data.Race.Value == "Fishman" then
            DoorCF = CFrame.new(28227.8671875, 14890.658203125, -212.64332580566406)
        elseif game:GetService("Players").LocalPlayer.Data.Race.Value == "Cyborg" then
            DoorCF = CFrame.new(28499.8359375, 14895.6328125, -423.3853759765625)
        elseif game:GetService("Players").LocalPlayer.Data.Race.Value == "Ghoul" then
            DoorCF = CFrame.new(28672.34375, 14890.333984375, 448.00518798828125)
        elseif game:GetService("Players").LocalPlayer.Data.Race.Value == "Skypiea" then
            DoorCF = CFrame.new(28962.724609375, 14919.28125, 234.03871154785156)
        end
        if not DoorCF then
            return
        end
        local TaStopDone = toTarget(DoorCF)
        NoClip = true
        TaStopDone:Wait()
        NoClip = false
    end
})

local PullLeverFull = Tabs.V4Race:AddToggle("AutoPullFuly", {
    Title = "Auto Pull Lever Fully",
    Default = false
})
local GearandPull = Tabs.V4Race:AddToggle("AutoLeverGear", {
    Title = "Auto Gear + Pull Lever",
    Default = false
})
local AutoLook = Tabs.V4Race:AddToggle("AutoLookAwake", {
    Title = "Auto Look Moon + Awake",
    Default = false
})

PullLeverFull:OnChanged(function(starts)
    AutoPullFuly = starts
    spawn(function()
        while fask.wait(.5) do
            if AutoPullFuly then
                if _F('CheckTempleDoor') == true and
                    game:GetService("Workspace").Map["Temple of Time"].Lever.Prompt:FindFirstChild("ProximityPrompt")
                        .Enabled == true then
                    fireproximityprompt(game:GetService("Workspace").Map["Temple of Time"].Lever.Prompt:FindFirstChild(
                        "ProximityPrompt"), 0)
                    return;
                end
                if game:GetService("Workspace").Map:FindFirstChild("MysticIsland") and (function()
                    local a = tonumber(game:GetService("Lighting").ClockTime)
                    if a >= 18 or a >= 0 and a <= 5 then
                        local b;
                        if a > 5 and a <= 24 then
                            b = (29 - a) / 0.0166667 / 60
                        else
                            b = (5 - a) / 0.0166667 / 60
                        end
                        local c, d = math.modf(b)
                        d = math.floor(d * 60)
                        return true
                    end
                    return false
                end)() then
                    if (function()
                        if game:GetService("Workspace").Map:FindFirstChild("MysticIsland") then
                            for a, b in pairs(game:GetService("Workspace").Map:FindFirstChild("MysticIsland")
                                :GetDescendants()) do
                                if b.Name == 'Part' then
                                    if b.Material == Enum.Material.Neon and b.Transparency == 0 then
                                        return true
                                    end
                                end
                            end
                        end
                        return false
                    end)() then
                        for i, v in pairs(game:GetService("Workspace").Map:FindFirstChild("MysticIsland")
                            :GetDescendants()) do
                            if v.Name == 'Part' then
                                if v.Material == Enum.Material.Neon then
                                    toTarget(v.CFrame)
                                end
                            end
                        end
                        return;
                    end
                    local totar = toTarget(game:GetService("Workspace").Map:FindFirstChild("MysticIsland")
                        :GetModelCFrame() * CFrame.new(1, 100, 0))
                    totar:Wait()
                    game:GetService("ReplicatedStorage").Remotes.CommE:FireServer("ActivateAbility")
                    -- Calculate the position of the moon
                    local MoonPos = game:GetService("Lighting"):GetMoonDirection() * 50 * 10000

                    local Current = game.Workspace.CurrentCamera
                    Current.CoordinateFrame = CFrame.new(Current.CoordinateFrame.p, MoonPos)
                    return
                end
                local notif = Notification.new("success", "LuxuryBF", "Can't Find Because not night or mirage") -- Args(<string> Type, <string> Heading, <string> Body, <boolean?> AutoRemoveNotif, <number?> AutoRemoveTime, <function?> OnCloseFunction)
                notif:deleteTimeout(2)
                fask.wait(2)
                return;
            else
                break
            end
        end
    end)
end)

GearandPull:OnChanged(function(starts)
    AutoLeverGear = starts
    spawn(function()
        while fask.wait() do
            if AutoLeverGear then
                if _F('CheckTempleDoor') == true and
                    game:GetService("Workspace").Map["Temple of Time"].Lever.Prompt:FindFirstChild("ProximityPrompt")
                        .Enabled == true then
                    fireproximityprompt(game:GetService("Workspace").Map["Temple of Time"].Lever.Prompt:FindFirstChild(
                        "ProximityPrompt"), 0)
                elseif (function()
                    if game:GetService("Workspace").Map:FindFirstChild("MysticIsland") then
                        for a, b in pairs(game:GetService("Workspace").Map:FindFirstChild("MysticIsland")
                            :GetDescendants()) do
                            if b.Name == 'Part' then
                                if b.Material == Enum.Material.Neon and b.Transparency == 0 then
                                    return true
                                end
                            end
                        end
                    end
                    return false
                end)() then
                    if game:GetService("Workspace").Map:FindFirstChild("MysticIsland") then
                        for i, v in pairs(game:GetService("Workspace").Map:FindFirstChild("MysticIsland")
                            :GetDescendants()) do
                            if v.Name == 'Part' then
                                if v.Material == Enum.Material.Neon then
                                    toTarget(v.CFrame)
                                end
                            end
                        end
                    end
                end
            else
                break
            end
            fask.wait(0.5)
        end
    end)
end)

AutoLook:OnChanged(function(starts)
    AutoLookAwake = starts
    spawn(function()
        while fask.wait(0.1) do
            if AutoLookAwake then
                if not (function()
                    if game:GetService("Workspace").Map:FindFirstChild("MysticIsland") then
                        for a, b in pairs(game:GetService("Workspace").Map:FindFirstChild("MysticIsland")
                            :GetDescendants()) do
                            if b.Name == 'Part' then
                                if b.Material == Enum.Material.Neon and b.Transparency == 0 then
                                    return true
                                end
                            end
                        end
                    end
                    return false
                end)() then
                    game:GetService("ReplicatedStorage").Remotes.CommE:FireServer("ActivateAbility")
                    -- Calculate the position of the moon
                    local MoonPos = game:GetService("Lighting"):GetMoonDirection() * 50 * 10000

                    local Current = game.Workspace.CurrentCamera
                    Current.CoordinateFrame = CFrame.new(Current.CoordinateFrame.p, MoonPos)
                end
            else
                break
            end
        end
    end)
end)

Tabs.V4Race:AddParagraph({
    Title = "Now Fully",
    Content = "Race Fully Function!"
})

local AncientQuest = Tabs.V4Race:AddToggle("AutoAncientQuest", {
    Title = "Auto Ancient Quest",
    Default = false
})
local RaceTrial = Tabs.V4Race:AddToggle("AutoRaceTrial", {
    Title = "Auto Race Trial",
    Default = false
})

AncientQuest:OnChanged(function(starts)
    AutoAncientQuest = starts
end)

RaceTrial:OnChanged(function(starts)
    AutoRaceTrial = starts
end)

fask.spawn(function()
    while fask.wait() do
        if AutoAncientQuest then
            xpcall(function()
                local CheckRaceup = _F("UpgradeRace", "Check")
                if CheckRaceup == 0 then
                    local notif = Notification.new("success", "Notify!!", "Ready To Next Trial ;>") -- Args(<string> Type, <string> Heading, <string> Body, <boolean?> AutoRemoveNotif, <number?> AutoRemoveTime, <function?> OnCloseFunction)
                    notif:deleteTimeout(3)
                    local TaStopDone = toTarget(CFrame.new(28288.15234375, 14896.5341796875, 100.4998779296875))
                    TaStopDone:Wait()
                    fask.wait(4)
                elseif CheckRaceup == 5 then
                    local notif = Notification.new("success", "Notify!!", "U Race Max") -- Args(<string> Type, <string> Heading, <string> Body, <boolean?> AutoRemoveNotif, <number?> AutoRemoveTime, <function?> OnCloseFunction)
                    notif:deleteTimeout(3)
                    fask.wait(4)
                else
                    _F("UpgradeRace", "Buy")
                    if game:GetService("Players")["LocalPlayer"].Character.RaceTransformed.Value == true then
                        local me = game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart").CFrame
                        repeat
                            fask.wait()
                            game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart").CFrame = me *
                                                                                                               CFrame.new(
                                    1, 500, 0)
                        until not AutoAncientQuest or
                            game:GetService("Players")["LocalPlayer"].Character.RaceTransformed.Value == false
                        fask.wait(0.2)
                        game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart").CFrame = me
                        fask.wait(0.2)
                    else
                        local OpenV4Race = inmydick("Awakening")
                        if OpenV4Race then
                            OpenV4Race.RemoteFunction:InvokeServer(true)
                        end
                        if game:GetService("Workspace").Enemies:FindFirstChild("Reborn Skeleton [Lv. 1975]") or
                            game:GetService("Workspace").Enemies:FindFirstChild("Living Zombie [Lv. 2000]") or
                            game:GetService("Workspace").Enemies:FindFirstChild("Demonic Soul [Lv. 2025]") or
                            game:GetService("Workspace").Enemies:FindFirstChild("Posessed Mummy [Lv. 2050]") then
                            for i, v in pairs(game.Workspace.Enemies:GetChildren()) do
                                if AutoAncientQuest and
                                    (v.Name == "Reborn Skeleton [Lv. 1975]" or v.Name == "Living Zombie [Lv. 2000]" or
                                        v.Name == "Demonic Soul [Lv. 2025]" or v.Name == "Posessed Mummy [Lv. 2050]") and
                                    v:FindFirstChild("HumanoidRootPart") and v:FindFirstChild("Humanoid") and
                                    v.Humanoid.Health > 0 then
                                    repeat
                                        fask.wait()
                                        if (v.HumanoidRootPart.Position -
                                            game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude >
                                            150 then
                                            Farmtween = toTarget(v.HumanoidRootPart.Position, v.HumanoidRootPart.CFrame)
                                            NeedAttacking = false
                                        elseif (v.HumanoidRootPart.Position -
                                            game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude <=
                                            150 then
                                            if Farmtween then
                                                Farmtween:Stop()
                                            end
                                            NeedAttacking = true
                                            PosFarmBone = v.HumanoidRootPart.CFrame
                                            EquipWeapon(Selected_Weapons)
                                            toAroundTarget(v.HumanoidRootPart.CFrame)
                                            spawn(function()
                                                for i, v2 in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                                                    if (v2.Name == "Reborn Skeleton [Lv. 1975]" or v2.Name ==
                                                        "Living Zombie [Lv. 2000]" or v2.Name ==
                                                        "Demonic Soul [Lv. 2025]" or v2.Name ==
                                                        "Posessed Mummy [Lv. 2050]") then
                                                        spawn(function()
                                                            if InMyNetWork(v2.HumanoidRootPart) then
                                                                v2.HumanoidRootPart.CFrame = v.HumanoidRootPart.CFrame
                                                                v2.Humanoid.JumpPower = 0
                                                                v2.Humanoid.WalkSpeed = 0
                                                                v2.HumanoidRootPart.CanCollide = false
                                                                v2.Humanoid:ChangeState(14)
                                                                v2.Humanoid:ChangeState(11)
                                                                v2.HumanoidRootPart.Size = Vector3.new(55, 55, 55)
                                                            end
                                                        end)
                                                    end
                                                end
                                            end)

                                        end
                                    until not AutoAncientQuest or not v.Parent or v.Humanoid.Health <= 0
                                    NeedAttacking = false

                                end
                            end
                        else
                            NeedAttacking = false
                            Questtween = toTarget(CFrame.new(-9506.14648, 172.130661, 6101.79053).Position,
                                CFrame.new(-9506.14648, 172.130661, 6101.79053))
                            if (CFrame.new(-9506.14648, 172.130661, 6101.79053).Position -
                                game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude <= 150 then
                                if Questtween then
                                    Questtween:Stop()
                                end
                                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-9506.14648,
                                    172.130661, 6101.79053, -0.999731541, 0, -0.0231563263, 0, 1, 0, 0.0231563263, 0,
                                    -0.999731541)
                            end
                        end

                    end
                end
            end, print)
        else
            break
        end
    end
end)

fask.spawn(function()
    while fask.wait() do
        if AutoRaceTrial then
            xpcall(function()
                if game:GetService("Players")["LocalPlayer"].PlayerGui.Main.Timer.Visible == true then
                    if game:GetService("Players").LocalPlayer.Data.Race.Value == "Mink" and
                        game:GetService("Workspace").Map:FindFirstChild("MinkTrial") then -- มิ้ง
                        if (game:GetService("Workspace").Map:FindFirstChild("MinkTrial"):GetModelCFrame().Position -
                            game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 1000 then
                            if not game:GetService("Workspace"):FindFirstChild "StartPoint" then

                            elseif game:GetService("Workspace"):FindFirstChild "StartPoint" then
                                MinkToTar = toTarget(game:GetService("Workspace"):FindFirstChild("StartPoint").CFrame *
                                                         CFrame.new(0, 1, 0))
                            end
                        else
                            if MinkToTar then
                                MinkToTar:Stop()
                            end
                        end
                    elseif game:GetService("Players").LocalPlayer.Data.Race.Value == "Human" and
                        game:GetService("Workspace").Map:FindFirstChild("HumanTrial") then -- เผ่ามนุษย์
                        for i, v in pairs(game.Workspace.Enemies:GetChildren()) do
                            if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and
                                v.Humanoid.Health > 0 then
                                pcall(function()
                                    repeat
                                        fask.wait(.1)
                                        v.Humanoid.Health = 0
                                        v.HumanoidRootPart.CanCollide = false
                                        sethiddenproperty(game.Players.LocalPlayer, "SimulationRadius", math.huge)
                                    until not AutoRaceTrial or not v.Parent or v.Humanoid.Health <= 0
                                end)
                            end
                        end
                    elseif game:GetService("Players").LocalPlayer.Data.Race.Value == "Fishman" and
                        game:GetService("Workspace").Map:FindFirstChild("FishmanTrial") then -- ปลา
                        for i, v in pairs(game:GetService("Workspace").SeaBeasts:GetChildren()) do
                            if v:FindFirstChild("HumanoidRootPart") and AutoRaceTrial and
                                (v:FindFirstChild("HumanoidRootPart").Position -
                                    game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 800 then
                                toTarget(v:FindFirstChild("HumanoidRootPart").CFrame * CFrame.new(0, 450, 0))
                                for i, v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
                                    if v:IsA("Tool") then
                                        if table.find(v.ToolTip, {"Melee", "Blox Fruit", "Gun", "Sword"}) then -- "Blox Fruit" , "Sword" , "Wear" , "Agility"
                                            game.Players.LocalPlayer.Character.Humanoid:EquipTool(v)
                                            fask.wait(.2)
                                            game:GetService("VirtualInputManager"):SendKeyEvent(true, 122, false,
                                                game.Players.LocalPlayer.Character.HumanoidRootPart)
                                            game:GetService("VirtualInputManager"):SendKeyEvent(false, 122, false,
                                                game.Players.LocalPlayer.Character.HumanoidRootPart)
                                            fask.wait(.2)
                                            game:GetService("VirtualInputManager"):SendKeyEvent(true, 120, false,
                                                game.Players.LocalPlayer.Character.HumanoidRootPart)
                                            game:GetService("VirtualInputManager"):SendKeyEvent(false, 120, false,
                                                game.Players.LocalPlayer.Character.HumanoidRootPart)
                                            fask.wait(.2)
                                            game:GetService("VirtualInputManager"):SendKeyEvent(true, 99, false,
                                                game.Players.LocalPlayer.Character.HumanoidRootPart)
                                            game:GetService("VirtualInputManager"):SendKeyEvent(false, 99, false,
                                                game.Players.LocalPlayer.Character.HumanoidRootPart)

                                        end
                                    end
                                end
                            end
                        end
                    elseif game:GetService("Players").LocalPlayer.Data.Race.Value == "Cyborg" and
                        game:GetService("Workspace").Map:FindFirstChild("CyborgTrial") then -- ไซบอร์ก
                        toTarget(game:GetService("Workspace").Map.CyborgTrial:GetModelCFrame() * CFrame.new(1, 150, 0))
                    elseif game:GetService("Players").LocalPlayer.Data.Race.Value == "Ghoul" and
                        game:GetService("Workspace").Map:FindFirstChild("GhoulTrial") then -- กูล
                        for i, v in pairs(game.Workspace.Enemies:GetChildren()) do
                            if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and
                                v.Humanoid.Health > 0 then
                                pcall(function()
                                    repeat
                                        fask.wait(.1)
                                        v.Humanoid.Health = 0
                                        v.HumanoidRootPart.CanCollide = false
                                        sethiddenproperty(game.Players.LocalPlayer, "SimulationRadius", math.huge)
                                    until not AutoRaceTrial or not v.Parent or v.Humanoid.Health <= 0
                                end)
                            end
                        end
                    elseif game:GetService("Players").LocalPlayer.Data.Race.Value == "Skypiea" and
                        game:GetService("Workspace").Map:FindFirstChild("SkyTrial") then -- สกาย
                        if (game:GetService("Workspace").Map:FindFirstChild("SkyTrial"):GetModelCFrame().Position -
                            game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 1000 then
                            for i, v in pairs(game:GetService("Workspace").Map.SkyTrial.Model:GetChildren()) do
                                if v.Name == "snowisland_Cylinder.081" then
                                    SkyToTar = toTarget(v.CFrame * CFrame.new(0, 0, 0))
                                end
                            end
                        else
                            if SkyToTar then
                                SkyToTar:Stop()
                            end
                        end

                    else
                        if tween then
                            tween:Cancel()
                        end
                    end
                end
            end, print)
        else
            break
        end
    end
end)

spawn(function()
    while fask.wait() do
        TeleportType = math.random(1, 5)
        fask.wait(0.3)
    end
end)

Tabs.V4Race:AddParagraph({
    Title = "Auto Evo Race",
    Content = "v1-3!"
})

local MinkRace = Tabs.V4Race:AddToggle("Mink_Evo", {
    Title = "Auto Evo Race [ Mink ]",
    Default = Mink_Evo
})
local MinkRace = Tabs.V4Race:AddToggle("Human_Evo", {
    Title = "Auto Evo Race [ Human ]",
    Default = Human_Evo
})
local MinkRace = Tabs.V4Race:AddToggle("Skypiea_Evo", {
    Title = "Auto Evo Race [ Skypia ]",
    Default = Skypiea_Evo
})

MinkRace:OnChanged(function(value)
    Mink_Evo = value
    if value == false then
        toTarget(game.Players.LocalPlayer.Character.HumanoidRootPart.Position)
    end
    Save()
end)

MinkRace:OnChanged(function(value)
    Human_Evo = value
    if value == false then
        toTarget(game.Players.LocalPlayer.Character.HumanoidRootPart.Position)
    end
    Save()
end)
MinkRace:OnChanged(function(value)
    Skypiea_Evo = value
    if value == false then
        toTarget(game.Players.LocalPlayer.Character.HumanoidRootPart.Position)
    end
    Save()
end)

Tabs.V4Race:AddParagraph({
    Title = "Auto Use Skill Race",
    Content = "v1-3!"
})

local USERACEV3 = Tabs.V4Race:AddToggle("UseV3", {
    Title = "Auto Use Race v3",
    Default = false
})
local USERACEV4 = Tabs.V4Race:AddToggle("UseV4", {
    Title = "Auto Use Race v4",
    Default = true
})

USERACEV3:OnChanged(function(value)
    Enable_RaceV3 = value
    fask.spawn(function()
        while Enable_RaceV3 do
            wait()
            if Enable_RaceV3 then
                game:GetService("ReplicatedStorage").Remotes.CommE:FireServer("ActivateAbility")
            end
        end
    end)
end)

USERACEV4:OnChanged(function(value)
    Enable_RaceV4 = value
    fask.spawn(function()
        while Enable_RaceV4 do
            wait()
            local OpenV4Race = inmyselfss("Awakening")
            if OpenV4Race then
                OpenV4Race.RemoteFunction:InvokeServer(true)
            end
        end
    end)
end)

_G.Next_Race = false

if game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Wenlocktoad", "1") == -2 then
    if game.Players.LocalPlayer.Data.Race.Value == 'Mink' then
        Mink_Evo_H = true
    elseif game.Players.LocalPlayer.Data.Race.Value == 'Human' then
        Human_Evo_H = true
    elseif game.Players.LocalPlayer.Data.Race.Value == 'Skypiea' then
        Skypiea_Evo_H = true
    end
end
fask.spawn(LPH_JIT_MAX(function()
    while wait() do
        pcall(function()
            if Mink_Evo and not Mink_Evo_H and game.Players.LocalPlayer.Data.Race.Value == 'Mink' then
                if game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Wenlocktoad", "1") == -2 then
                    if game.Players.LocalPlayer.Data.Race.Value == 'Mink' then
                        Mink_Evo_H = true
                        return
                    elseif game.Players.LocalPlayer.Data.Race.Value == 'Human' then
                        Human_Evo_H = true
                        return
                    elseif game.Players.LocalPlayer.Data.Race.Value == 'Skypiea' then
                        Skypiea_Evo_H = true
                        return
                    end
                end
                if game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("TalkTrevor", "1") == 0 then
                    if game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Alchemist", "1") ~= -2 then
                        if not UIhjdk then
                            print("Evo Race")
                            UIhjdk = true
                        end
                        pcall(function()
                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Alchemist", "1")
                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Alchemist", "2")
                        end)
                        if not game.Players.LocalPlayer.Backpack:FindFirstChild("Flower 1") and
                            not game.Players.LocalPlayer.Character:FindFirstChild("Flower 1") and
                            game:GetService("Workspace"):FindFirstChild("Flower1") then
                            if not YUIk then
                                print("Evo Race")
                                YUIk = true
                            end
                            repeat
                                wait(1)
                                toTarget(game:GetService("Workspace"):FindFirstChild("Flower1").CFrame)
                            until game.Players.LocalPlayer.Backpack:FindFirstChild("Flower 1") or
                                game.Players.LocalPlayer.Character:FindFirstChild("Flower 1") or not Mink_Evo
                        elseif not game.Players.LocalPlayer.Backpack:FindFirstChild("Flower 2") and
                            not game.Players.LocalPlayer.Character:FindFirstChild("Flower 2") and
                            game:GetService("Workspace"):FindFirstChild("Flower2") then
                            if not YUIkx then
                                print("Evo Race")
                                YUIkx = true
                            end
                            repeat
                                wait(1)
                                toTarget(game:GetService("Workspace"):FindFirstChild("Flower2").CFrame)
                            until game.Players.LocalPlayer.Backpack:FindFirstChild("Flower 2") or
                                game.Players.LocalPlayer.Character:FindFirstChild("Flower 2") or not Mink_Evo
                        elseif not game.Players.LocalPlayer.Backpack:FindFirstChild("Flower 3") and
                            not game.Players.LocalPlayer.Character:FindFirstChild("Flower 3") then
                            if PO == nil then
                                print("Evo Race")
                                PO = true
                            end
                            if game:GetService("Workspace").Enemies:FindFirstChild("Marine Captain [Lv. 900]") then
                                for i, v in pairs(game.Workspace.Enemies:GetChildren()) do
                                    if v.Name == "Marine Captain [Lv. 900]" then
                                        repeat
                                            wait()
                                            StartMagnet = true
                                            if Auto_Haki then
                                                if not game.Players.LocalPlayer.Character:FindFirstChild("HasBuso") then
                                                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(
                                                        "Buso")
                                                end
                                            end
                                            if not game.Players.LocalPlayer.Character:FindFirstChild(Selected_Weapons) then
                                                wait()
                                                EquipWeapon(Selected_Weapons)
                                            end
                                            toTarget(v.HumanoidRootPart.CFrame * CFrame.new(0, Distance_Auto_Farm, 0))
                                            NeedAttacking = true
                                            if not Fast_Attack then
                                                game:GetService 'VirtualUser':CaptureController()
                                                game:GetService 'VirtualUser':Button1Down(Vector2.new(1280, 672))
                                            end
                                            v.HumanoidRootPart.Size = Vector3.new(60, 60, 60)
                                            v.HumanoidRootPart.Transparency = 1
                                            v.Humanoid.JumpPower = 0
                                            v.Humanoid.WalkSpeed = 0
                                            v.HumanoidRootPart.CanCollide = false
                                            v.Humanoid:ChangeState(11)
                                        until v.Humanoid.Health <= 0 or not v.Parent or
                                            game.Players.LocalPlayer.Backpack:FindFirstChild("Flower 3") or not Mink_Evo
                                        StartMagnet = false
                                        NeedAttacking = false
                                    end
                                end
                            else
                                toTarget(CFrame.new(-2335.2026367188, 79.786659240723, -3245.8674316406))
                            end
                        elseif game.Players.LocalPlayer.Backpack:FindFirstChild("Flower 3") and
                            game.Players.LocalPlayer.Backpack:FindFirstChild("Flower 1") and
                            game.Players.LocalPlayer.Backpack:FindFirstChild("Flower 2") then
                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Alchemist", "1")
                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Alchemist", "3")
                            wait(2)
                        else
                            if not UHuit then
                                print("Evo Race")
                                toTarget(CFrame.new(-379.70889282227, 73.0458984375, 304.84692382813))
                                UHuit = true
                            end
                            wait(2)
                        end
                    elseif game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Wenlocktoad", "1") ~= -2 then
                        if not UIjfi then
                            print("Evo Race")
                            UIjfi = true
                        end
                        if not ijoijofdga then
                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Wenlocktoad", "1")
                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Wenlocktoad", "2")
                            ijoijofdga = true
                        end
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Wenlocktoad", "1")
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Wenlocktoad", "3")
                        for i, v in pairs(game:GetService("Workspace"):GetChildren()) do
                            if v.Name == "Chest1" and
                                (v.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude >
                                1500 then
                                repeat
                                    wait()
                                    toTarget(v.CFrame)
                                until not v.Parent or not Mink_Evo
                            elseif v.Name == "Chest2" and
                                (v.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude >
                                1500 then
                                repeat
                                    wait()
                                    toTarget(v.CFrame)
                                until not v.Parent or not Mink_Evo
                            elseif New_World then
                                toTarget(CFrame.new(-379.70889282227, 73.0458984375, 304.84692382813))
                            end
                        end
                    elseif game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Wenlocktoad", "1") == -2 then
                        if not IUHidm then
                            print("Evo Race")
                            IUHidm = true
                        end
                        if _G.Next_Race then
                            Mink_Evo_H = true
                        end
                    end
                else
                    print("Evo Race")
                    wait(5)
                end
            elseif Human_Evo and not Human_Evo_H and game.Players.LocalPlayer.Data.Race.Value == 'Human' then
                if game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("TalkTrevor", "1") == 0 then
                    if game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Alchemist", "1") ~= -2 then
                        if not UIhjdkh then
                            print("Evo Race")
                            UIhjdkh = true
                        end
                        pcall(function()
                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Alchemist", "1")
                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Alchemist", "2")
                        end)
                        if not game.Players.LocalPlayer.Backpack:FindFirstChild("Flower 1") and
                            not game.Players.LocalPlayer.Character:FindFirstChild("Flower 1") and
                            game:GetService("Workspace"):FindFirstChild("Flower1") then
                            if not YUIks then
                                print("Evo Race")
                                YUIks = true
                            end
                            repeat
                                wait(1)
                                toTarget(game:GetService("Workspace"):FindFirstChild("Flower1").CFrame)
                            until game.Players.LocalPlayer.Backpack:FindFirstChild("Flower 1") or
                                game.Players.LocalPlayer.Character:FindFirstChild("Flower 1") or not Human_Evo
                        elseif not game.Players.LocalPlayer.Backpack:FindFirstChild("Flower 2") and
                            not game.Players.LocalPlayer.Character:FindFirstChild("Flower 2") and
                            game:GetService("Workspace"):FindFirstChild("Flower2") then
                            if not YUIkxz then
                                print("Evo Race")
                                YUIkxz = true
                            end
                            repeat
                                wait(1)
                                toTarget(game:GetService("Workspace"):FindFirstChild("Flower2").CFrame)
                            until game.Players.LocalPlayer.Backpack:FindFirstChild("Flower 2") or
                                game.Players.LocalPlayer.Character:FindFirstChild("Flower 2") or not Human_Evo
                        elseif not game.Players.LocalPlayer.Backpack:FindFirstChild("Flower 3") and
                            not game.Players.LocalPlayer.Character:FindFirstChild("Flower 3") then
                            if POs == nil then
                                print("Evo Race")
                                POs = true
                            end
                            if game:GetService("Workspace").Enemies:FindFirstChild("Marine Captain [Lv. 900]") then
                                for i, v in pairs(game.Workspace.Enemies:GetChildren()) do
                                    if v.Name == "Marine Captain [Lv. 900]" then
                                        repeat
                                            wait()
                                            StartMagnet = true
                                            if Auto_Haki then
                                                if not game.Players.LocalPlayer.Character:FindFirstChild("HasBuso") then
                                                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(
                                                        "Buso")
                                                end
                                            end
                                            if not game.Players.LocalPlayer.Character:FindFirstChild(Selected_Weapons) then
                                                wait()
                                                EquipWeapon(Selected_Weapons)
                                            end
                                            toTarget(v.HumanoidRootPart.CFrame * CFrame.new(0, Distance_Auto_Farm, 0))
                                            NeedAttacking = true
                                            if not Fast_Attack then
                                                game:GetService 'VirtualUser':CaptureController()
                                                game:GetService 'VirtualUser':Button1Down(Vector2.new(1280, 672))
                                            end
                                            v.HumanoidRootPart.Size = Vector3.new(60, 60, 60)
                                            v.HumanoidRootPart.Transparency = 1
                                            v.Humanoid.JumpPower = 0
                                            v.Humanoid.WalkSpeed = 0
                                            v.HumanoidRootPart.CanCollide = false
                                            v.Humanoid:ChangeState(11)
                                        until v.Humanoid.Health <= 0 or not v.Parent or
                                            game.Players.LocalPlayer.Backpack:FindFirstChild("Flower 3") or
                                            not Human_Evo
                                        StartMagnet = false
                                        NeedAttacking = false
                                    end
                                end
                            else
                                toTarget(CFrame.new(-2335.2026367188, 79.786659240723, -3245.8674316406))
                            end
                        elseif game.Players.LocalPlayer.Backpack:FindFirstChild("Flower 3") and
                            game.Players.LocalPlayer.Backpack:FindFirstChild("Flower 1") and
                            game.Players.LocalPlayer.Backpack:FindFirstChild("Flower 2") then
                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Alchemist", "1")
                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Alchemist", "3")
                            wait(2)
                        else
                            if not UHuits then
                                print("Evo Race")
                                toTarget(CFrame.new(-379.70889282227, 73.0458984375, 304.84692382813))
                                UHuits = true
                            end
                            wait(2)
                        end
                    elseif game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Wenlocktoad", "1") ~= -2 then
                        if not UIjfie then
                            print("Evo Race")
                            UIjfie = true
                        end
                        if not ijoijofdga then
                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Wenlocktoad", "1")
                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Wenlocktoad", "2")
                            ijoijofdga = true
                        end
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Wenlocktoad", "1")
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Wenlocktoad", "3")
                        if game.Workspace.Enemies:FindFirstChild("Fajita [Lv. 925] [Boss]") then
                            for i, v in pairs(game.Workspace.Enemies:GetChildren()) do
                                if v.Name == "Fajita [Lv. 925] [Boss]" then
                                    repeat
                                        wait()
                                        StartMagnet = true
                                        if Auto_Haki then
                                            if not game.Players.LocalPlayer.Character:FindFirstChild("HasBuso") then
                                                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Buso")
                                            end
                                        end
                                        if not game.Players.LocalPlayer.Character:FindFirstChild(Selected_Weapons) then
                                            wait()
                                            EquipWeapon(Selected_Weapons)
                                        end
                                        toTarget(v.HumanoidRootPart.CFrame * CFrame.new(0, Distance_Auto_Farm, 0))
                                        NeedAttacking = true
                                        if not Fast_Attack then
                                            game:GetService 'VirtualUser':CaptureController()
                                            game:GetService 'VirtualUser':Button1Down(Vector2.new(1280, 672))
                                        end
                                        v.HumanoidRootPart.Size = Vector3.new(60, 60, 60)
                                        v.HumanoidRootPart.Transparency = 1
                                        v.Humanoid.JumpPower = 0
                                        v.Humanoid.WalkSpeed = 0
                                        v.HumanoidRootPart.CanCollide = false
                                        v.Humanoid:ChangeState(11)
                                    until v.Humanoid.Health <= 0 or not v.Parent or not Human_Evo
                                    StartMagnet = false
                                    NeedAttacking = false
                                end
                            end
                        elseif game.ReplicatedStorage:FindFirstChild("Fajita [Lv. 925] [Boss]") then
                            toTarget(game.ReplicatedStorage:FindFirstChild("Fajita [Lv. 925] [Boss]").HumanoidRootPart
                                         .CFrame * CFrame.new(0, 30, 0))
                        elseif game.Workspace.Enemies:FindFirstChild("Jeremy [Lv. 850] [Boss]") then
                            for i, v in pairs(game.Workspace.Enemies:GetChildren()) do
                                if v.Name == "Jeremy [Lv. 850] [Boss]" then
                                    repeat
                                        wait()
                                        StartMagnet = true
                                        if Auto_Haki then
                                            if not game.Players.LocalPlayer.Character:FindFirstChild("HasBuso") then
                                                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Buso")
                                            end
                                        end
                                        if not game.Players.LocalPlayer.Character:FindFirstChild(Selected_Weapons) then
                                            wait()
                                            EquipWeapon(Selected_Weapons)
                                        end
                                        toTarget(v.HumanoidRootPart.CFrame * CFrame.new(0, Distance_Auto_Farm, 0))
                                        NeedAttacking = true
                                        if not Fast_Attack then
                                            game:GetService 'VirtualUser':CaptureController()
                                            game:GetService 'VirtualUser':Button1Down(Vector2.new(1280, 672))
                                        end
                                        v.HumanoidRootPart.Size = Vector3.new(60, 60, 60)
                                        v.HumanoidRootPart.Transparency = 1
                                        v.Humanoid.JumpPower = 0
                                        v.Humanoid.WalkSpeed = 0
                                        v.HumanoidRootPart.CanCollide = false
                                        v.Humanoid:ChangeState(11)
                                    until v.Humanoid.Health <= 0 or not v.Parent or not Human_Evo
                                    StartMagnet = false
                                    NeedAttacking = false
                                end
                            end
                        elseif game.ReplicatedStorage:FindFirstChild("Jeremy [Lv. 850] [Boss]") then
                            toTarget(game.ReplicatedStorage:FindFirstChild("Jeremy [Lv. 850] [Boss]").HumanoidRootPart
                                         .CFrame * CFrame.new(0, 30, 0))
                        elseif game.Workspace.Enemies:FindFirstChild("Diamond [Lv. 750] [Boss]") then
                            for i, v in pairs(game.Workspace.Enemies:GetChildren()) do
                                if v.Name == "Diamond [Lv. 750] [Boss]" then
                                    repeat
                                        wait()
                                        StartMagnet = true
                                        if Auto_Haki then
                                            if not game.Players.LocalPlayer.Character:FindFirstChild("HasBuso") then
                                                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Buso")
                                            end
                                        end
                                        if not game.Players.LocalPlayer.Character:FindFirstChild(Selected_Weapons) then
                                            wait()
                                            EquipWeapon(Selected_Weapons)
                                        end
                                        toTarget(v.HumanoidRootPart.CFrame * CFrame.new(0, Distance_Auto_Farm, 0))
                                        NeedAttacking = true
                                        if not Fast_Attack then
                                            game:GetService 'VirtualUser':CaptureController()
                                            game:GetService 'VirtualUser':Button1Down(Vector2.new(1280, 672))
                                        end
                                        v.HumanoidRootPart.Size = Vector3.new(60, 60, 60)
                                        v.HumanoidRootPart.Transparency = 1
                                        v.Humanoid.JumpPower = 0
                                        v.Humanoid.WalkSpeed = 0
                                        v.HumanoidRootPart.CanCollide = false
                                        v.Humanoid:ChangeState(11)
                                    until v.Humanoid.Health <= 0 or not v.Parent or not Human_Evo
                                    StartMagnet = false
                                    NeedAttacking = false
                                end
                            end
                        elseif game.ReplicatedStorage:FindFirstChild("Diamond [Lv. 750] [Boss]") then
                            toTarget(game.ReplicatedStorage:FindFirstChild("Diamond [Lv. 750] [Boss]").HumanoidRootPart
                                         .CFrame * CFrame.new(0, 30, 0))
                        else
                            if not IJOijogr then
                                toTarget(CFrame.new(-379.70889282227, 73.0458984375, 304.84692382813))
                                IJOijogr = true
                            end
                            print("Evo Race")
                            wait(10)
                        end
                    elseif game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Wenlocktoad", "1") == -2 then
                        if not IUHidmr then
                            print("Evo Race")
                            IUHidmr = true
                        end
                        if _G.Next_Race then
                            Human_Evo_H = true

                        end
                    end
                else
                    print("Evo Race")
                    wait(5)
                end
            elseif Skypiea_Evo and not Skypiea_Evo_H and game.Players.LocalPlayer.Data.Race.Value == 'Skypiea' then
                if game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("TalkTrevor", "1") == 0 then
                    if game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Alchemist", "1") ~= -2 then
                        if not UIhjdkhz then
                            print("Evo Race")
                            UIhjdkhz = true
                        end
                        pcall(function()
                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Alchemist", "1")
                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Alchemist", "2")
                        end)
                        if not game.Players.LocalPlayer.Backpack:FindFirstChild("Flower 1") and
                            not game.Players.LocalPlayer.Character:FindFirstChild("Flower 1") and
                            game:GetService("Workspace"):FindFirstChild("Flower1") then
                            if not YUIksz then
                                print("Evo Race")
                                YUIksz = true
                            end
                            repeat
                                wait(1)
                                toTarget(game:GetService("Workspace"):FindFirstChild("Flower1").CFrame)
                            until game.Players.LocalPlayer.Backpack:FindFirstChild("Flower 1") or
                                game.Players.LocalPlayer.Character:FindFirstChild("Flower 1") or not Skypiea_Evo
                        elseif not game.Players.LocalPlayer.Backpack:FindFirstChild("Flower 2") and
                            not game.Players.LocalPlayer.Character:FindFirstChild("Flower 2") and
                            game:GetService("Workspace"):FindFirstChild("Flower2") then
                            if not YUIkxzx then
                                print("Evo Race")
                                YUIkxzx = true
                            end
                            repeat
                                wait(1)
                                toTarget(game:GetService("Workspace"):FindFirstChild("Flower2").CFrame)
                            until game.Players.LocalPlayer.Backpack:FindFirstChild("Flower 2") or
                                game.Players.LocalPlayer.Character:FindFirstChild("Flower 2") or not Skypiea_Evo
                        elseif not game.Players.LocalPlayer.Backpack:FindFirstChild("Flower 3") and
                            not game.Players.LocalPlayer.Character:FindFirstChild("Flower 3") then
                            if POsz == nil then
                                print("Evo Race")
                                POsz = true
                            end
                            if game:GetService("Workspace").Enemies:FindFirstChild("Marine Captain [Lv. 900]") then
                                for i, v in pairs(game.Workspace.Enemies:GetChildren()) do
                                    if v.Name == "Marine Captain [Lv. 900]" then
                                        repeat
                                            wait()
                                            StartMagnet = true
                                            if Auto_Haki then
                                                if not game.Players.LocalPlayer.Character:FindFirstChild("HasBuso") then
                                                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(
                                                        "Buso")
                                                end
                                            end
                                            if not game.Players.LocalPlayer.Character:FindFirstChild(Selected_Weapons) then
                                                wait()
                                                EquipWeapon(Selected_Weapons)
                                            end
                                            toTarget(v.HumanoidRootPart.CFrame * CFrame.new(0, Distance_Auto_Farm, 0))
                                            NeedAttacking = true
                                            if not Fast_Attack then
                                                game:GetService 'VirtualUser':CaptureController()
                                                game:GetService 'VirtualUser':Button1Down(Vector2.new(1280, 672))
                                            end
                                            v.HumanoidRootPart.Size = Vector3.new(60, 60, 60)
                                            v.HumanoidRootPart.Transparency = 1
                                            v.Humanoid.JumpPower = 0
                                            v.Humanoid.WalkSpeed = 0
                                            v.HumanoidRootPart.CanCollide = false
                                            v.Humanoid:ChangeState(11)
                                        until v.Humanoid.Health <= 0 or not v.Parent or
                                            game.Players.LocalPlayer.Backpack:FindFirstChild("Flower 3") or
                                            not Skypiea_Evo
                                        StartMagnet = false
                                        NeedAttacking = false
                                    end
                                end
                            else
                                toTarget(CFrame.new(-2335.2026367188, 79.786659240723, -3245.8674316406))
                            end
                        elseif game.Players.LocalPlayer.Backpack:FindFirstChild("Flower 3") and
                            game.Players.LocalPlayer.Backpack:FindFirstChild("Flower 1") and
                            game.Players.LocalPlayer.Backpack:FindFirstChild("Flower 2") then
                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Alchemist", "1")
                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Alchemist", "3")
                            wait(2)
                        else
                            if not UHuitsz then
                                print("Evo Race")
                                toTarget(CFrame.new(-379.70889282227, 73.0458984375, 304.84692382813))
                                UHuitsz = true
                            end
                            wait(2)
                        end
                    elseif game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Wenlocktoad", "1") ~= -2 then
                        if not UIjfiez then
                            print("Evo Race")
                            UIjfiez = true
                        end
                        if not ijoijofdga then
                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Wenlocktoad", "1")
                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Wenlocktoad", "2")
                            ijoijofdga = true
                        end
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Wenlocktoad", "1")
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Wenlocktoad", "3")
                        _G.Select_Player = nil
                        Check_Race_Skypiea()
                        if _G.Select_Player ~= nil then
                            print(_G.Select_Player)
                            repeat
                                wait()
                                if Auto_Haki then
                                    if not game.Players.LocalPlayer.Character:FindFirstChild("HasBuso") then
                                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Buso")
                                    end
                                end
                                if not game.Players.LocalPlayer.Character:FindFirstChild(Selected_Weapons) then
                                    wait()
                                    EquipWeapon(Selected_Weapons)
                                end
                                NeedAttacking = true
                                if not Fast_Attack then
                                    game:GetService 'VirtualUser':CaptureController()
                                    game:GetService 'VirtualUser':Button1Down(Vector2.new(1280, 672))
                                end
                                v.HumanoidRootPart.Size = Vector3.new(60, 60, 60)
                                v.HumanoidRootPart.Transparency = 1
                                v.Humanoid.JumpPower = 0
                                v.Humanoid.WalkSpeed = 0
                                v.HumanoidRootPart.CanCollide = false
                                v.Humanoid:ChangeState(11)
                                toTarget(
                                    game.Players:FindFirstChild(_G.Select_Player).Character.HumanoidRootPart.CFrame *
                                        CFrame.new(0, 0, 2))
                            until game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Wenlocktoad", "1") ==
                                -2 or game.Players:FindFirstChild(_G.Select_Player).Character.Humanoid.Health <= 0 or
                                not game.Players:FindFirstChild(_G.Select_Player) or not Skypiea_Evo
                            NeedAttacking = false
                        elseif _G.Race_Hop then
                            print("Evo Race")
                            ServerFunc:NormalTeleport()
                            wait(50)
                        else
                            print("Evo Race")
                            wait(7)
                        end
                    elseif game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Wenlocktoad", "1") == -2 then
                        if not IUHidmrz then
                            print("Evo Race")
                            IUHidmrz = true
                        end
                        if _G.Next_Race then
                            Skypiea_Evo_H = true

                        end
                    end
                else
                    print("Evo Race")
                    wait(5)
                end
            end
        end)
    end
end))

function Check_Race_Skypiea()
    for i, v in pairs(game.Players:GetChildren()) do
        if v.Name ~= game.Players.LocalPlayer.Name and tostring(v.Data.Race.Value) == "Skypiea" then
            print(v.Name)
            _G.Select_Player = v.Name
            return
        end
    end
end

Tabs.SeaEvent:AddParagraph({
    Title = "Kitsune Event",
    Content = "Fire And Trade Ember!"
})

local TradeEmber = Tabs.SeaEvent:AddToggle("AutoTradeEmber", {
    Title = "Auto Fire And Trade Ember",
    Default = AutoTradeEmber
})

TradeEmber:OnChanged(function(starts)
    AutoTradeEmber = starts
    spawn(function()
        local howareuutoday = false
        while AutoTradeEmber do
            task.wait()
            if AutoTradeEmber then
                if game:GetService("Players")["LocalPlayer"].PlayerGui.Main.Timer.Visible == true then
                    if howareuutoday then
                        game:GetService("ReplicatedStorage").Modules.Net:FindFirstChild("RF/KitsuneStatuePray")
                            :InvokeServer()
                    else
                        for i, v in ipairs(game.Workspace:GetChildren()) do
                            if v.Name:lower():find("ember") then
                                if howareuutoday then
                                    break
                                end
                                tp_da = toTarget(v:GetPivot().p)
                                tp_da:Wait()
                                task.wait(1)
                            end
                        end
                    end
                else
                    game:GetService("ReplicatedStorage").Modules.Net:FindFirstChild("RE/TouchKitsuneStatue")
                        :FireServer()
                    task.delay(270, function()
                        howareuutoday = true
                    end)
                    task.wait(1)
                end
            end
        end
    end)
end)

Tabs.SeaEvent:AddParagraph({
    Title = "Sea Event",
    Content = "Auto Shark ,Leviathan, Sea Beast and more!"
})

local SeaLevel = Tabs.SeaEvent:AddDropdown("SelectSeaLvl", {
    Title = "Selected Sea Level",
    Values = {"1", "2", "3", "4", "5", "6"},
    Multi = false,
    Default = 6
})

SeaLevel:OnChanged(function(starts)
    SelectSeaLvl = tonumber(starts)
end)

local GetRough = Tabs.SeaEvent:AddToggle("Auto_Rough_Sea", {
    Title = "Auto Rough Sea",
    Default = AutoOutSea
})

GetRough:OnChanged(function(starts)
    AutoOutSea = starts
    if starts then
        mobilefly(speaker, true)
    end
    fask.spawn(function()
        local Unpart = {}
        while fask.wait() do
            if AutoOutSea then
                local itmyboat = myboat()
                if itmyboat and itmyboat.Parent then
                    for _, v in pairs(itmyboat.Parent:GetDescendants()) do
                        if v:IsA("BasePart") then
                            if v.CanCollide ~= false then
                                v.CanCollide = false
                                Unpart[#Unpart + 1] = v
                            end
                        end
                    end
                    for _, v in pairs(game.Players.LocalPlayer.Character:GetDescendants()) do
                        if v:IsA("BasePart") then
                            if v.CanCollide ~= false then
                                v.CanCollide = false
                                Unpart[#Unpart + 1] = v
                            end
                        end
                    end

                    local Hum = game.Players.LocalPlayer.Character:FindFirstChild("Humanoid")
                    local TarCFrame = Vector3.new(-22859.4453125, 81.92976379394531, 33646.625)
                    local Current = game.Workspace.CurrentCamera
                    Current.CFrame = CFrame.new(Current.CFrame.p, TarCFrame)
                    if (Hum and Hum.Sit == true) then
                        print(FLYING)
                        if not FLYING then
                            mobilefly(speaker, true)
                            fask.wait(0.5)
                        else
                            local Current = game.Workspace.CurrentCamera
                            Current.CFrame = CFrame.new(Current.CFrame.p, TarCFrame)

                            if SelectSeaLvl <
                                tonumber(
                                    game.Players.LocalPlayer.PlayerGui.Main.Compass.Frame.DangerLevel.TextLabel.Text) then
                                game:service('VirtualInputManager'):SendKeyEvent(true, "W", false, game)

                            else

                                game:service('VirtualInputManager'):SendKeyEvent(false, "W", false, game)
                            end
                        end

                    elseif Hum then

                        itmyboat:Sit(Hum)
                        fask.wait(0.5)
                    end
                end
            else
                for i, v in pairs(Unpart) do
                    if v ~= nil then
                        v.CanCollide = true
                    end

                end
                unmobilefly(speaker)
                break
            end
        end
    end)
end)

-- local Refresh_Shark = Page7:Label("Shark Spawn : 🔴")

-- fask.spawn(function()
--     while wait() do 
--         pcall(function()
--             if World3 and game:GetService("ReplicatedStorage"):FindFirstChild("Terrorshark [Lv. 2000] [Raid Boss]") or game:GetService("Workspace").Enemies:FindFirstChild("Terrorshark [Lv. 2000] [Raid Boss]") then
--                 Refresh_Shark:Set("Shark Spawn : 🟢")
--             else
--                 Refresh_Shark:Set("Shark Spawn : 🔴")
--             end
--         end)
--     end
-- end)

local TerrorsharkFarm = Tabs.SeaEvent:AddToggle("Terrorshark", {
    Title = "Auto Terrorshark",
    Default = Terrorshark
})
Tabs.SeaEvent:AddToggle("TerrorsharkHop", {
    Title = "Auto Terrorshark [HOP]",
    Default = TerrorsharkHop
}):OnChanged(function(starts)
    TerrorsharkHop = starts
end)
Tabs.SeaEvent:AddToggle("Auto_Boat", {
    Title = "Auto Boat",
    Default = true
}):OnChanged(function(starts)
    Auto_Boat = starts
end)
Tabs.SeaEvent:AddToggle("Auto_Shark", {
    Title = "Auto Shark",
    Default = true
}):OnChanged(function(starts)
    Auto_Shark = starts
end)
local Kill_Leviathan = Tabs.SeaEvent:AddToggle("Auto_Kill_Leviathan", {
    Title = "Auto Kill Leviathan",
    Default = Auto_Kill_Leviathan
})
local Frozen_Dimension = Tabs.SeaEvent:AddToggle("Auto_Frozen_Dimension", {
    Title = "Auto Frozen Dimension",
    Default = Auto_Frozen_Dimension
})

TerrorsharkFarm:OnChanged(function(starts)
    Terrorshark = starts
    fask.spawn(function()
        while Terrorshark do
            game:GetService("RunService").Stepped:Wait()
            local itmyboat = myboat()
            for _, v in pairs(itmyboat.Parent:GetDescendants()) do
                if v:IsA("BasePart") then
                    v.CanCollide = false
                end
            end
            for _, v in pairs(game.Players.LocalPlayer.Character:GetDescendants()) do
                if v:IsA("BasePart") then
                    v.CanCollide = false
                end
            end
        end
    end)
    spawn(function()
        while Terrorshark do
            fask.wait()
            if Terrorshark then
                xpcall(function()
                    DieWait()
                    local itmyboat = myboat()
                    if itmyboat and itmyboat.Parent.Humanoid.Value <= 0 then
                        game.Players.LocalPlayer.Character:WaitForChild("Humanoid").Sit = false
                    end
                    if havemob("Terrorshark [Lv. 2000] [Raid Boss]") and
                        havemob("Terrorshark [Lv. 2000] [Raid Boss]").Humanoid.Health > 0 then
                        game.Players.LocalPlayer.Character:WaitForChild("Humanoid").Sit = false
                        game:service('VirtualInputManager'):SendKeyEvent(false, "W", false, game)
                        game:service('VirtualInputManager'):SendKeyEvent(false, "D", false, game)
                        fask.wait(0.5)
                        NoClip = true
                        local v = havemob("Terrorshark [Lv. 2000] [Raid Boss]")
                        if v:FindFirstChild("Humanoid") and v.Humanoid.Health > 0 then
                            repeat
                                fask.wait()
                                if (game.Players.LocalPlayer.Character.HumanoidRootPart.Position -
                                    v.HumanoidRootPart.Position).Magnitude > 150 then
                                    totar = toTarget(v.HumanoidRootPart.CFrame * CFrame.new(0, 60, 1))
                                else
                                    if totar then
                                        totar:Stop()
                                    end
                                    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.HumanoidRootPart
                                                                                                     .CFrame *
                                                                                                     CFrame.new(0, 60, 1)
                                    NeedAttacking = true
                                    if not game.Players.LocalPlayer.Character:FindFirstChild("HasBuso") then
                                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Buso")
                                    end
                                    if game:GetService("Players").LocalPlayer:FindFirstChild("PlayerGui") and
                                        game.Players.LocalPlayer.PlayerGui.ScreenGui:FindFirstChild("ImageLabel") then
                                    else
                                        fask.wait()
                                        game:service('VirtualUser'):CaptureController()
                                        game:service('VirtualUser'):SetKeyDown('0x65')
                                        fask.wait()
                                        game:service('VirtualUser'):SetKeyUp('0x65')
                                    end
                                    if not game.Players.LocalPlayer.Character:FindFirstChild(Selected_Weapons) then
                                        wait()
                                        EquipWeapon(Selected_Weapons)
                                    end
                                end
                            until not v.Parent or not Terrorshark or v.Humanoid.Health <= 0
                            NeedAttacking = false
                            NoClip = false
                        end
                    elseif Auto_Shark and CustomFindFirstChild({"Shark [Lv. 2000]", "Piranha [Lv. 2000]"}) then
                        game.Players.LocalPlayer.Character:WaitForChild("Humanoid").Sit = false
                        NoClip = true
                        for i, v in pairs(game.Workspace.Enemies:GetChildren()) do
                            if Auto_Shark and v:IsA("Model") and
                                table.find({"Shark [Lv. 2000]", "Piranha [Lv. 2000]"}, v.Name) and
                                v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and
                                v.Humanoid.Health > 0 then
                                repeat
                                    fask.wait()
                                    if v:FindFirstChild("HumanoidRootPart") and v:FindFirstChild("Humanoid") and
                                        (v.HumanoidRootPart.Position -
                                            game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude >
                                        150 then
                                        Farmtween = toTarget(v.HumanoidRootPart.CFrame * CFrame.new(0, 60, 1))
                                    elseif v:FindFirstChild("HumanoidRootPart") and v:FindFirstChild("Humanoid") and
                                        (v.HumanoidRootPart.Position -
                                            game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude <=
                                        150 then
                                        if Farmtween then
                                            Farmtween:Stop()
                                        end
                                        if not game.Players.LocalPlayer.Character:FindFirstChild(Selected_Weapons) then
                                            wait()
                                            EquipWeapon(Selected_Weapons)
                                        end
                                        NeedAttacking = true
                                        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.HumanoidRootPart
                                                                                                         .CFrame *
                                                                                                         CFrame.new(0,
                                                60, 1)
                                    end
                                until not Auto_Shark or not v.Parent or v.Humanoid.Health <= 0
                                NeedAttacking = false
                            end
                        end

                        NoClip = false
                    elseif Auto_Boat and CheckPirateBoat() then
                        game.Players.LocalPlayer.Character:WaitForChild("Humanoid").Sit = false
                        NoClip = true
                        for i, v in pairs(game.Workspace.Enemies:GetChildren()) do
                            if Auto_Boat and v:FindFirstChildOfClass("VehicleSeat") and v.Health.Value > 0 then
                                repeat
                                    fask.wait()
                                    local PirateBoatCFrame = v:FindFirstChildOfClass("VehicleSeat").CFrame
                                    if (game.Players.LocalPlayer.Character.HumanoidRootPart.Position -
                                        (Vector3.new(PirateBoatCFrame.X, 30, PirateBoatCFrame.Z))).magnitude > 150 then
                                        Farmtween =
                                            toTargetNoDie(CFrame.new(PirateBoatCFrame.X, 30, PirateBoatCFrame.Z))
                                    elseif (game.Players.LocalPlayer.Character.HumanoidRootPart.Position -
                                        (Vector3.new(PirateBoatCFrame.X, 30, PirateBoatCFrame.Z))).magnitude <= 150 then
                                        if Farmtween then
                                            Farmtween:Stop()
                                        end
                                        fask.spawn(function()

                                            if not LoppSeaDup then

                                                LoppSeaDup = true
                                                for i, v in ipairs({"Melee", "Blox Fruit", "Gun", "Sword"}) do
                                                    EquipWeapon(GetFightingStyle(v))
                                                    fask.wait(0.2)
                                                    if SkillZ then
                                                        game:service('VirtualInputManager'):SendKeyEvent(true, "Z",
                                                            false, game)
                                                        fask.wait(0.5)
                                                        game:service('VirtualInputManager'):SendKeyEvent(false, "Z",
                                                            false, game)
                                                    end
                                                    if SkillX then
                                                        game:service('VirtualInputManager'):SendKeyEvent(true, "X",
                                                            false, game)
                                                        fask.wait(0.5)
                                                        game:service('VirtualInputManager'):SendKeyEvent(false, "X",
                                                            false, game)
                                                    end
                                                    if SkillC then
                                                        game:service('VirtualInputManager'):SendKeyEvent(true, "C",
                                                            false, game)
                                                        fask.wait(0.5)
                                                        game:service('VirtualInputManager'):SendKeyEvent(false, "C",
                                                            false, game)
                                                    end
                                                    if SkillV then
                                                        game:service('VirtualInputManager'):SendKeyEvent(true, "V",
                                                            false, game)
                                                        fask.wait(0.5)
                                                        game:service('VirtualInputManager'):SendKeyEvent(false, "V",
                                                            false, game)
                                                    end
                                                    if SkillF then
                                                        game:service('VirtualInputManager'):SendKeyEvent(true, "F",
                                                            false, game)
                                                        fask.wait(0.5)
                                                        game:service('VirtualInputManager'):SendKeyEvent(false, "F",
                                                            false, game)
                                                    end
                                                    fask.wait(0.5)
                                                end
                                                LoppSeaDup = false
                                            end
                                        end)
                                        PosKillSea = PirateBoatCFrame.Position
                                        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = PirateBoatCFrame *
                                                                                                         CFrame.new(0,
                                                10, 1)
                                        SpamSkillSea = true
                                    end
                                until not Auto_Boat or not v.Parent or not v:FindFirstChildOfClass("VehicleSeat") or
                                    v.Health.Value == 0
                                SpamSkillSea = false
                            end
                        end

                    elseif (game.Players.LocalPlayer.Character:FindFirstChild("Humanoid") and
                        game.Players.LocalPlayer.Character:WaitForChild("Humanoid").Sit == true) then
                        NoClip = false
                        NeedAttacking = false
                        game:service('VirtualInputManager'):SendKeyEvent(true, "W", false, game)
                        game:service('VirtualInputManager'):SendKeyEvent(true, "D", false, game)

                    elseif itmyboat and (game.Players.LocalPlayer.Character:FindFirstChild("Humanoid") and
                        game.Players.LocalPlayer.Character:WaitForChild("Humanoid").Sit == false) and
                        (game.Players.LocalPlayer.Character.HumanoidRootPart.Position -
                            Vector3.new(-22859.4453125, 41.92976379394531, 33646.625)).Magnitude > 60 then
                        NoClip = true
                        TweenToSea = toTarget(CFrame.new(-22859.4453125, 41.92976379394531, 33646.625))
                        TweenToSea:Wait()
                        fask.wait(2)
                        NoClip = false
                    elseif itmyboat and (game.Players.LocalPlayer.Character:FindFirstChild("Humanoid") and
                        game.Players.LocalPlayer.Character:WaitForChild("Humanoid").Sit == false) then
                        NoClip = false
                        print("??")
                        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-22859.4453125,
                            41.92976379394531, 33646.625) * CFrame.new(0, 30, 0)
                        fask.wait(0.1)
                        itmyboat:Sit(game.Players.LocalPlayer.Character:WaitForChild("Humanoid"))
                        fask.wait(1)

                    elseif not itmyboat then
                        NoClip = true
                        TweenToSea = toTarget(CFrame.new(-16221.619140625, 9.0863618850708, 432.0790100097656))
                        TweenToSea:Wait()
                        _F("BuyBoat", "PirateGrandBrigade")
                        fask.wait(0.5)
                        NoClip = false
                    end
                end, print)
            end
        end
    end)
end)

fask.spawn(function()
    while fask.wait() do
        if TerrorsharkHop then
            if havemob("Terrorshark [Lv. 2000] [Raid Boss]") and
                havemob("Terrorshark [Lv. 2000] [Raid Boss]").Humanoid.Health > 0 then
                game.Players.LocalPlayer.Character:WaitForChild("Humanoid").Sit = false
                fask.wait(0.5)
                NoClip = true
                local v = havemob("Terrorshark [Lv. 2000] [Raid Boss]")
                if not v:FindFirstChild("Humanoid") or v.Humanoid.Health <= 0 then
                    return
                end
                repeat
                    fask.wait()
                    if (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - v.HumanoidRootPart.Position).Magnitude >
                        150 then
                        totar = toTarget(v.HumanoidRootPart.CFrame * CFrame.new(0, 60, 1))
                    else
                        if totar then
                            totar:Stop()
                        end
                        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.HumanoidRootPart.CFrame *
                                                                                         CFrame.new(0, 60, 1)
                        NeedAttacking = true
                        if not game.Players.LocalPlayer.Character:FindFirstChild("HasBuso") then
                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Buso")
                        end
                        if game:GetService("Players").LocalPlayer:FindFirstChild("PlayerGui") and
                            game.Players.LocalPlayer.PlayerGui.ScreenGui:FindFirstChild("ImageLabel") then
                        else
                            fask.wait()
                            game:service('VirtualUser'):CaptureController()
                            game:service('VirtualUser'):SetKeyDown('0x65')
                            fask.wait()
                            game:service('VirtualUser'):SetKeyUp('0x65')
                        end
                        if not game.Players.LocalPlayer.Character:FindFirstChild(Selected_Weapons) then
                            wait()
                            EquipWeapon(Selected_Weapons)
                        end
                    end
                until not v.Parent or not Terrorshark or v.Humanoid.Health <= 0 or not v.Parent
                NeedAttacking = false
                NoClip = false
            else
                ServerFunc:TeleportFast()
            end
        end
    end
end)

Kill_Leviathan:OnChanged(function(value)
    Auto_Kill_Leviathan = value
    if value == false then
        toTarget(game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame)
    end
    Save()
    fask.spawn(function()
        while Auto_Kill_Leviathan do
            fask.wait()
            local wasdmob
            for i, v in pairs(game.Workspace.SeaBeasts:GetChildren()) do
                if Auto_Kill_Leviathan and
                    (IsSameName(v.Name, "Leviathan [Raid Boss]") or IsSameName(v.Name, "Leviathan")) and
                    v:FindFirstChild("HumanoidRootPart") and v.Health.Value > 0 then
                    wasdmob = v
                    break
                end
            end
            if wasdmob then
                NoClip = true
                repeat
                    fask.wait()
                    local SeaBeastFrame = wasdmob:FindFirstChild("HumanoidRootPart").CFrame
                    if (game.Players.LocalPlayer.Character.HumanoidRootPart.Position -
                        (Vector3.new(SeaBeastFrame.X, 30, SeaBeastFrame.Z))).magnitude > 150 then
                        Farmtween = toTarget(CFrame.new(SeaBeastFrame.X, 30, SeaBeastFrame.Z))
                    elseif (game.Players.LocalPlayer.Character.HumanoidRootPart.Position -
                        (Vector3.new(SeaBeastFrame.X, 30, SeaBeastFrame.Z))).magnitude <= 150 then
                        if Farmtween then
                            Farmtween:Stop()
                        end
                        if TypeSeabeast == 0 then
                            PosKillSea = Vector3.new(SeaBeastFrame.X, 80, SeaBeastFrame.Z)
                            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame =
                                CFrame.new(SeaBeastFrame.X, 30, SeaBeastFrame.Z)
                        else
                            PosKillSea = Vector3.new(SeaBeastFrame.X, 60, SeaBeastFrame.Z)
                            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame =
                                CFrame.new(SeaBeastFrame.X, 70, SeaBeastFrame.Z)
                        end
                        fask.spawn(function()
                            if not LoppSeaDup then
                                LoppSeaDup = true
                                for i, v in ipairs({"Melee", "Blox Fruit", "Sword"}) do
                                    EquipWeapon(GetFightingStyle(v))
                                    fask.wait(0.2)
                                    if Skill_Z then
                                        game:service('VirtualInputManager'):SendKeyEvent(true, "Z", false, game)
                                        fask.wait(0.5)
                                        game:service('VirtualInputManager'):SendKeyEvent(false, "Z", false, game)
                                    end
                                    if Skill_X then
                                        game:service('VirtualInputManager'):SendKeyEvent(true, "X", false, game)
                                        fask.wait(0.5)
                                        game:service('VirtualInputManager'):SendKeyEvent(false, "X", false, game)
                                    end
                                    if Skill_C then
                                        game:service('VirtualInputManager'):SendKeyEvent(true, "C", false, game)
                                        fask.wait(0.5)
                                        game:service('VirtualInputManager'):SendKeyEvent(false, "C", false, game)
                                    end
                                    if Skill_V then
                                        game:service('VirtualInputManager'):SendKeyEvent(true, "V", false, game)
                                        fask.wait(0.5)
                                        game:service('VirtualInputManager'):SendKeyEvent(false, "V", false, game)
                                    end
                                    fask.wait(0.5)
                                end
                                LoppSeaDup = false
                            end
                        end)
                        SpamSkillSea = true
                    end
                until not Auto_Kill_Leviathan or not wasdmob.Parent or not wasdmob:FindFirstChild("HumanoidRootPart") or
                    wasdmob.Health.Value == 0
                SpamSkillSea = false
            end
            NoClip = false
        end
    end)
end)

Frozen_Dimension:OnChanged(function(starts)
    Auto_Frozen_Dimension = starts
    if starts == false then
        toTarget(game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame)
    end
    Save()
    fask.spawn(function()
        while Auto_Frozen_Dimension do
            fask.wait()
            for i, v in ipairs(game:GetService("Workspace")._WorldOrigin.Locations:GetChildren()) do
                if Auto_Frozen_Dimension and IsSameName(v.Name, "Frozen Dimension") then
                    repeat
                        fask.wait()
                        NoClip = true
                        wasdtween = toTarget(v.CFrame * CFrame.new(1, 50, 0))
                    until not v.Parent or not Auto_Frozen_Dimension
                    NoClip = false
                    if wasdtween then
                        wasdtween:Stop()
                    end
                end
            end
        end
        NoClip = false
    end)
end)

Tabs.Visuals:AddParagraph({
    Title = "World - Teleport",
    Content = "Can Teleport World 1-3"
})

Tabs.Visuals:AddButton({
    Title = "Teleport to TravelMain",
    Callback = function()
        Window:Dialog({
            Title = "Teleport to TravelMain",
            Content = "Can you sure ?",
            Buttons = {{
                Title = "Confirm",
                Callback = function()
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("TravelMain")
                end
            }, {
                Title = "Cancel",
                Callback = function()
                    warn("Niggers")
                end
            }}
        })
    end
})

Tabs.Visuals:AddButton({
    Title = "Teleport to TravelDressrosa",
    Callback = function()
        Window:Dialog({
            Title = "Teleport to TravelDressrosa",
            Content = "Can you sure ?",
            Buttons = {{
                Title = "Confirm",
                Callback = function()
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("TravelDressrosa")
                end
            }, {
                Title = "Cancel",
                Callback = function()
                    warn("Niggers")
                end
            }}
        })
    end
})

Tabs.Visuals:AddButton({
    Title = "Teleport to TravelZou",
    Callback = function()
        Window:Dialog({
            Title = "Teleport to TravelZou",
            Content = "Can you sure ?",
            Buttons = {{
                Title = "Confirm",
                Callback = function()
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("TravelZou")
                end
            }, {
                Title = "Cancel",
                Callback = function()
                    warn("Niggers")
                end
            }}
        })
    end
})

-- [Check Place Teleports]
TeleportTable = {}

if World1 then
    TeleportTable = {"Jones Salad", "Marine1", "Marine2", "Midle Town", "Jungle", "Pirate Village", "Desert",
                     "Frozen Village", "Colosseum", "Prison", "Mob Leader", "Magma Village", "UnderWater Gate",
                     "UnderWater City", "Fountain City", "Sky1", "Sky2", "Sky3"}
elseif World2 then
    TeleportTable = {"Dock", "Mansion", "Kingdom Of Rose", "Cafe", "Sunflower Field", "Jeramy Mountain", "Colossuem",
                     "Factory", "The Bridge", "Green Bit", "Graveyard", "Dark Area", "Snow Mountain", "Hot Island",
                     "Cold Island", "Ice Castle", "Usopp's Island", "inscription Island", "Forgotten Island",
                     "Ghost Ship"}
elseif World3 then
    TeleportTable = {"Port Town", "Hydra Island", "Gaint Tree", "Mansion", "Castle on the Sea", "Graveyard Island",
                     "Icecream Island", "Peanut Island", "Lab", "Cake Loaf", "Great Tree Npc"}
end

Tabs.Visuals:AddParagraph({
    Title = "Teleport - Area"
})

local SelectPlace = Tabs.Visuals:AddDropdown("SelectLocalTeleport", {
    Title = "Select Place",
    Values = TeleportTable,
    Multi = false,
    Default = 1
})

SelectPlace:OnChanged(function(Value)
    _G.SelectLocalTeleport = Value
end)

local TPSelect = Tabs.Visuals:AddToggle("TeleportToPlace", {
    Title = "Teleport Selection",
    Default = false
})

TPSelect:OnChanged(function(value)
    TeleportToPlace = value
    if value == false then
        toTarget(game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame)
    end
    if TeleportToPlace then
        if World1 then
            if _G.SelectLocalTeleport == "Jones Salad" then
                toTarget(CFrame.new(1042.1501464844, 16.299360275269, 1444.3442382813))
            end
            if _G.SelectLocalTeleport == "Marine1" then
                toTarget(CFrame.new(-2599.6655273438, 6.9146227836609, 2062.2216796875))
            end
            if _G.SelectLocalTeleport == "Marine2" then
                toTarget(CFrame.new(-5081.3452148438, 85.221641540527, 4257.3588867188))
            end
            if _G.SelectLocalTeleport == "Midle Town" then
                toTarget(CFrame.new(-655.97088623047, 7.878026008606, 1573.7612304688))
            end
            if _G.SelectLocalTeleport == "Jungle" then
                toTarget(CFrame.new(-1499.9877929688, 22.877912521362, 353.87060546875))
            end
            if _G.SelectLocalTeleport == "Pirate Village" then
                toTarget(CFrame.new(-1163.3889160156, 44.777843475342, 3842.8276367188))
            end
            if _G.SelectLocalTeleport == "Desert" then
                toTarget(CFrame.new(954.02056884766, 6.6275520324707, 4262.611328125))
            end
            if _G.SelectLocalTeleport == "Frozen Village" then
                toTarget(CFrame.new(1144.5270996094, 7.3292083740234, -1164.7322998047))
            end
            if _G.SelectLocalTeleport == "Colosseum" then
                toTarget(CFrame.new(-1667.5869140625, 39.385631561279, -3135.5817871094))
            end
            if _G.SelectLocalTeleport == "Prison" then
                toTarget(CFrame.new(4857.6982421875, 5.6780304908752, 732.75750732422))
            end
            if _G.SelectLocalTeleport == "Mob Leader" then
                toTarget(CFrame.new(-2841.9604492188, 7.3560485839844, 5318.1040039063))
            end
            if _G.SelectLocalTeleport == "Magma Village" then
                toTarget(CFrame.new(-5328.8740234375, 8.6164798736572, 8427.3994140625))
            end
            if _G.SelectLocalTeleport == "UnderWater Gate" then
                toTarget(CFrame.new(3893.953125, 5.3989524841309, -1893.4851074219))
            end
            if _G.SelectLocalTeleport == "UnderWater City" then
                toTarget(CFrame.new(61191.12109375, 18.497436523438, 1561.8873291016))
            end
            if _G.SelectLocalTeleport == "Fountain City" then
                toTarget(CFrame.new(5244.7133789063, 38.526943206787, 4073.4987792969))
            end
            if _G.SelectLocalTeleport == "Sky1" then
                toTarget(CFrame.new(-4878.0415039063, 717.71246337891, -2637.7294921875))
            end
            if _G.SelectLocalTeleport == "Sky2" then
                toTarget(CFrame.new(-7899.6157226563, 5545.6030273438, -422.21798706055))
            end
            if _G.SelectLocalTeleport == "Sky3" then
                toTarget(CFrame.new(-7868.5288085938, 5638.205078125, -1482.5548095703))
            end
        elseif World2 then
            if _G.SelectLocalTeleport == "Dock" then
                toTarget(CFrame.new(-12.519311904907, 19.302536010742, 2827.853515625))
            end
            if _G.SelectLocalTeleport == "Mansion" then
                toTarget(CFrame.new(-390.34829711914, 321.89730834961, 869.00506591797))
            end
            if _G.SelectLocalTeleport == "Kingdom Of Rose" then
                toTarget(CFrame.new(-388.29895019531, 138.35575866699, 1132.1662597656))
            end
            if _G.SelectLocalTeleport == "Cafe" then
                toTarget(CFrame.new(-379.70889282227, 73.0458984375, 304.84692382813))
            end
            if _G.SelectLocalTeleport == "Sunflower Field" then
                toTarget(CFrame.new(-1576.7171630859, 198.61849975586, 13.725157737732))
            end
            if _G.SelectLocalTeleport == "Jeramy Mountain" then
                toTarget(CFrame.new(1986.3519287109, 448.95678710938, 796.70239257813))
            end
            if _G.SelectLocalTeleport == "Colossuem" then
                toTarget(CFrame.new(-1871.8974609375, 45.820514678955, 1359.6843261719))
            end
            if _G.SelectLocalTeleport == "Factory" then
                toTarget(CFrame.new(349.53750610352, 74.446998596191, -355.62420654297))
            end
            if _G.SelectLocalTeleport == "The Bridge" then
                toTarget(CFrame.new(-1860.6354980469, 88.384948730469, -1859.1593017578))
            end
            if _G.SelectLocalTeleport == "Green Bit" then
                toTarget(CFrame.new(-2202.3706054688, 73.097663879395, -2819.2687988281))
            end
            if _G.SelectLocalTeleport == "Graveyard" then
                toTarget(CFrame.new(-5617.5927734375, 492.22183227539, -778.3017578125))
            end
            if _G.SelectLocalTeleport == "Dark Area" then
                toTarget(CFrame.new(3464.7700195313, 13.375151634216, -3368.90234375))
            end
            if _G.SelectLocalTeleport == "Snow Mountain" then
                toTarget(CFrame.new(561.23834228516, 401.44781494141, -5297.14453125))
            end
            if _G.SelectLocalTeleport == "Hot Island" then
                toTarget(CFrame.new(-5505.9633789063, 15.977565765381, -5366.6123046875))
            end
            if _G.SelectLocalTeleport == "Cold Island" then
                toTarget(CFrame.new(-5924.716796875, 15.977565765381, -4996.427734375))
            end
            if _G.SelectLocalTeleport == "Ice Castle" then
                toTarget(CFrame.new(6111.7109375, 294.41259765625, -6716.4829101563))
            end
            if _G.SelectLocalTeleport == "Usopp's Island" then
                toTarget(CFrame.new(4760.4985351563, 8.3444719314575, 2849.2426757813))
            end
            if _G.SelectLocalTeleport == "inscription Island" then
                toTarget(CFrame.new(-5099.01171875, 98.241539001465, 2424.4035644531))
            end
            if _G.SelectLocalTeleport == "Forgotten Island" then
                toTarget(CFrame.new(-3051.9514160156, 238.87203979492, -10250.807617188))
            end
            if _G.SelectLocalTeleport == "Ghost Ship" then
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance", Vector3.new(
                    923.21252441406, 126.9760055542, 32852.83203125))
            end
        elseif World3 then
            if _G.SelectLocalTeleport == "Port Town" then
                toTarget(CFrame.new(-275.21615600586, 43.755737304688, 5451.0659179688))
            end
            if _G.SelectLocalTeleport == "Hydra Island" then
                toTarget(CFrame.new(5541.2685546875, 668.30456542969, 195.48069763184))
            end
            if _G.SelectLocalTeleport == "Gaint Tree" then
                toTarget(CFrame.new(2276.0859375, 25.87850189209, -6493.03125))
            end
            if _G.SelectLocalTeleport == "Mansion" then
                local args = {
                    [1] = "requestEntrance",
                    [2] = Vector3.new(-12548.595703125, 337.17001342773, -7554.6103515625)
                }

                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
            end
            if _G.SelectLocalTeleport == "Castle on the Sea" then
                local args = {
                    [1] = "requestEntrance",
                    [2] = Vector3.new(-5079.44677734375, 313.7293395996094, -3151.065185546875)
                }
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
            end
            if _G.SelectLocalTeleport == "Graveyard Island" then
                toTarget(CFrame.new(-9515.07324, 142.130615, 5537.58398))
            end
            if _G.SelectLocalTeleport == "Icecream Island" then
                toTarget(CFrame.new(-880.894531, 118.245354, -11030.7607, -0.867174983, 1.48501234e-09, 0.498003572,
                    2.70457789e-08, 1, 4.41129586e-08, -0.498003572, 5.1722548e-08, -0.867174983))
            end
            if _G.SelectLocalTeleport == "Peanut Island" then
                toTarget(CFrame.new(-2124.06738, 44.0723495, -10179.8281, -0.623125494, -2.55908191e-07, -0.782121837,
                    -1.40530574e-07, 1, -2.15235005e-07, 0.782121837, -2.42063933e-08, -0.623125494))
            end
            if _G.SelectLocalTeleport == "Lab" then
                toTarget(CFrame.new(-5057.146484375, 314.54132080078, -2934.7995605469))
            end
            if _G.SelectLocalTeleport == "Cake Loaf" then
                toTarget(CFrame.new(-1977.36767578125, 251.509521484375, -12380.4189453125))
            end
            if _G.SelectLocalTeleport == "Great Tree Npc" then
                toTarget(CFrame.new(2954.170166015625, 2281.994140625, -7211.25634765625))
            end
        end
    end
end)

Tabs.Visuals:AddParagraph({
    Title = "Dungeons"
})

All_Raids = {"Flame", "Ice", "Quake", "Light", "Dark", "String", "Rumble", "Magma", "Human: Buddha", "Sand",
             "Bird: Phoenix", "Dough"}

local RaidSelect = Tabs.Visuals:AddDropdown("Select_Raids", {
    Title = "Select Raids",
    Values = All_Raids,
    Multi = false,
    Default = 1
})

RaidSelect:OnChanged(function(Value)
    Select_Raids = Value
    Save()
end)

local Farm_Raid = Tabs.Visuals:AddToggle("Auto_Raids", {
    Title = "Auto Farm Dungeon",
    Default = Auto_Raids
})
local KillAura = Tabs.Visuals:AddToggle("Kill_Aura", {
    Title = "Auto Farm Dungeon",
    Default = Kill_Aura
})
local Next_Island = Tabs.Visuals:AddToggle("Auto_Next_Island", {
    Title = "Auto Farm Dungeon",
    Default = Auto_Next_Island
})
local AutoAwakened = Tabs.Visuals:AddToggle("Auto_Awakened", {
    Title = "Auto Farm Dungeon",
    Default = Auto_Awakened
})

Farm_Raid:OnChanged(function(value)
    Auto_Raids = value
    Save()
end)

KillAura:OnChanged(function(value)
    Kill_Aura = value
    Save()
end)
Next_Island:OnChanged(function(value)
    Auto_Next_Island = value
    Save()
end)
AutoAwakened:OnChanged(function(value)
    Auto_Awakened = value
    Save()
end)

fask.spawn(LPH_JIT_MAX(function()
    while wait() do
        if Auto_Raids and not FarmLv then
            if game.Players.LocalPlayer.Backpack:FindFirstChild("Special Microchip") or
                game.Players.LocalPlayer.Character:FindFirstChild("Special Microchip") or
                game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 5") or
                game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 4") or
                game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 3") or
                game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 2") or
                game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 1") then
                if game.Players.LocalPlayer.Backpack:FindFirstChild("Special Microchip") or
                    game.Players.LocalPlayer.Character:FindFirstChild("Special Microchip") and
                    game.Players.LocalPlayer.PlayerGui.Main.Timer.Visible == false then
                    if World2 then
                        fireclickdetector(Workspace.Map.CircleIsland.RaidSummon2.Button.Main.ClickDetector)
                    elseif World3 then
                        fireclickdetector(Workspace.Map["Boat Castle"].RaidSummon2.Button.Main.ClickDetector)
                    end
                    wait(17)
                elseif game.Players.LocalPlayer.PlayerGui.Main.Timer.Visible == true then
                    pcall(function()
                        repeat
                            wait()
                            if game.Players.LocalPlayer.PlayerGui.Main.Timer.Visible == false then

                            elseif game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 5") then
                                game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 5").CFrame =
                                    CFrame.new(game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild(
                                                   "Island 5").CFrame.x, 60,
                                        game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 5")
                                            .CFrame.z)
                                if (game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 5")
                                    .Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude >
                                    350 then
                                    Farmtween = toTarget(
                                        game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 5")
                                            .CFrame)
                                elseif (game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 5")
                                    .Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude <=
                                    350 then
                                    if Farmtween then
                                        Farmtween:Stop()
                                    end
                                    toTarget(game:GetService("Workspace")["_WorldOrigin"].Locations["Island 5"].CFrame *
                                                 CFrame.new(4, 65, 10))
                                end
                            elseif game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 4") then
                                game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 4").CFrame =
                                    CFrame.new(game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild(
                                                   "Island 4").CFrame.x, 60,
                                        game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 4")
                                            .CFrame.z)
                                if (game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 4")
                                    .Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude >
                                    350 then
                                    Farmtween = toTarget(
                                        game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 4")
                                            .CFrame)
                                elseif (game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 4")
                                    .Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude <=
                                    350 then
                                    if Farmtween then
                                        Farmtween:Stop()
                                    end
                                    toTarget(game:GetService("Workspace")["_WorldOrigin"].Locations["Island 4"].CFrame *
                                                 CFrame.new(4, 65, 10))
                                end
                            elseif game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 3") then
                                game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 3").CFrame =
                                    CFrame.new(game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild(
                                                   "Island 3").CFrame.x, 60,
                                        game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 3")
                                            .CFrame.z)
                                if (game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 3")
                                    .Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude >
                                    350 then
                                    Farmtween = toTarget(
                                        game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 3")
                                            .CFrame)
                                elseif (game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 3")
                                    .Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude <=
                                    350 then
                                    if Farmtween then
                                        Farmtween:Stop()
                                    end
                                    toTarget(game:GetService("Workspace")["_WorldOrigin"].Locations["Island 3"].CFrame *
                                                 CFrame.new(4, 65, 10))
                                end
                            elseif game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 2") then
                                game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 2").CFrame =
                                    CFrame.new(game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild(
                                                   "Island 2").CFrame.x, 60,
                                        game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 2")
                                            .CFrame.z)
                                if (game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 2")
                                    .Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude >
                                    350 then
                                    Farmtween = toTarget(
                                        game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 2")
                                            .CFrame)
                                elseif (game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 2")
                                    .Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude <=
                                    350 then
                                    if Farmtween then
                                        Farmtween:Stop()
                                    end
                                    toTarget(game:GetService("Workspace")["_WorldOrigin"].Locations["Island 2"].CFrame *
                                                 CFrame.new(4, 65, 10))
                                end
                            elseif game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 1") then
                                game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 1").CFrame =
                                    CFrame.new(game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild(
                                                   "Island 1").CFrame.x, 60,
                                        game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 1")
                                            .CFrame.z)
                                if (game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 1")
                                    .Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude >
                                    350 then
                                    Farmtween = toTarget(
                                        game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 1")
                                            .CFrame)
                                elseif (game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 1")
                                    .Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude <=
                                    350 then
                                    if Farmtween then
                                        Farmtween:Stop()
                                    end
                                    toTarget(game:GetService("Workspace")["_WorldOrigin"].Locations["Island 1"].CFrame *
                                                 CFrame.new(4, 65, 10))
                                end
                            end
                            for i, v in pairs(game.Workspace.Enemies:GetChildren()) do
                                if Auto_Raids and game.Players.LocalPlayer.PlayerGui.Main.Timer.Visible == true and
                                    v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and
                                    (v.HumanoidRootPart.Position -
                                        game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).magnitude <=
                                    400 then
                                    repeat
                                        wait()
                                        v.Humanoid.Health = 0
                                        v:BreakJoints()
                                    until not Auto_Raids or v.Humanoid.Health <= 0 or not v.Parent
                                end
                            end
                            if Auto_Awakened then
                                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Awakener", "Awaken")
                            end
                        until not game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 5") or
                            not game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 4") or
                            not game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 3") or
                            not game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 2") or
                            not game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 1") or
                            game.Players.LocalPlayer.PlayerGui.Main.Timer.Visible == false
                        if Auto_Awakened then
                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Awakener", "Awaken")
                        end
                    end)
                end
            else
                if Auto_Awakened then
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Awakener", "Awaken")
                end
                local args = {
                    [1] = "RaidsNpc",
                    [2] = "Select",
                    [3] = tostring(Select_Raids)
                }
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
            end
        end
    end
end))

spawn(function()
    while wait() do
        pcall(function()
            if Auto_Awakened then
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Awakener", "Check")
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Awakener", "Awaken")
            end
        end)
    end
end)

spawn(function()
    while wait() do
        if Kill_Aura then
            for i, v in pairs(game.Workspace.Enemies:GetDescendants()) do
                if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
                    pcall(function()
                        repeat
                            wait()
                            v.Humanoid.Health = 0
                            v.HumanoidRootPart.CanCollide = false
                            v.HumanoidRootPart.Size = Vector3.new(50, 50, 50)
                            v.HumanoidRootPart.Transparency = 0.8
                        until not Kill_Aura or not Auto_Raids or not RaidSuperhuman or not v.Parent or v.Humanoid.Health <=
                            0
                    end)
                end
            end
        end
    end
end)

spawn(function()
    pcall(function()
        while wait() do
            if Auto_Next_Island then
                if game:GetService("Players")["LocalPlayer"].PlayerGui.Main.Timer.Visible == true and
                    game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 5") or
                    game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 4") or
                    game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 3") or
                    game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 2") or
                    game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 1") then
                    if game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 5") then
                        toTarget(game:GetService("Workspace")["_WorldOrigin"].Locations["Island 5"].CFrame *
                                     CFrame.new(4, 65, 10))
                    elseif game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 4") then
                        toTarget(game:GetService("Workspace")["_WorldOrigin"].Locations["Island 4"].CFrame *
                                     CFrame.new(4, 65, 10))
                    elseif game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 3") then
                        toTarget(game:GetService("Workspace")["_WorldOrigin"].Locations["Island 3"].CFrame *
                                     CFrame.new(4, 65, 10))
                    elseif game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 2") then
                        toTarget(game:GetService("Workspace")["_WorldOrigin"].Locations["Island 2"].CFrame *
                                     CFrame.new(4, 65, 10))
                    elseif game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 1") then
                        toTarget(game:GetService("Workspace")["_WorldOrigin"].Locations["Island 1"].CFrame *
                                     CFrame.new(4, 65, 10))
                    end
                elseif World2 then
                    toTarget(CFrame.new(-6438.73535, 250.645355, -4501.50684))
                elseif World3 then
                    toTarget(CFrame.new(-5057.146484375, 314.54132080078, -2934.7995605469))
                end
            end
        end
    end)
end)

Tabs.Visuals:AddParagraph({
    Title = "Devil Fruits"
})

local RandDF = Tabs.Visuals:AddToggle("Auto_Random_DF", {
    Title = "Auto Buy Random Fruits",
    Default = Auto_Random_DF
})

RandDF:OnChanged(function(value)
    Auto_Random_DF = value
    Save()
end)

spawn(function()
    while wait() do
        if Auto_Random_DF then
            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Cousin", "Buy")
            wait(15)
        end
    end
end)

Tabs.Visuals:AddButton({
    Title = "Buy Random Fruits",
    Description = "Buy Random Devil Fruits Fruits",
    Callback = function()
        game:GetService("Players")["LocalPlayer"].PlayerGui:FindFirstChild("Notifications"):Destroy()
    end
})

local BringFS = Tabs.Visuals:AddDropdown("Method_Bring", {
    Title = "Select Method",
    Values = {"Bring", "Tween"},
    Multi = false,
    Default = 1
})

BringFS:OnChanged(function(Value)
    Method_Bring = Value
    Save()
end)

local BringFReals = Tabs.Visuals:AddToggle("Bring_Fruits", {
    Title = "Auto Brings Fruits",
    Default = Bring_Fruits
})
local StoreFruits = Tabs.Visuals:AddToggle("Auto_Store_Fruits", {
    Title = "Auto Store Fruits",
    Default = Auto_Store_Fruits
})

BringFReals:OnChanged(function(value)
    Bring_Fruits = value
    Save()
    fask.spawn(LPH_JIT_MAX(function()
        while wait() do
            if Bring_Fruits then
                pcall(function()
                    for i, v in pairs(game.Workspace:GetChildren()) do
                        if v:IsA("Tool") and v:FindFirstChild('Handle') then
                            if Method_Bring == "Bring" and Bring_Fruits then
                                firetouchinterest(game.Players.LocalPlayer.Character.HumanoidRootPart, v.Handle, 0)
                                firetouchinterest(game.Players.LocalPlayer.Character.HumanoidRootPart, v.Handle, 1)
                            end
                            if Method_Bring == "Tween" and Bring_Fruits then
                                _G.BringFound = true
                                toTarget(v.Handle.CFrame)
                            end
                        end
                        if v.Name == "Fruit " and v:FindFirstChild("Handle") then
                            if Method_Bring == "Bring" and Bring_Fruits then
                                firetouchinterest(game.Players.LocalPlayer.Character.HumanoidRootPart, v.Handle, 0)
                                firetouchinterest(game.Players.LocalPlayer.Character.HumanoidRootPart, v.Handle, 1)
                                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.Handle.CFrame
                            end
                            if Method_Bring == "Tween" and Bring_Fruits then
                                toTargetP(v.Handle.CFrame)
                            end
                        end
                    end
                    local i = game.Workspace:FindFirstChildOfClass('Tool')
                    if _G.BringFound and not i then
                        _G.BringFound = false
                    end
                end)
            end
        end
    end))
end)

StoreFruits:OnChanged(function(value)
    Auto_Store_Fruits = value
    Save()
    spawn(function()
        while wait() do
            if Auto_Store_Fruits then
                pcall(function()
                    DropFruit()
                    wait()
                    if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Bomb Fruit") or
                        game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Bomb Fruit") then
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit", "Bomb-Bomb",
                            game:GetService("Players").LocalPlayer.Character:FindFirstChild("Bomb Fruit") or
                                game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Bomb Fruit"))
                    end
                    if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Spike Fruit") or
                        game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Spike Fruit") then
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit", "Spike-Spike",
                            game:GetService("Players").LocalPlayer.Character:FindFirstChild("Spike Fruit") or
                                game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Spike Fruit"))
                    end
                    if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Chop Fruit") or
                        game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Chop Fruit") then
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit", "Chop-Chop",
                            game:GetService("Players").LocalPlayer.Character:FindFirstChild("Chop Fruit") or
                                game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Chop Fruit"))
                    end
                    if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Spring Fruit") or
                        game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Spring Fruit") then
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit", "Spring-Spring",
                            game:GetService("Players").LocalPlayer.Character:FindFirstChild("Spring Fruit") or
                                game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Spring Fruit"))
                    end
                    if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Kilo Fruit") or
                        game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Kilo Fruit") then
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit", "Kilo-Kilo",
                            game:GetService("Players").LocalPlayer.Character:FindFirstChild("Kilo Fruit") or
                                game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Kilo Fruit"))
                    end
                    if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Smoke Fruit") or
                        game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Smoke Fruit") then
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit", "Smoke-Smoke",
                            game:GetService("Players").LocalPlayer.Character:FindFirstChild("Smoke Fruit") or
                                game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Smoke Fruit"))
                    end
                    if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Spin Fruit") or
                        game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Spin Fruit") then
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit", "Spin-Spin",
                            game:GetService("Players").LocalPlayer.Character:FindFirstChild("Spin Fruit") or
                                game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Spin Fruit"))
                    end
                    if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Flame Fruit") or
                        game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Flame Fruit") then
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit", "Flame-Flame",
                            game:GetService("Players").LocalPlayer.Character:FindFirstChild("Flame Fruit") or
                                game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Flame Fruit"))
                    end
                    if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Bird: Falcon Fruit") or
                        game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Bird: Falcon Fruit") then
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit",
                            "Bird-Bird: Falcon",
                            game:GetService("Players").LocalPlayer.Character:FindFirstChild("Bird: Falcon Fruit") or
                                game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Bird: Falcon Fruit"))
                    end
                    if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Ice Fruit") or
                        game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Ice Fruit") then
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit", "Ice-Ice",
                            game:GetService("Players").LocalPlayer.Character:FindFirstChild("Ice Fruit") or
                                game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Ice Fruit"))
                    end
                    if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Sand Fruit") or
                        game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Sand Fruit") then
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit", "Sand-Sand",
                            game:GetService("Players").LocalPlayer.Character:FindFirstChild("Sand Fruit") or
                                game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Sand Fruit"))
                    end
                    if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Dark Fruit") or
                        game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Dark Fruit") then
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit", "Dark-Dark",
                            game:GetService("Players").LocalPlayer.Character:FindFirstChild("Dark Fruit") or
                                game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Dark Fruit"))
                    end
                    if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Revive Fruit") or
                        game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Revive Fruit") then
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit", "Revive-Revive",
                            game:GetService("Players").LocalPlayer.Character:FindFirstChild("Revive Fruit") or
                                game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Revive Fruit"))
                    end
                    if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Diamond Fruit") or
                        game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Diamond Fruit") then
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit",
                            "Diamond-Diamond",
                            game:GetService("Players").LocalPlayer.Character:FindFirstChild("Diamond Fruit") or
                                game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Diamond Fruit"))
                    end
                    if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Light Fruit") or
                        game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Light Fruit") then
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit", "Light-Light",
                            game:GetService("Players").LocalPlayer.Character:FindFirstChild("Light Fruit") or
                                game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Light Fruit"))
                    end
                    if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Love Fruit") or
                        game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Love Fruit") then
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit", "Love-Love",
                            game:GetService("Players").LocalPlayer.Character:FindFirstChild("Love Fruit") or
                                game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Love Fruit"))
                    end
                    if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Rubber Fruit") or
                        game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Rubber Fruit") then
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit", "Rubber-Rubber",
                            game:GetService("Players").LocalPlayer.Character:FindFirstChild("Rubber Fruit") or
                                game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Rubber Fruit"))
                    end
                    if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Barrier Fruit") or
                        game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Barrier Fruit") then
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit",
                            "Barrier-Barrier",
                            game:GetService("Players").LocalPlayer.Character:FindFirstChild("Barrier Fruit") or
                                game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Barrier Fruit"))
                    end
                    if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Magma Fruit") or
                        game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Magma Fruit") then
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit", "Magma-Magma",
                            game:GetService("Players").LocalPlayer.Character:FindFirstChild("Magma Fruit") or
                                game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Magma Fruit"))
                    end
                    if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Door Fruit") or
                        game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Door Fruit") then
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit", "Door-Door",
                            game:GetService("Players").LocalPlayer.Character:FindFirstChild("Door Fruit") or
                                game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Door Fruit"))
                    end
                    if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Quake Fruit") or
                        game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Quake Fruit") then
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit", "Quake-Quake",
                            game:GetService("Players").LocalPlayer.Character:FindFirstChild("Quake Fruit") or
                                game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Quake Fruit"))
                    end
                    if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Human-Human: Buddha Fruit") or
                        game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Human-Human: Buddha Fruit") then
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit",
                            "Human-Human: Buddha",
                            game:GetService("Players").LocalPlayer.Character:FindFirstChild("Human-Human: Buddha Fruit") or
                                game:GetService("Players").LocalPlayer.Backpack:FindFirstChild(
                                    "Human-Human: Buddha Fruit"))
                    end
                    if game:GetService("Players").LocalPlayer.Character:FindFirstChild("String Fruit") or
                        game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("String Fruit") then
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit", "String-String",
                            game:GetService("Players").LocalPlayer.Character:FindFirstChild("String Fruit") or
                                game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("String Fruit"))
                    end
                    if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Bird: Phoenix Fruit") or
                        game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Bird: Phoenix Fruit") then
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit",
                            "Bird-Bird: Phoenix",
                            game:GetService("Players").LocalPlayer.Character:FindFirstChild("Bird: Phoenix Fruit") or
                                game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Bird: Phoenix Fruit"))
                    end
                    if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Rumble Fruit") or
                        game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Rumble Fruit") then
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit", "Rumble-Rumble",
                            game:GetService("Players").LocalPlayer.Character:FindFirstChild("Rumble Fruit") or
                                game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Rumble Fruit"))
                    end
                    if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Paw Fruit") or
                        game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Paw Fruit") then
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit", "Paw-Paw",
                            game:GetService("Players").LocalPlayer.Character:FindFirstChild("Paw Fruit") or
                                game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Paw Fruit"))
                    end
                    if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Gravity Fruit") or
                        game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Gravity Fruit") then
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit",
                            "Gravity-Gravity",
                            game:GetService("Players").LocalPlayer.Character:FindFirstChild("Gravity Fruit") or
                                game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Gravity Fruit"))
                    end
                    if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Dough Fruit") or
                        game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Dough Fruit") then
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit", "Dough-Dough",
                            game:GetService("Players").LocalPlayer.Character:FindFirstChild("Dough Fruit") or
                                game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Dough Fruit"))
                    end
                    if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Shadow Fruit") or
                        game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Shadow Fruit") then
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit", "Shadow-Shadow",
                            game:GetService("Players").LocalPlayer.Character:FindFirstChild("Shadow Fruit") or
                                game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Shadow Fruit"))
                    end
                    if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Venom Fruit") or
                        game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Venom Fruit") then
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit", "Venom-Venom",
                            game:GetService("Players").LocalPlayer.Character:FindFirstChild("Venom Fruit") or
                                game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Venom Fruit"))
                    end
                    if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Control Fruit") or
                        game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Control Fruit") then
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit",
                            "Control-Control",
                            game:GetService("Players").LocalPlayer.Character:FindFirstChild("Control Fruit") or
                                game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Control Fruit"))
                    end
                    if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Dragon Fruit") or
                        game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Dragon Fruit") then
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit", "Dragon-Dragon",
                            game:GetService("Players").LocalPlayer.Character:FindFirstChild("Dragon Fruit") or
                                game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Dragon Fruit"))
                    end
                    if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Leopard Fruit") or
                        game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Leopard Fruit") then
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit",
                            "Leopard-Leopard",
                            game:GetService("Players").LocalPlayer.Character:FindFirstChild("Leopard Fruit") or
                                game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Leopard Fruit"))
                    end
                end)
            end
        end
    end)
end)

function DropFruit()
    pcall(function()
        game.Players.LocalPlayer.PlayerGui.Main.FruitInventory.Position = UDim2.new(10.100, 0, 0.100, 0) -- HideUi
        game.Players.LocalPlayer.PlayerGui.Main.FruitInventory.Visible = true -- เปิดไว้ถึงจะเช็คได้
        local invenfruit = game.Players.LocalPlayer.PlayerGui.Main.FruitInventory.Container.Stored.ScrollingFrame.Frame
        wait(.3)
        for i, v in pairs(invenfruit:GetChildren()) do
            if string.find(v.Name, "-") then
                for _, Backpack in pairs(game:GetService("Players").LocalPlayer.Backpack:GetChildren()) do
                    FruitStoreF = string.split(Backpack.Name, " ")[1]
                    FruitStoreR = FruitStoreF .. "-" .. FruitStoreF
                    if v.Name == FruitStoreR then
                        game:GetService("Players").LocalPlayer.Backpack:FindFirstChild(Backpack.Name):Destroy()
                    end
                end
            end
        end
        for i, v in pairs(invenfruit:GetChildren()) do
            if string.find(v.Name, "-") then
                for _, Character in pairs(game:GetService("Players").LocalPlayer.Character:GetChildren()) do
                    FruitStoreF = string.split(Character.Name, " ")[1]
                    FruitStoreR = FruitStoreF .. "-" .. FruitStoreF
                    if v.Name == FruitStoreR then
                        game:GetService("Players").LocalPlayer.Character:FindFirstChild(Character.Name):Destroy()
                    end
                end
            end
        end
    end)
end

-- [DevilFruit Check]
SelectDevilFruits = {"Bomb-Bomb", "Spike-Spike", "Chop-Chop", "Spring-Spring", "Kilo-Kilo", "Spin-Spin", "Kilo-Kilo",
                     "Spin-Spin", "Bird: Falcon", "Smoke-Smoke", "Flame-Flame", "Ice-Ice", "Sand-Sand", "Dark-Dark",
                     "Revive-Revive", "Diamond-Diamond", "Light-Light", "Love-Love", "Rubber-Rubber", "Barrier-Barrier",
                     "Magma-Magma", "Door-Door", "Quake-Quake", "Human-Human: Buddha", "String-String",
                     "Bird-Bird: Phoenix", "Rumble-Rumble", "Paw-Paw", "Gravity-Gravity", "Dough-Dough",
                     "Shadow-Shadow", "Venom-Venom", "Control-Control", "Soul-Soul", "Dragon-Dragon"}

local SnipFruits = Tabs.Visuals:AddDropdown("SelectDevilFruits", {
    Title = "Select Devil Fruits Sniper",
    Values = SelectDevilFruits,
    Multi = false,
    Default = 1
})

SnipFruits:OnChanged(function(Value)
    SelectDevilFruits = Value
    Save()
end)

local BuySnipFruits = Tabs.Visuals:AddToggle("Auto_Buy_DF_Sniper", {
    Title = "Auto Buy Devil Fruits Sniper",
    Default = Auto_Buy_DF_Sniper
})

BuySnipFruits:OnChanged(function(value)
    Auto_Buy_DF_Sniper = value
    Save()
end)

spawn(function()
    while wait(.1) do
        if Auto_Buy_DF_Sniper then
            local args = {
                [1] = "GetFruits"
            }

            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
            local args = {
                [1] = "PurchaseRawFruit",
                [2] = SelectDevilFruits
            }

            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
        end
    end
end)

Tabs.Visuals:AddButton({
    Title = "Devil Fruit Shop",
    Callback = function()
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("GetFruits")
        game.Players.localPlayer.PlayerGui.Main.FruitShop.Visible = true
    end
})

Tabs.Shop:AddParagraph({
    Title = "Legendary Sword"
})

local BuyLegendary = Tabs.Visuals:AddToggle("Auto_Buy_Legendary_Sword", {
    Title = "Auto Buy Legendary Sword",
    Default = Auto_Buy_Legendary_Sword
})
local BuyLegendaryHOP = Tabs.Visuals:AddToggle("Auto_Buy_Legendary_Sword_Hop", {
    Title = "Auto Buy Legendary Sword [HOP]",
    Default = Auto_Buy_Legendary_Sword_Hop
})

BuyLegendary:OnChanged(function(value)
    Auto_Buy_Legendary_Sword = value
    Save()
end)
BuyLegendaryHOP:OnChanged(function(value)
    Auto_Buy_Legendary_Sword_Hop = value
    Save()
end)

Tabs.Shop:AddParagraph({
    Title = "Color Haki"
})

local BuyHakiCr = Tabs.Visuals:AddToggle("Auto_Buy_Enchanment_Haki", {
    Title = "Auto Buy Color Haki",
    Default = Auto_Buy_Enchanment_Haki
})
local BuyHakiCrHOP = Tabs.Visuals:AddToggle("Auto_Buy_Enchanment_Haki_Hop", {
    Title = "Auto Buy Color Haki [HOP]",
    Default = Auto_Buy_Enchanment_Haki_Hop
})

BuyHakiCr:OnChanged(function(value)
    Auto_Buy_Enchanment_Haki = value
    Save()
end)
BuyHakiCrHOP:OnChanged(function(value)
    Auto_Buy_Enchanment_Haki_Hop = value
    Save()
end)

spawn(function()
    while wait() do
        if Auto_Buy_Enchanment_Haki then
            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("ColorsDealer", "1")
            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("ColorsDealer", "2")
            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("ColorsDealer", "3")
            if Auto_Buy_Enchanment_Haki_Hop then
                wait(15)
                ServerFunc:NormalTeleport()
            end
        end
    end
end)

spawn(function()
    while wait() do
        if Auto_Buy_Legendary_Sword then
            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("LegendarySwordDealer", "1")
            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("LegendarySwordDealer", "2")
            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("LegendarySwordDealer", "3")
            if Auto_Buy_Legendary_Sword_Hop then
                wait(15)
                ServerFunc:NormalTeleport()
            end
        end
    end
end)

Tabs.Shop:AddParagraph({
    Title = "Random Surprise"
})

local Random_Bone = Tabs.Visuals:AddToggle("Auto_Random_Bone", {
    Title = "Auto Random Surprise",
    Default = Auto_Random_Bone
})

Random_Bone:OnChanged(function(value)
    Auto_Random_Bone = value
    Save()
    fask.spawn(LPH_NO_VIRTUALIZE(function()
        while fask.wait() do
            if Auto_Random_Bone then
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Bones", "Buy", 1, 1)
            end
        end
    end))
end)

Tabs.Shop:AddParagraph({
    Title = "Abilities"
})

Tabs.Shop:AddButton({
    Title = "Haki",
    Callback = function()
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyHaki", "Buso")
    end
})

Tabs.Shop:AddButton({
    Title = "Geppo",
    Callback = function()
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyHaki", "Geppo")
    end
})
Tabs.Shop:AddButton({
    Title = "Soru",
    Callback = function()
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyHaki", "Soru")
    end
})
Tabs.Shop:AddButton({
    Title = "Ken Haki",
    Callback = function()
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("KenTalk", "Buy")
    end
})

Tabs.Shop:AddParagraph({
    Title = "Fragment"
})

Tabs.Shop:AddButton({
    Title = "Reset Stats Point",
    Callback = function()
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BlackbeardReward", "Refund", "1")
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BlackbeardReward", "Refund", "2")
    end
})
Tabs.Shop:AddButton({
    Title = "Reroll Race",
    Callback = function()
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BlackbeardReward", "Reroll", "1")
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BlackbeardReward", "Reroll", "2")
    end
})

Tabs.Shop:AddParagraph({
    Title = "Fighting Style"
})

Tabs.Shop:AddButton({
    Title = "Black Leg",
    Callback = function()
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyBlackLeg")
    end
})

Tabs.Shop:AddButton({
    Title = "Electro",
    Callback = function()
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyElectro")
    end
})

Tabs.Shop:AddButton({
    Title = "Fishman Karate",
    Callback = function()
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyFishmanKarate")
    end
})

Tabs.Shop:AddButton({
    Title = "Dragon Claw",
    Callback = function()
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BlackbeardReward", "DragonClaw", "1")
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BlackbeardReward", "DragonClaw", "2")
    end
})

Tabs.Shop:AddButton({
    Title = "Superhuman",
    Callback = function()
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuySuperhuman")
    end
})

--
Tabs.Shop:AddParagraph({
    Title = "Fighting Style V2"
})

Tabs.Shop:AddButton({
    Title = "Death Step",
    Callback = function()
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyDeathStep")
    end
})

Tabs.Shop:AddButton({
    Title = "Sharkman Karate",
    Callback = function()
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuySharkmanKarate", true)
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuySharkmanKarate")
    end
})

Tabs.Shop:AddButton({
    Title = "Electric Claw",
    Callback = function()
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyElectricClaw", true)
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyElectricClaw")
    end
})

Tabs.Shop:AddButton({
    Title = "Dragon Talon",
    Callback = function()
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyDragonTalon", true)
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyDragonTalon")
    end
})

Tabs.Shop:AddButton({
    Title = "Godhuman",
    Callback = function()
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyGodhuman", true)
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyGodhuman")
    end
})

Tabs.Shop:AddButton({
    Title = "Sanguine Art",
    Callback = function()
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuySanguineart", true)
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuySanguineart")
    end
})

-- --

Tabs.Shop:AddParagraph({
    Title = "Sword"
})

Tabs.Shop:AddButton({
    Title = "Katana",
    Callback = function()
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyItem", "Katana")
    end
})

Tabs.Shop:AddButton({
    Title = "Cutlass",
    Callback = function()
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyItem", "Cutlass")
    end
})

Tabs.Shop:AddButton({
    Title = "Duel Katana",
    Callback = function()
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyItem", "Duel Katana")
    end
})

Tabs.Shop:AddButton({
    Title = "Iron Mace",
    Callback = function()
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyItem", "Iron Mace")
    end
})

Tabs.Shop:AddButton({
    Title = "Pipe",
    Callback = function()
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyItem", "Pipe")
    end
})

Tabs.Shop:AddButton({
    Title = "Triple Katana",
    Callback = function()
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyItem", "Triple Katana")
    end
})

Tabs.Shop:AddButton({
    Title = "Dual-Headed Blade",
    Callback = function()
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyItem", "Dual-Headed Blade")
    end
})

Tabs.Shop:AddButton({
    Title = "Bisento",
    Callback = function()
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyItem", "Bisento")
    end
})

Tabs.Shop:AddButton({
    Title = "Soul Cane",
    Callback = function()
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyItem", "Soul Cane")
    end
})

Tabs.Shop:AddParagraph({
    Title = "Gun"
})

Tabs.Shop:AddButton({
    Title = "Slingshot",
    Callback = function()
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyItem", "Slingshot")
    end
})

Tabs.Shop:AddButton({
    Title = "Musket",
    Callback = function()
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyItem", "Musket")
    end
})

Tabs.Shop:AddButton({
    Title = "Flintlock",
    Callback = function()
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyItem", "Flintlock")
    end
})

Tabs.Shop:AddButton({
    Title = "Refined Flintlock",
    Callback = function()
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyItem", "Refined Flintlock")
    end
})

Tabs.Shop:AddButton({
    Title = "Cannon",
    Callback = function()
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyItem", "Cannon")
    end
})

Tabs.Shop:AddButton({
    Title = "Kabucha",
    Callback = function()
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BlackbeardReward", "Slingshot", "1")
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BlackbeardReward", "Slingshot", "2")
    end
})

Tabs.Shop:AddParagraph({
    Title = "Accessory"
})

Tabs.Shop:AddButton({
    Title = "Black Cape",
    Callback = function()
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyItem", "Black Cape")
    end
})

Tabs.Shop:AddButton({
    Title = "Tomoe Ring",
    Callback = function()
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyItem", "Tomoe Ring")
    end
})

Tabs.Shop:AddButton({
    Title = "Swordsman Hat",
    Callback = function()
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyItem", "Swordsman Hat")
    end
})

Tabs.Misc:AddParagraph({
    Title = "Accessory"
})

Tabs.Misc:AddButton({
    Title = "Remove All Fog",
    Callback = function()
        game:GetService("Lighting"):ClearAllChildren()
    end
})
local WebHookLog = {}

local AllRequest = http_request or request or HttpPost or syn.request

function WebHookLog:WebHookKaiTanSend(WebHookUrl)
    function GetFightingStyle(Style)
        ReturnText = ""
        for i, v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
            if v:IsA("Tool") then
                if v.ToolTip == Style then
                    ReturnText = v.Name
                end
            end
        end
        for i, v in pairs(game.Players.LocalPlayer.Character:GetChildren()) do
            if v:IsA("Tool") then
                if v.ToolTip == Style then
                    ReturnText = v.Name
                end
            end
        end
        if ReturnText ~= "" then
            return ReturnText
        else
            return "Not Have"
        end
    end

    function GetAwaken()
        ReturnText = ""
        Awakened_Z = ":x:"
        Awakened_X = ":x:"
        Awakened_C = ":x:"
        Awakened_V = ":x:"
        Awakened_F = ":x:"
        for i, v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
            if v:IsA("Tool") then
                if v.ToolTip == "Blox Fruit" then
                    if v:FindFirstChild("AwakenedMoves") then
                        if v.AwakenedMoves:FindFirstChild("Z") then
                            Awakened_Z = ":white_check_mark:"
                        end
                        if v.AwakenedMoves:FindFirstChild("X") then
                            Awakened_X = ":white_check_mark:"
                        end
                        if v.AwakenedMoves:FindFirstChild("C") then
                            Awakened_C = ":white_check_mark:"
                        end
                        if v.AwakenedMoves:FindFirstChild("V") then
                            Awakened_V = ":white_check_mark:"
                        end
                        if v.AwakenedMoves:FindFirstChild("F") then
                            Awakened_F = ":white_check_mark:"
                        end
                        ReturnText = ":regional_indicator_z:" .. Awakened_Z .. "\n" .. ":regional_indicator_x:" ..
                                         Awakened_X .. "\n" .. ":regional_indicator_c:" .. Awakened_C .. "\n" ..
                                         ":regional_indicator_v:" .. Awakened_V .. "\n" .. ":regional_indicator_f:" ..
                                         Awakened_F
                    else
                        ReturnText = "This Fruit Can't Awakened"
                    end
                end
            end
        end
        for i, v in pairs(game.Players.LocalPlayer.Character:GetChildren()) do
            if v:IsA("Tool") then
                if v.ToolTip == "Blox Fruit" then
                    if v:FindFirstChild("AwakenedMoves") then
                        if v.AwakenedMoves:FindFirstChild("Z") then
                            Awakened_Z = ":white_check_mark:"
                        end
                        if v.AwakenedMoves:FindFirstChild("X") then
                            Awakened_X = ":white_check_mark:"
                        end
                        if v.AwakenedMoves:FindFirstChild("C") then
                            Awakened_C = ":white_check_mark:"
                        end
                        if v.AwakenedMoves:FindFirstChild("V") then
                            Awakened_V = ":white_check_mark:"
                        end
                        if v.AwakenedMoves:FindFirstChild("F") then
                            Awakened_F = ":white_check_mark:"
                        end
                        ReturnText = ":regional_indicator_z:" .. Awakened_Z .. "\n" .. ":regional_indicator_x:" ..
                                         Awakened_X .. "\n" .. ":regional_indicator_c:" .. Awakened_C .. "\n" ..
                                         ":regional_indicator_v:" .. Awakened_V .. "\n" .. ":regional_indicator_f:" ..
                                         Awakened_F
                    else
                        ReturnText = "This Fruit Can't Awakened"
                    end
                end
            end
        end
        if ReturnText ~= "" then
            return ReturnText
        else
            return "Not Have"
        end
    end

    function GetWeapon(Rare)
        if Rare == "Common" then
            RareNumber = 0
        elseif Rare == "Uncommon" then
            RareNumber = 1
        elseif Rare == "Rare" then
            RareNumber = 2
        elseif Rare == "Legendary" then
            RareNumber = 3
        elseif Rare == "Mythical" then
            RareNumber = 4
        else
            return "Worng InPut"
        end
        local ReturnText = ""
        for i, v in pairs(game:GetService("ReplicatedStorage").Remotes["CommF_"]:InvokeServer("getInventoryWeapons")) do
            if type(v) == "table" then
                if v.Rarity then
                    if tonumber(v.Rarity) == RareNumber then
                        ReturnText = ReturnText .. v.Name .. "\n"
                    end
                end
            end
        end
        if ReturnText ~= "" then
            return ReturnText
        else
            return "Not Have"
        end
    end

    function GetFruitInU()
        local ReturnText = ""
        for i, v in pairs(game:GetService("ReplicatedStorage").Remotes["CommF_"]:InvokeServer("getInventoryFruits")) do
            if type(v) == "table" then
                if v ~= nil then
                    ReturnText = ReturnText .. v.Name .. " : " .. v.Price .. "\n"
                end
            end
        end

        if ReturnText ~= "" then
            return ReturnText
        else
            return "Not Have"
        end
    end

    function GetAllMelee()
        BuyDragonTalon = tonumber(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyDragonTalon",
            true))
        if BuyDragonTalon then
            if BuyDragonTalon == 1 then
                TalComplete = true
            end
        end
        BuySuperhuman =
            tonumber(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuySuperhuman", true))
        if BuySuperhuman then
            if BuySuperhuman == 1 then
                SupComplete = true
            end
        end
        BuySharkmanKarate = tonumber(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(
            "BuySharkmanKarate", true))
        if BuySharkmanKarate then
            if BuySharkmanKarate == 1 then
                SharkComplete = true
            end
        end
        BuyDeathStep = tonumber(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyDeathStep", true))
        if BuyDeathStep then
            if BuyDeathStep == 1 then
                DeathComplete = true
            end
        end
        BuyElectricClaw = tonumber(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyElectricClaw",
            true))
        if BuyElectricClaw then
            if BuyElectricClaw == 1 then
                EClawComplete = true
            end
        end
        BuyGod = tonumber(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyGodhuman", true))
        if BuyGod then
            if BuyGod == 1 then
                GodComplete = true
            end
        end
        ReturnText = {}
        if SupComplete == true then
            table.insert(ReturnText, "SuperHuman")
        end
        if EClawComplete == true then
            table.insert(ReturnText, "Electric Claw")
        end
        if TalComplete == true then
            table.insert(ReturnText, "Dragon Talon")
        end
        if SharkComplete == true then
            table.insert(ReturnText, "Sharkman Karate")
        end
        if DeathComplete == true then
            table.insert(ReturnText, "Death Step")
        end
        if GodComplete == true then
            table.insert(ReturnText, "God Human")
        end

        if #ReturnText ~= 0 then
            return table.concat(ReturnText, ",")
        else
            return "Not Have"
        end
    end

    local Embeds = {{
        ["title"] = "**Luxury Webhooks Notify**",
        ["color"] = tonumber(0xD936FF),
        ["fields"] = {{
            ["name"] = "User Name",
            ["value"] = "||" .. tostring(game.Players.LocalPlayer.Name) .. "||",
            ["inline"] = true
        }, {
            ["name"] = "Level",
            ["value"] = tostring(game:GetService("Players").LocalPlayer.Data:FindFirstChild("Level").Value),
            ["inline"] = true
        }, {
            ["name"] = "Fragments",
            ["value"] = tostring(game:GetService("Players").LocalPlayer.Data:FindFirstChild("Fragments").Value),
            ["inline"] = true
        }, {
            ["name"] = "Bounty/Honor",
            ["value"] = tostring(game:GetService("Players").LocalPlayer.leaderstats["Bounty/Honor"].Value),
            ["inline"] = true
        }, {
            ["name"] = "Beli",
            ["value"] = tostring(game:GetService("Players").LocalPlayer.Data:FindFirstChild("Beli").Value),
            ["inline"] = true
        }, {
            ["name"] = "Fighting Style",
            ["value"] = GetFightingStyle("Melee"),
            ["inline"] = true
        }, {
            ["name"] = "Sword",
            ["value"] = GetFightingStyle("Sword"),
            ["inline"] = true
        }, {
            ["name"] = "Devil Fruit",
            ["value"] = GetFightingStyle("Blox Fruit"),
            ["inline"] = true
        }, {
            ["name"] = "Gun",
            ["value"] = GetFightingStyle("Gun"),
            ["inline"] = true
        }, {
            ["name"] = "Accessory",
            ["value"] = GetFightingStyle("Wear"),
            ["inline"] = true
        }, {
            ["name"] = "Race",
            ["value"] = tostring(game:GetService("Players").LocalPlayer.Data:FindFirstChild("Race").Value),
            ["inline"] = true
        }, {
            ["name"] = "Awakened",
            ["value"] = tostring(GetAwaken()),
            ["inline"] = true
        }, {
            ["name"] = "Status",
            ["value"] = "```sml\n" ..
                tostring(
                    "Melee : " .. game:GetService("Players").LocalPlayer.Data.Stats.Melee:WaitForChild("Level").Value ..
                        "\nDefense : " ..
                        game:GetService("Players").LocalPlayer.Data.Stats.Defense:WaitForChild("Level").Value ..
                        "\nSword : " ..
                        game:GetService("Players").LocalPlayer.Data.Stats.Sword:WaitForChild("Level").Value ..
                        "\nGun : " .. game:GetService("Players").LocalPlayer.Data.Stats.Gun:WaitForChild("Level").Value ..
                        "\nDevil Fruit : " ..
                        game:GetService("Players").LocalPlayer.Data.Stats["Demon Fruit"]:WaitForChild("Level").Value) ..
                "```",
            ["inline"] = true
        }, {
            ["name"] = "Common :brown_circle:",
            ["value"] = "```sml\n" .. tostring(GetWeapon("Common")) .. "```",
            ["inline"] = true
        }, {
            ["name"] = "Uncommon :green_circle:",
            ["value"] = "```sml\n" .. tostring(GetWeapon("Uncommon")) .. "```",
            ["inline"] = true
        }, {
            ["name"] = "Rare :blue_circle:",
            ["value"] = "```sml\n" .. tostring(GetWeapon("Rare")) .. "```",
            ["inline"] = true
        }, {
            ["name"] = "Legendary :purple_circle:",
            ["value"] = "```sml\n" .. tostring(GetWeapon("Legendary")) .. "```",
            ["inline"] = true
        }, {
            ["name"] = "Mythical :red_circle:",
            ["value"] = "```sml\n" .. tostring(GetWeapon("Mythical")) .. "```",
            ["inline"] = true
        }, {
            ["name"] = "Devil Fruits Inventory",
            ["value"] = "```sml\n" .. tostring(GetFruitInU()) .. "```",
            ["inline"] = true
        }, {
            ["name"] = "All Fighting Style",
            ["value"] = "```sml\n" .. tostring(GetAllMelee()) .. "```",
            ["inline"] = true
        }, {
            ["name"] = "ㅤ",
            ["value"] = tostring(
                "ㅤㅤㅤㅤㅤㅤㅤㅤㅤㅤㅤㅤㅤㅤㅤㅤㅤㅤㅤㅤㅤㅤㅤㅤㅤㅤㅤㅤㅤㅤㅤㅤㅤㅤㅤ"),
            ["inline"] = false
        }},
        ["footer"] = {
            ["text"] = "Made by luxz#8403" .. "\nTime" .. " : " .. os.date("%c") .. " (" .. os.date("%X") .. ")",
            ["icon_url"] = "https://cdn.discordapp.com/attachments/1014897847059099739/1038449526865932298/Logo-Luxury1.png"
        }
    }}

    local Message
    if _G.SendWebHookPing then
        Message = {
            ['username'] = "LuxuryHub Webhook",
            ["avatar_url"] = "https://cdn.discordapp.com/attachments/1014897847059099739/1038449526865932298/Logo-Luxury1.png",
            ["content"] = "@everyone",
            ["embeds"] = Embeds
        }
    else
        Message = {
            ['username'] = "LuxuryHub Webhook",
            ["avatar_url"] = "https://cdn.discordapp.com/attachments/1014897847059099739/1038449526865932298/Logo-Luxury1.png",
            ["embeds"] = Embeds
        }
    end

    local DataCallback = AllRequest({
        Url = WebHookUrl,
        Method = 'POST',
        Headers = {
            ["Content-Type"] = "application/json"
        },
        Body = game:GetService("HttpService"):JSONEncode(Message)
    })
    return DataCallBack
end

Tabs.Misc:AddParagraph({
    Title = "Notification Info",
    Content = "Webhook Notify Kaitun."
})

Tabs.Misc:AddInput("Webhooklink", {
    Title = "Webhook Link",
    Default = "",
    Numeric = false,
    Finished = false,
    Placeholder = "Enter Webhook here..",
    Callback = function(value)
        Webhooklink = value
    end
})

Tabs.Misc:AddButton({
    Title = "Send Webhook",
    Callback = function()
        WebHookLog:WebHookKaiTanSend(Webhooklink)
    end
})

Tabs.Misc:AddParagraph({
    Title = "Join Team"
})

Tabs.Misc:AddButton({
    Title = "Join Pirates",
    Callback = function()
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("SetTeam", "Pirates")
    end
})

Tabs.Misc:AddButton({
    Title = "Join Marines",
    Callback = function()
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("SetTeam", "Marines")
    end
})

Tabs.Misc:AddParagraph({
    Title = "Server"
})

Tabs.Misc:AddButton({
    Title = "Server Hop",
    Callback = function()
        ServerFunc:NormalTeleport()
    end
})

Tabs.Misc:AddButton({
    Title = "Server Rejoin",
    Callback = function()
        wait(.1)
        local ts = game:GetService("TeleportService")
        local p = game.Players.LocalPlayer
        ts:Teleport(game.PlaceId, p)
    end
})

local RejoinKick = Tabs.Misc:AddToggle("Rejoin_When_Kick", {
    Title = "Auto Rejoin When Kick",
    Default = Rejoin_When_Kick
})

RejoinKick:OnChanged(function(value)
    Rejoin_When_Kick = value
end)

LPH_NO_VIRTUALIZE(function()
    fask.spawn(function()
        while wait() do
            if Rejoin_When_Kick then
                game:GetService("CoreGui").RobloxPromptGui.promptOverlay.ChildAdded:Connect(function(child)
                    if child.Name == 'ErrorPrompt' and child:FindFirstChild('MessageArea') and
                        child.MessageArea:FindFirstChild("ErrorFrame") then
                        game:GetService("TeleportService"):Teleport(game.PlaceId)
                    end
                end)
            end
        end
    end)
end)()
Tabs.Misc:AddParagraph({
    Title = "Server JobId",
    Content = "Can join more server or join server friends"
})

Tabs.Misc:AddInput("Set_JobId", {
    Title = "Server Job",
    Default = "",
    Numeric = false,
    Finished = false,
    Placeholder = "Enter Job Id here..",
    Callback = function(value)
        Set_JobId = value
    end
})

Tabs.Misc:AddButton({
    Title = "Join Server",
    Callback = function()
        wait(.1)
        game:GetService("TeleportService"):TeleportToPlaceInstance(game.PlaceId, Set_JobId, game.Players.LocalPlayer)
    end
})

Tabs.Misc:AddButton({
    Title = "Copy Your Job Id",
    Callback = function()
        setclipboard(tostring(game.JobId))
    end
})

Tabs.Misc:AddParagraph({
    Title = "Settings All Module Scripts",
    Content = "Can Settings more In Misc tab"
})

local DistanceFarm = Tabs.Misc:AddSlider("Distance_Auto_Farm", {
    Title = "Distance Auto Farm",
    Description = "Can Select Distance",
    Default = 35,
    Min = 0,
    Max = 60,
    Rounding = 1,
    Callback = function(Value)
        Distance_Auto_Farm = Value
        Save()
    end
})

DistanceFarm:OnChanged(function(Value)
    Distance_Auto_Farm = Value
    Save()
end)

local BypassTP = Tabs.Misc:AddToggle("Bypass_Teleport", {
    Title = "Bypass Teleport",
    Default = Bypass_Teleport
})

BypassTP:OnChanged(function(value)
    Bypass_Teleport = value
    Save()
end)

local EnabledHaki = Tabs.Misc:AddToggle("Auto_Haki", {
    Title = "Auto Haki",
    Default = true
})

EnabledHaki:OnChanged(function(value)
    Auto_Haki = value
    fask.spawn(LPH_NO_VIRTUALIZE(function()
        while wait() do
            pcall(function()
                if Auto_Haki then
                    if not game.Players.LocalPlayer.Character:FindFirstChild("HasBuso") then
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Buso")
                    end
                end
            end)
        end
    end))
end)

local EnabledHakiKen = Tabs.Misc:AddToggle("Auto_Ken", {
    Title = "Auto Ken",
    Default = Auto_Ken
})

EnabledHakiKen:OnChanged(function(value)
    Auto_Ken = value
    Save()
    fask.spawn(function()
        while fask.wait(2) do
            pcall(function()
                if Auto_Ken then
                    game:GetService("ReplicatedStorage").Remotes.CommE:FireServer("Ken", true)
                    wait(7)
                end
            end)
        end
    end)
end)

local EnabledWalkWater = Tabs.Misc:AddToggle("WalkOnWater", {
    Title = "Walk On Water",
    Default = WalkOnWater
})

EnabledWalkWater:OnChanged(function(value)
    WalkOnWater = value
    Save()
    fask.spawn(LPH_JIT_MAX(function()
        while fask.wait() do
            pcall(function()
                if WalkOnWater then
                    if game.Players.LocalPlayer.Character.LeftFoot.CFrame.Y <= -6 then
                        toTarget(game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame * CFrame.new(0, 10, 0))
                    elseif game.Players.LocalPlayer.Character.LeftFoot.CFrame.Y <= -3 then
                        if not game:GetService("Workspace"):FindFirstChild("LOL") then
                            local Paertaiteen = Instance.new("Part")
                            Paertaiteen.Name = "LOL"
                            Paertaiteen.Parent = game.Workspace
                            Paertaiteen.Anchored = true
                            Paertaiteen.Transparency = 1
                            Paertaiteen.Size = Vector3.new(20, 0.5, 20)
                            Paertaiteen.Material = "Neon"
                        elseif game:GetService("Workspace"):FindFirstChild("LOL") then
                            game.Workspace["LOL"].CFrame = CFrame.new(
                                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.X,
                                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.Y - 3.92,
                                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.Z)
                        end
                    end
                end
            end)
        end
    end))
end)

Tabs.Misc:AddParagraph({
    Title = "FrameRate",
    Content = "Can Settings FrameRate Set fps"
})

local EnabledWhiteScreen = Tabs.Misc:AddToggle("White_Screen", {
    Title = "Walk On Water",
    Default = White_Screen
})

EnabledWhiteScreen:OnChanged(function(value)
    White_Screen = value
    Save()
    if White_Screen then
        White_Screen = true
        game:GetService("RunService"):Set3dRenderingEnabled(false)
    else
        White_Screen = false
        game:GetService("RunService"):Set3dRenderingEnabled(true)
    end
end)

Tabs.Misc:AddButton({
    Title = "FPS Boost",
    Callback = function(value)
        local decalsyeeted = true
        local g = game
        local w = g.Workspace
        local l = g.Lighting
        local t = w.Terrain
        t.WaterWaveSize = 0
        t.WaterWaveSpeed = 0
        t.WaterReflectance = 0
        t.WaterTransparency = 0
        l.GlobalShadows = false
        l.FogEnd = 9e9
        l.Brightness = 0
        settings().Rendering.QualityLevel = "Level01"
        for i, v in pairs(g:GetDescendants()) do
            if v:IsA("Part") or v:IsA("Union") or v:IsA("CornerWedgePart") or v:IsA("TrussPart") then
                v.Material = "Plastic"
                v.Reflectance = 0
            elseif v:IsA("Decal") or v:IsA("Texture") and decalsyeeted then
                v.Transparency = 1
            elseif v:IsA("ParticleEmitter") or v:IsA("Trail") then
                v.Lifetime = NumberRange.new(0)
            elseif v:IsA("Explosion") then
                v.BlastPressure = 1
                v.BlastRadius = 1
            elseif v:IsA("Fire") or v:IsA("SpotLight") or v:IsA("Smoke") or v:IsA("Sparkles") then
                v.Enabled = false
            elseif v:IsA("MeshPart") then
                -- v.Transparency = 1
                v.Material = "Plastic"
                v.Reflectance = 0
                v.TextureID = 10385902758728957
            end
        end
        for i, e in pairs(l:GetChildren()) do
            if e:IsA("BlurEffect") or e:IsA("SunRaysEffect") or e:IsA("ColorCorrectionEffect") or e:IsA("BloomEffect") or
                e:IsA("DepthOfFieldEffect") then
                if e.Name ~= "Blurrr" then
                    e.Enabled = false
                end
            end
        end
    end
})

Tabs.Misc:AddParagraph({
    Title = "Boat",
    Conten = "Can Setting more function and Boat Settings"
})

local EnabledAutoW = Tabs.Misc:AddToggle("AutoW", {
    Title = "Auto W",
    Default = false
})

EnabledAutoW:OnChanged(function(starts)
    AutoW = starts
    spawn(function()
        while fask.wait() do
            if AutoW then
                game:service('VirtualInputManager'):SendKeyEvent(true, "W", false, game)
                fask.wait(0.3)
            else
                game:service('VirtualInputManager'):SendKeyEvent(false, "W", false, game)
                break
            end
        end
    end)
end)

local DistanceFarm = Tabs.Misc:AddSlider("Distance_Auto_Farm", {
    Title = "Distance Auto Farm",
    Description = "Can Select Distance",
    Default = 300,
    Min = 150,
    Max = 400,
    Rounding = 1,
    Callback = function(Value)
        BoatSpeed = Value
    end
})

DistanceFarm:OnChanged(function(Value)
    BoatSpeed = Value
end)

Tabs.Misc:AddButton({
    Title = "Set Boat Speed",
    Callback = function()
        for i, v in pairs(game:GetService("Workspace").Boats:GetChildren()) do
            pcall(function()
                if v:FindFirstChildOfClass("VehicleSeat") then
                    v:FindFirstChildOfClass("VehicleSeat").MaxSpeed = BoatSpeed
                end
            end)
        end
    end
})

local EnabledFlyB = Tabs.Misc:AddToggle("FlyBoat", {
    Title = "Fly Boat",
    Default = false
})

EnabledFlyB:OnChanged(function(starts)
    if starts then
        mobilefly(speaker, true)
    else
        unmobilefly(speaker)
    end
end)

local vnoclipParts = {}

local EnabledClipBoat = Tabs.Misc:AddToggle("ClipBoat", {
    Title = "No Clip Boat",
    Default = false
})

EnabledClipBoat:OnChanged(function(starts)
    if starts then
        local seat = speaker.Character:FindFirstChildOfClass('Humanoid').SeatPart
        local vehicleModel = seat.Parent
        repeat
            if vehicleModel.ClassName ~= "Model" then
                vehicleModel = vehicleModel.Parent
            end
        until vehicleModel.ClassName == "Model"
        wait(0.1)
        for i, v in pairs(vehicleModel:GetDescendants()) do
            if v:IsA("BasePart") and v.CanCollide then
                table.insert(vnoclipParts, v)
                v.CanCollide = false
            end
        end
    else
        for i, v in ipairs(vnoclipParts) do
            v.CanCollide = true
        end
    end
end)
