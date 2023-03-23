local Players = game:GetService("Players")

local client = Players.LocalPlayer
local character = client.Character or client.CharacterAdded:Wait()

local _cached = {}
local _env = getsenv(character:WaitForChild("Saude").ACS_Client)

for _, key in pairs(_env) do 
    if typeof(key) == "function" then
        _cached[#_cached + 1] = key
    end
end

local engine do
    engine = {}
    engine.__index = engine
    
    function engine:sprint()
        _cached.Sprint()
    end
end

return engine
