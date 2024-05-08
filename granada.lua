-- Referência para a granada
local Granada = script.Parent

-- Variável para rastrear se a granada foi ativada
local ativada = false

-- Lidar com a ativação da granada pelo jogador
Granada.Activated:Connect(function()
    if not ativada then
        ativada = true
        -- Adicione aqui os efeitos visuais e sonoros de ativação, se desejar
    else
        -- Se a granada já estiver ativada, não faz nada
        return
    end
end)

-- Lidar com o clique do jogador no local onde deseja lançar a granada
game:GetService("Players").LocalPlayer.MouseButton1Down:Connect(function()
    if ativada then
        -- Obter a posição onde o jogador clicou
        local mouse = game.Players.LocalPlayer:GetMouse()
        local destino = mouse.Hit.Position
        
        -- Lançar a granada até o local clicado
        local velocidade = 100 -- Velocidade de lançamento (ajuste conforme necessário)
        local direção = (destino - Granada.Position).unit
        Granada.Velocity = direção * velocidade
        
        -- Função para lidar com a explosão da granada após o lançamento
        local function Explodir()
            -- Adicione aqui os efeitos visuais e sonoros da explosão
            Granada:Destroy()  -- Destruir a granada após a explosão
        end
        
        -- Esperar um curto período de tempo antes de explodir
        wait(2)
        Explodir()
        
        ativada = false  -- Redefinir a flag de ativada
    end
end)
