local ServerScriptService = game:GetService("ServerScriptService")

for _, scriptObj in pairs(ServerScriptService:GetDescendants()) do
	if scriptObj:IsA("Script") and scriptObj.Enabled == true then
		print("[" .. scriptObj.Name .. "] Loaded!")
	elseif scriptObj:IsA("Script") and scriptObj.Enabled == false then
		warn("[" .. scriptObj.Name .. "] couldnt load!")
	end
end
