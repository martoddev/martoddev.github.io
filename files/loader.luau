local ReplicatedStorage = game:GetService("ReplicatedStorage")
local ServerScriptService = game:GetService("ServerScriptService")

local moduleloader = require(ReplicatedStorage.Lib.Packages.moduleloader).Init()

moduleloader:LoadModule(ReplicatedStorage.Lib.Modules.Data)

for _, scriptObj in pairs(ServerScriptService:GetDescendants()) do
	if scriptObj:IsA("Script") and scriptObj.Enabled == true then
		print("[" .. scriptObj.Name .. "] Loaded!")
	elseif scriptObj:IsA("Script") and scriptObj.Enabled == false then
		warn("[" .. scriptObj.Name .. "] couldnt load!")
	end
end
