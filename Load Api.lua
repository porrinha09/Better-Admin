-- api load:
-- by: weszin

-- notificação
local Players = game:GetService("Players")
local player = Players.LocalPlayer

local mensagem = "bem vindo"

game.StarterGui:SetCore("SendNotification", {
    Title = "Better Admin api:",
    Text = mensagem,
    Duration = 5 -- Duração em segundos
})

-- versão 2.0
