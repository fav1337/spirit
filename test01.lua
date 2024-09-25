local CombatFramework = require(game:GetService("Players").LocalPlayer.PlayerScripts:waitForChild("CombatFramework"))
local UpvaluesCombat = getupvalues(CombatFramework)[2]
local RigController = require(game:GetService("Players").LocalPlayer.PlayerScripts.CombatFramework.RigController)
local UpvaluesRigController = getupvalues(RigController)[2]
local RigLib = require(game.ReplicatedStorage.CombatFramework.RigLib)
local StartTime = tick()

local AttackData = {}

function Initialize()
	repeat wait() until game:IsLoaded()
	repeat task.wait() until game.ReplicatedStorage
	repeat task.wait() until game.Players
	repeat task.wait() until game.Players.LocalPlayer
	repeat task.wait() until game.Players.LocalPlayer:FindFirstChild("PlayerGui")
	local CombatFramework = require(game:GetService("Players").LocalPlayer.PlayerScripts:waitForChild("CombatFramework"))
	local UpvaluesCombat = getupvalues(CombatFramework)[2]
	local RigController = require(game:GetService("Players").LocalPlayer.PlayerScripts.CombatFramework.RigController)
	local UpvaluesRigController = getupvalues(RigController)[2]
	local RigLib = require(game.ReplicatedStorage.CombatFramework.RigLib)
	local StartTime = tick()

	AttackData = {}
	function GetCurrentBlade()
		local ActiveController = UpvaluesCombat.activeController
		local Blade = ActiveController.blades[1]
		if not Blade then
			return game.Players.LocalPlayer.Character:FindFirstChildOfClass("Tool").Name
		end
		pcall(function()
			while Blade.Parent ~= game.Players.LocalPlayer.Character do
				Blade = Blade.Parent
			end
		end)
		if not Blade then
			return game.Players.LocalPlayer.Character:FindFirstChildOfClass("Tool").Name
		end
		return Blade
	end

	function ExecuteAttack()
		if game.Players.LocalPlayer.Character.Stun.Value ~= 0 then
			return nil
		end
		local ActiveController = UpvaluesCombat.activeController
		ActiveController.hitboxMagnitude = 55
		if ActiveController and ActiveController.equipped then
			for _ = 1, 1 do
				local HitTargets = require(game.ReplicatedStorage.CombatFramework.RigLib).getBladeHits(game.Players.LocalPlayer.Character, {
					game.Players.LocalPlayer.Character.HumanoidRootPart
				}, 60)
				if #HitTargets > 0 then
					local Upvalue1 = debug.getupvalue(ActiveController.attack, 5)
					local Upvalue2 = debug.getupvalue(ActiveController.attack, 6)
					local Upvalue3 = debug.getupvalue(ActiveController.attack, 4)
					local Upvalue4 = debug.getupvalue(ActiveController.attack, 7)
					local ComputedValue = (Upvalue1 * 798405 + Upvalue3 * 727595) % Upvalue2
					local TempValue = Upvalue3 * 798405
					(function()
						ComputedValue = (ComputedValue * Upvalue2 + TempValue) % 1099511627776
						Upvalue1 = math.floor(ComputedValue / Upvalue2)
						Upvalue3 = ComputedValue - Upvalue1 * Upvalue2
					end)()
					Upvalue4 = Upvalue4 + 1
					debug.setupvalue(ActiveController.attack, 5, Upvalue1)
					debug.setupvalue(ActiveController.attack, 6, Upvalue2)
					debug.setupvalue(ActiveController.attack, 4, Upvalue3)
					debug.setupvalue(ActiveController.attack, 7, Upvalue4)
					for _, Animation in pairs(ActiveController.animator.anims.basic) do
						Animation:Play(0.01, 0.01, 0.01)
					end
					if game.Players.LocalPlayer.Character:FindFirstChildOfClass("Tool") and ActiveController.blades and ActiveController.blades[1] then
						game:GetService("ReplicatedStorage").RigControllerEvent:FireServer("weaponChange", tostring(GetCurrentBlade()))
						game:GetService("ReplicatedStorage").RigControllerEvent:FireServer("hit", HitTargets, 2, "")
					end
				end
			end
		end
	end

	local HitCount = 0
	local LastHitTime = tick()
	spawn(function()
		local Metatable = getrawmetatable(game)
		local OriginalNamecall = Metatable.__namecall
		setreadonly(Metatable, false)
		Metatable.__namecall = newcclosure(function(Self, ...)
			local MethodName = getnamecallmethod()
			local Args = {...}
			if MethodName == 'FireServer' and Self.Name == "RigControllerEvent" and Args[1] == "hit" then
				HitCount = HitCount + 1
				LastHitTime = tick()
			end
			return OriginalNamecall(Self, unpack(Args))
		end)
	end)

	function AttackData:GetHitCount()
		return HitCount
	end

	function AttackData:Attack(attackFlag)
		AttackFlag = attackFlag
	end

	local Config = {
		["CDAAT"] = 80,
		["TimeWait"] = 10
	}

	spawn(function()
		local CameraShaker = require(game.ReplicatedStorage.Util.CameraShaker)
		CameraShaker:Stop()
	end)

	function AttackData:InputValue(cdaat, timeWait)
		Config["CDAAT"] = cdaat
		Config["TimeWait"] = timeWait
	end

	function AttackData:InputSetting(setting)
		CurrentSetting = setting
	end

	function SafeExecute()
		pcall(function()
			ExecuteAttack()
		end)
	end

	local AttackState = 0
	local CurrentSetting = {}
	function AttackData:GetMethod()
		local Method = "Slow"
		if HitCount < Config["CDAAT"] then
			Method = "Fast"
		end
		return Method
	end

	spawn(function()
		while task.wait() do
			if AttackFlag then
				pcall(function()
					if CurrentSetting and type(CurrentSetting) == "table" then
						if CurrentSetting["Mastery Farm"] then
							AttackState = 2
							SafeExecute()
							if CurrentSetting["DelayAttack"] and type(CurrentSetting["DelayAttack"]) == "number" and CurrentSetting["DelayAttack"] >= 0.1 then
								wait(CurrentSetting["DelayAttack"])
							else
								CurrentSetting["DelayAttack"] = 0.2
								wait(CurrentSetting["DelayAttack"])
							end
						elseif HitCount < Config["CDAAT"] then
							AttackState = AttackState + 1
							SafeExecute()
						elseif HitCount >= Config["CDAAT"] then
							AttackState = AttackState + 1
							SafeExecute()
							if CurrentSetting["DelayAttack"] and type(CurrentSetting["DelayAttack"]) == "number" and CurrentSetting["DelayAttack"] >= 0.1 then
								wait(CurrentSetting["DelayAttack"] * 2)
							else
								CurrentSetting["DelayAttack"] = 0.2
								wait(CurrentSetting["DelayAttack"] * 2)
							end
						end
					end
				end)
			end
		end
	end)

	spawn(function()
		while task.wait() do
			pcall(function()
				if tick() - LastHitTime >= Config["TimeWait"] then
					HitCount = 0
				end
			end)
		end
	end)

	spawn(function()
		while task.wait() do
			if AttackFlag then
				pcall(function()
					local Upvalues = getupvalues(require(game:GetService("Players").LocalPlayer.PlayerScripts.CombatFramework))[2]
					Upvalues.activeController.hitboxMagnitude = 55
					Upvalues.activeController.timeToNextAttack = 0
					Upvalues.activeController.attacking = false
					Upvalues.activeController.increment = 3
					Upvalues.activeController.blocking = false
					Upvalues.activeController.timeToNextBlock = 0
					Upvalues.activeController:attack()
					task.wait(0.2)
				end)
			end
		end
	end)

	spawn(function()
		while task.wait() do
			if AttackFlag then
				pcall(function()
					local Upvalues = getupvalues(require(game:GetService("Players").LocalPlayer.PlayerScripts.CombatFramework))[2]
					Upvalues.activeController.hitboxMagnitude = 55
					Upvalues.activeController.timeToNextAttack = 0
					Upvalues.activeController.attacking = false
					Upvalues.activeController.increment = 3
					Upvalues.activeController.blocking = false
					Upvalues.activeController.timeToNextBlock = 0
					local RandomValue = math.random(1, 5)
					if RandomValue > 1 then
						game:GetService("VirtualUser"):CaptureController()
						game:GetService("VirtualUser"):Button1Down(Vector2.new(50, 50))
					end
					task.wait(0.2)
				end)
			end
		end
	end)

	spawn(function()
		while wait() do
			if AttackFlag then
				pcall(function()
					if HitCount >= Config["CDAAT"] then
						local AttackStartTime = tick()
						repeat wait() until tick() - AttackStartTime >= Config["TimeWait"]
						HitCount = 0
					end
				end)
			end
		end
	end)

	return AttackData
end

Print"nigga"
