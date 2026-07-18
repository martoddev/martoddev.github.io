local ScreenShake = {}

local RunService = game:GetService("RunService")
local Players = game:GetService("Players")

local camera = workspace.CurrentCamera
local player = Players.LocalPlayer

function ScreenShake:Trigger(duration, intensity)
	duration = duration or 0.5
	intensity = intensity or 0.3

	local startTime = os.clock()
	local connection

	connection = RunService.RenderStepped:Connect(function()
		local elapsedTime = os.clock() - startTime

		if elapsedTime < duration then
			local shakeX = math.random(-100, 100) / 100 * intensity
			local shakeY = math.random(-100, 100) / 100 * intensity
			local shakeZ = math.random(-100, 100) / 100 * intensity

			local shakeCFrame = CFrame.new(shakeX, shakeY, shakeZ)

			camera.CFrame = camera.CFrame * shakeCFrame
		else
			connection:Disconnect()
		end
	end)
end

return ScreenShake
