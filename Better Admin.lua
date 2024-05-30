Nome = "Better Admin"
Versao = '1.0'
Dono = " Kelvin"

ranking = " Owner"
rank = ranking

-- Owner 
-- AdminHead 
-- Admin 
-- Mod 
-- Vip 
-- Member

-- Comandos chat:

game.Players.LocalPlayer.Chatted:Connect(function(msg)
    if msg:lower() == ";fly" then
        loadstring(game:HttpGet('https://pastebin.com/raw/YSL3xKYU'))()
    end
end)

game.Players.LocalPlayer.Chatted:Connect(function(msg)
    if msg:lower() == ";vfly" then
        loadstring(game:HttpGet("https://pastebin.com/raw/MHE1cbWF"))()
    end
end)

game.Players.LocalPlayer.Chatted:Connect(function(msg)
    if msg:lower() == ";reset" then
        game.Players.LocalPlayer.Character.Humanoid.Health = 0
    end
end)

game.Players.LocalPlayer.Chatted:Connect(function(msg)
    if msg:lower() == ";rejoin" then
        wait(1)    
        game:GetService("TeleportService"):Teleport(game.PlaceId, game.Players.LocalPlayer)
    end
end)

game.Players.LocalPlayer.Chatted:Connect(function(msg)
    if msg:lower() == ";sit" then
        local player = game.Players.LocalPlayer
local character = player.Character or player.CharacterAdded:Wait()
local humanoid = character:WaitForChild("Humanoid")

local function onJump()
    humanoid.Sit = false
end

humanoid.Sit = true
humanoid.Jumping:Connect(onJump)
    end
end)

game.Players.LocalPlayer.Chatted:Connect(function(msg)
    if msg:lower() == ";sitwalk" then
        local player = game.Players.LocalPlayer
local character = player.Character or player.CharacterAdded:Wait()
local humanoid = character:WaitForChild("Humanoid")

-- Armazena o estado atual do jogador (andando ou parado)
local isWalking = false

-- Função para lidar com o pulo e a movimentação
local function handleMovement()
    humanoid.Sit = false -- Desativa o estado de sentar
end

-- Função para verificar se o jogador está andando
local function checkWalking()
    if humanoid.MoveDirection.magnitude > 0 then
        -- Se o jogador estiver andando
        if not isWalking then
            -- Ativa a função de movimento
            handleMovement()
            isWalking = true -- Atualiza o estado para andando
        end
    else
        -- Se o jogador não estiver andando
        if isWalking then
            humanoid.Sit = true -- Ativa o estado de sentar
            isWalking = false -- Atualiza o estado para parado
        end
    end
end

-- Conectar a função ao evento de atualização do corredor
game:GetService("RunService").Heartbeat:Connect(checkWalking)

-- Sentar o personagem inicialmente
humanoid.Sit = true
    end
end)

local function perm()
  local player = game.Players.LocalPlayer
local playerGui = player:WaitForChild("PlayerGui")
local notification = Instance.new("ScreenGui")
notification.Name = "notification"
notification.Parent = playerGui

local Background = Instance.new("Frame")
Background.Size = UDim2.new(0, 300, 0, 50)  
Background.Position = UDim2.new(0.5, -150, 0.5, -25) 
Background.BackgroundColor3 = Color3.new(0, 0, 0)
Background.Parent = notification

local countdownText = Instance.new("TextLabel")
countdownText.Text = "Você não tem permissão para executar este comando (4)"
countdownText.TextColor3 = Color3.new(1, 1, 1)
countdownText.BackgroundColor3 = Color3.new(0, 0, 0)
countdownText.TextSize = 19
countdownText.Size = UDim2.new(1, 0, 1, 0)
countdownText.Parent = Background

local countdown = 4
local countdownInterval = 1

local function updateCountdown()
    countdown = countdown - 1
    countdownText.Text = "Você não tem permissão para executar este comando (" .. countdown .. ")"

    if countdown <= 0 then
        notification:Destroy()
    else

        wait(countdownInterval)
        updateCountdown()
    end
end

updateCountdown()
 end

theme = "https://raw.githubusercontent.com/porrinha09/Better-Admin/main/Temas/gifhub%20dark.lua"

local function api()
  wait(1)
local Players = game:GetService("Players")
local player = Players.LocalPlayer

local mensagem = "bem vindo"

game.StarterGui:SetCore("SendNotification", {
    Title = "Better Admin api:",
    Text = mensagem,
    Duration = 5
})
 end
 
local function api_plus()
  wait(1)
local player = game.Players.LocalPlayer
local playerGui = player:WaitForChild("PlayerGui")
local notification = Instance.new("ScreenGui")
notification.Name = "notification"
notification.Parent = playerGui

local Background = Instance.new("Frame")
Background.Size = UDim2.new(0, 300, 0, 50)  
Background.Position = UDim2.new(0.5, -150, 0.5, -25) 
Background.BackgroundColor3 = Color3.new(0, 0, 0)
Background.Parent = notification

local countdownText = Instance.new("TextLabel")
countdownText.Text = "Bem vindo! (5)"
countdownText.TextColor3 = Color3.new(1, 1, 1)
countdownText.BackgroundColor3 = Color3.new(0, 0, 0)
countdownText.TextSize = 19
countdownText.Size = UDim2.new(1, 0, 1, 0)
countdownText.Parent = Background

local countdown = 5
local countdownInterval = 1

local function updateCountdown()
    countdown = countdown - 1
    countdownText.Text = "Bem vindo! (" .. countdown .. ")"

    if countdown <= 0 then
        notification:Destroy()
    else

        wait(countdownInterval)
        updateCountdown()
    end
end

updateCountdown()
 end

local OrionLib = loadstring(game:HttpGet(theme))()
local Window = OrionLib:MakeWindow({Name = "Better Admin️ - v" .. Versao, HidePremium = false, SaveConfig = true, ConfigFolder = "OrionTest"})

api_plus()

-- códigos
local player = game.Players.LocalPlayer
local name = player.DisplayName

local mapa = game:GetService("MarketplaceService"):GetProductInfo(game.PlaceId).Name

-- Função para obter a data formatada
local function getFormattedDate()
    local date = os.date("*t") -- Obter a data atual
    local formattedDate = string.format("%02d/%02d/%04d", date.day, date.month, date.year) -- Formatar a data como DD/MM/AAAA
    return formattedDate -- Retornar a data formatada
end

-- Armazenar a data formatada na variável "data"
local data = getFormattedDate()

-- tabs
local Tab = Window:MakeTab({
	Name = "início",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})
Tab:AddLabel("bem vindo: " .. name)
Tab:AddLabel("jogo: " .. mapa)
Tab:AddLabel("data: " .. data)
Tab:AddLabel("seu rank:" .. rank)
local Section = Tab:AddSection({
	Name = "by:" .. Dono
})

local Tab = Window:MakeTab({
	Name = "Membro",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})
local Section = Tab:AddSection({
	Name = "Member"
})
Tab:AddButton({
	Name = ";sit",
	Callback = function()
      		local player = game.Players.LocalPlayer
local character = player.Character or player.CharacterAdded:Wait()
local humanoid = character:WaitForChild("Humanoid")

local function onJump()
    humanoid.Sit = false
end

humanoid.Sit = true
humanoid.Jumping:Connect(onJump)
  	end    
})
Tab:AddButton({
	Name = ";sitWalk",
	Callback = function()
      		local player = game.Players.LocalPlayer
local character = player.Character or player.CharacterAdded:Wait()
local humanoid = character:WaitForChild("Humanoid")

-- Armazena o estado atual do jogador (andando ou parado)
local isWalking = false

-- Função para lidar com o pulo e a movimentação
local function handleMovement()
    humanoid.Sit = false -- Desativa o estado de sentar
end

-- Função para verificar se o jogador está andando
local function checkWalking()
    if humanoid.MoveDirection.magnitude > 0 then
        -- Se o jogador estiver andando
        if not isWalking then
            -- Ativa a função de movimento
            handleMovement()
            isWalking = true -- Atualiza o estado para andando
        end
    else
        -- Se o jogador não estiver andando
        if isWalking then
            humanoid.Sit = true -- Ativa o estado de sentar
            isWalking = false -- Atualiza o estado para parado
        end
    end
end

-- Conectar a função ao evento de atualização do corredor
game:GetService("RunService").Heartbeat:Connect(checkWalking)

-- Sentar o personagem inicialmente
humanoid.Sit = true
  	end    
})
Tab:AddButton({
	Name = ";tirar sombras",
	Callback = function()
      		game.Lighting.GlobalShadows = false
  	end    
})
Tab:AddButton({
	Name = ";ativar sombras",
	Callback = function()
      		game.Lighting.GlobalShadows = true
  	end    
})
Tab:AddButton({
	Name = ";copy your nick",
	Callback = function()
      		local Players = game:GetService("Players")

    local playerName = player.Name
    setclipboard(playerName)
  	end    
})
Tab:AddButton({
	Name = ";resetar",
	Callback = function()
      		game.Players.LocalPlayer.Character.Humanoid.Health = 0
  	end    
})
Tab:AddButton({
	Name = ";granada",
	Callback = function()
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
  	end    
})

local Tab = Window:MakeTab({
	Name = "Vip",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})
local Section = Tab:AddSection({
	Name = "Vip"
})
Tab:AddTextbox({
	Name = ";color",
	Default = "0, 0, 255",
	TextDisappear = false,
	Callback = function(Value)
		-- Obter o serviço de jogador local
local player = game:GetService("Players").LocalPlayer

-- Função para alterar a cor do jogador para azul
local function changePlayerColorToBlue()
    -- Verificar se o jogador tem um personagem
    if player.Character then
        -- Iterar sobre todas as partes do personagem e alterar a cor para azul
        for _, part in ipairs(player.Character:GetDescendants()) do
            if part:IsA("BasePart") then
                part.Color = Color3.fromRGB(Value)  -- Azul
            end
        end
        return "Cor do jogador alterada para azul."
    else
        return "Você não tem um personagem no jogo."
    end
end

-- Chamar a função para alterar a cor do jogador para azul
changePlayerColorToBlue()
	end	  
})
Tab:AddButton({
	Name = ";ocultar chat",
	Callback = function()
      		local StarterGui = game:GetService("StarterGui")
StarterGui:SetCoreGuiEnabled(Enum.CoreGuiType.Chat, false)
  	end    
})
Tab:AddButton({
	Name = ";descultar chat",
	Callback = function()
      		local StarterGui = game:GetService("StarterGui")
StarterGui:SetCoreGuiEnabled(Enum.CoreGuiType.Chat, true)
  	end    
})
Tab:AddButton({
	Name = ";primeira pessoa",
	Callback = function()
       local player = game.Players.LocalPlayer

player.CameraMode = Enum.CameraMode.LockFirstPerson

player.PlayerGui.MouseIconEnabled = false
  	end    
})
Tab:AddButton({
	Name = ";desativar primeira pessoa",
	Callback = function()
      		local player = game.Players.LocalPlayer

player.CameraMode = Enum.CameraMode.Classic

player.PlayerGui.MouseIconEnabled = true
  	end    
})
Tab:AddButton({
	Name = ";desativar movimentos",
	Callback = function()
local player = game.Players.LocalPlayer
local character = player.Character or player.CharacterAdded:Wait()

character:WaitForChild("Humanoid")

local function disableMovement()
    character:WaitForChild("Humanoid").WalkSpeed = 0
end

disableMovement()
  	end    
})
Tab:AddButton({
	Name = ";ativar movimentos",
	Callback = function()
local player = game.Players.LocalPlayer
local character = player.Character or player.CharacterAdded:Wait()

character:WaitForChild("Humanoid")

local function enableMovement()
    character:WaitForChild("Humanoid").WalkSpeed = 16 -- Pode ajustar para a velocidade desejada
end

enableMovement()
  	end    
})
Tab:AddButton({
    Name = ";andar reto",
    Callback = function()
        local player = game.Players.LocalPlayer
        local character = player.Character or player.CharacterAdded:Wait()
        local humanoid = character:WaitForChild("Humanoid")

        local function onJump()
            humanoid.AutoRotate = true
            humanoid.MoveDirection = Vector3.new(0, 0, 0)
            humanoid:MoveTo(humanoid.RootPart.Position)
        end

        humanoid.AutoRotate = false
        humanoid.Jumping:Connect(onJump)
    end    
})
Tab:AddButton({
    Name = ";rejoin",
    Callback = function()
        wait(1)    
        game:GetService("TeleportService"):Teleport(game.PlaceId, game.Players.LocalPlayer)
    end    
})
Tab:AddButton({
	Name = ";sair",
	Callback = function()
      		game:shutdown() 
  	end    
})

local Tab = Window:MakeTab({
	Name = "Mod",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})
local Section = Tab:AddSection({
	Name = "Mod"
})
Tab:AddButton({
	Name = ";console",
	Callback = function()
      		game:GetService("StarterGui"):SetCore("DevConsoleVisible", true)
  	end    
})
Tab:AddTextbox({
	Name = ";health",
	Default = "100",
	TextDisappear = false,
	Callback = function(Value)
		local jogador = game.Players.LocalPlayer

jogador.Character.Humanoid.Health = (Value)
	end	  
})
Tab:AddButton({
	Name = "heal",
	Callback = function()
      		local jogador = game.Players.LocalPlayer

jogador.Character.Humanoid.Health = 100
  	end    
})

local Tab = Window:MakeTab({
	Name = "Admin",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})
local Section = Tab:AddSection({
	Name = "Admin"
})
Tab:AddTextbox({
	Name = ";speed",
	Default = "16",
	TextDisappear = false,
	Callback = function(Value)
		local humanoid = game.Players.LocalPlayer.Character.Humanoid
humanoid.WalkSpeed = (Value)
	end	  
})
Tab:AddTextbox({
	Name = ";jump",
	Default = "50",
	TextDisappear = false,
	Callback = function(Value)
		local player = game.Players.LocalPlayer
local character = player.Character

local jumpHeight = (Value)

local humanoid = character:WaitForChild("Humanoid")

humanoid.JumpPower = jumpHeight
	end	  
})
Tab:AddTextbox({
	Name = ";fov",
	Default = "70",
	TextDisappear = false,
	Callback = function(Value)
		game.Workspace.CurrentCamera.FieldOfView = (Value)
	end	  
})
Tab:AddButton({
	Name = ";tp pessoas mais próximas",
	Callback = function()
      		local p = game.Players.LocalPlayer

local function teleportToClosestPlayer()
    local c = nil
    local d = math.huge
    
    for _, plr in pairs(game.Players:GetPlayers()) do
        if plr ~= p then
            local dist = (plr.Character and plr.Character:FindFirstChild("HumanoidRootPart")) and
                             (p.Character and p.Character:FindFirstChild("HumanoidRootPart")) and
                             (plr.Character.HumanoidRootPart.Position - p.Character.HumanoidRootPart.Position).Magnitude or math.huge
            
            if dist < d then
                d = dist
                c = plr
            end
        end
    end
    
    if c then
        p.Character:MoveTo(c.Character.HumanoidRootPart.Position)
    end
end

teleportToClosestPlayer()
  	end    
})
Tab:AddButton({
	Name = "TP Tool",
	Callback = function()
      	 mouse = game.Players.LocalPlayer:GetMouse()
tool = Instance.new("Tool")
tool.RequiresHandle = false
tool.Name = "Equip to Click TP"
tool.Activated:connect(function()
local pos = mouse.Hit+Vector3.new(0,2.5,0)
pos = CFrame.new(pos.X,pos.Y,pos.Z)
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = pos
end)
tool.Parent = game.Players.LocalPlayer.Backpack
  	end    
})
Tab:AddTextbox({
	Name = ";teleport",
	Default = "",
	TextDisappear = false,
	Callback = function(Value)
		-- Nome parcial do jogador que você deseja teleportar (altere para o nome desejado)
local nomeParcialDoJogadorParaTeleportar = (Value)

-- Função para encontrar o jogador com base em uma correspondência parcial do nome
local function encontrarJogadorPorCorrespondenciaParcial(nomeParcial)
    -- Verificar se há jogadores no jogo
    if #game.Players:GetPlayers() > 0 then
        -- Percorrer todos os jogadores no jogo
        for _, jogador in ipairs(game.Players:GetPlayers()) do
            -- Verificar se o nome do jogador corresponde parcialmente ao nome fornecido
            if string.find(jogador.Name:lower(), nomeParcial:lower(), 1, true) then
                return jogador -- Retornar o jogador se houver uma correspondência parcial
            end
        end
    end
    return nil -- Retornar nil se nenhum jogador for encontrado
end

-- Função para teleportar o jogador local para perto de outro jogador usando correspondência parcial do nome
local function teleportarParaJogadorPorCorrespondenciaParcial(player, nomeParcial)
    -- Encontrar o jogador com base na correspondência parcial do nome
    local jogadorAlvo = encontrarJogadorPorCorrespondenciaParcial(nomeParcial)
    
    -- Verificar se o jogador alvo foi encontrado
    if jogadorAlvo then
        -- Acessar o personagem do jogador alvo
        local character = jogadorAlvo.Character
        if character then
            -- Teleportar o jogador local para perto do jogador alvo
            player.Character:SetPrimaryPartCFrame(character.PrimaryPart.CFrame + Vector3.new(0, 5, 0))
            return "Teleportado para " .. jogadorAlvo.Name
        else
            return "Erro: O jogador alvo não tem um personagem."
        end
    else
        return "Erro: Nenhum jogador encontrado com base na correspondência parcial do nome '" .. nomeParcial .. "'."
    end
end

-- Exemplo de uso: teleportar o jogador local para perto do jogador com correspondência parcial do nome
print(teleportarParaJogadorPorCorrespondenciaParcial(game.Players.LocalPlayer, nomeParcialDoJogadorParaTeleportar))
	end	  
})
Tab:AddTextbox({
	Name = ";View",
	Default = "",
	TextDisappear = false,
	Callback = function(Value)
		-- Nome parcial do jogador que você deseja visualizar (altere para o nome desejado)
local nomeParcialDoJogadorParaVisualizar = (Value)

-- Função para encontrar o jogador com base em uma correspondência parcial do nome
local function encontrarJogadorPorCorrespondenciaParcial(nomeParcial)
    -- Verificar se há jogadores no jogo
    if #game.Players:GetPlayers() > 0 then
        -- Percorrer todos os jogadores no jogo
        for _, jogador in ipairs(game.Players:GetPlayers()) do
            -- Verificar se o nome do jogador corresponde parcialmente ao nome fornecido
            if string.find(jogador.Name:lower(), nomeParcial:lower(), 1, true) then
                return jogador -- Retornar o jogador se houver uma correspondência parcial
            end
        end
    end
    return nil -- Retornar nil se nenhum jogador for encontrado
end

-- Função para visualizar a visão do jogador local perto do jogador com correspondência parcial do nome
local function visualizarVisaoDoJogadorPorCorrespondenciaParcial(nomeParcial)
    -- Encontrar o jogador com base na correspondência parcial do nome
    local jogadorAlvo = encontrarJogadorPorCorrespondenciaParcial(nomeParcial)
    
    -- Verificar se o jogador alvo foi encontrado
    if jogadorAlvo then
        -- Acessar o personagem do jogador alvo
        local character = jogadorAlvo.Character
        if character then
            -- Definir a câmera para seguir o jogador alvo
            local camera = game.Workspace.CurrentCamera
            camera.CameraSubject = character:WaitForChild("Humanoid")
            camera.CameraType = Enum.CameraType.Follow
        else
            warn("Erro: O jogador alvo não tem um personagem.")
        end
    else
        warn("Erro: Nenhum jogador encontrado com base na correspondência parcial do nome '" .. nomeParcial .. "'.")
    end
end

-- Exemplo de uso: visualizar a visão do jogador local perto do jogador com correspondência parcial do nome
visualizarVisaoDoJogadorPorCorrespondenciaParcial(nomeParcialDoJogadorParaVisualizar)
	end	  
})
Tab:AddButton({
	Name = ";Freeze",
	Callback = function()
local player = game.Players.LocalPlayer
local character = player.Character or player.CharacterAdded:Wait()

character:WaitForChild("Humanoid")

local function disableMovement()
    character:WaitForChild("Humanoid").WalkSpeed = 0
end

disableMovement()
  	end    
})
Tab:AddButton({
	Name = ";unfreeze",
	Callback = function()
local player = game.Players.LocalPlayer
local character = player.Character or player.CharacterAdded:Wait()

character:WaitForChild("Humanoid")

local function enableMovement()
    character:WaitForChild("Humanoid").WalkSpeed = 16 -- Pode ajustar para a velocidade desejada
end

enableMovement()
  	end    
})
Tab:AddButton({
	Name = ";Noclip",
	Callback = function()
      		local noClipEnabled = true -- Define se o noclip está ativado ou desativado inicialmente

function noClip()
    local player = game.Players.LocalPlayer
    local character = player.Character or player.CharacterAdded:Wait()
    local rootPart = character:FindFirstChild("HumanoidRootPart") or character.PrimaryPart

    local function isDescendantOfTerrain(part)
        local terrain = game.Workspace.Terrain
        return terrain and terrain:IsAncestorOf(part)
    end

    game:GetService("RunService").Stepped:Connect(function()
        if noClipEnabled then
            for _, part in ipairs(character:GetDescendants()) do
                if part:IsA("BasePart") and not isDescendantOfTerrain(part) then
                    part.CanCollide = false
                end
            end
        end
    end)
end

noClip()
  	end    
})
Tab:AddButton({
	Name = ";clip",
	Callback = function()
      		local noClipEnabled = false -- Define se o noclip está ativado ou desativado inicialmente

function noClip()
    local player = game.Players.LocalPlayer
    local character = player.Character or player.CharacterAdded:Wait()
    local rootPart = character:FindFirstChild("HumanoidRootPart") or character.PrimaryPart

    local function isDescendantOfTerrain(part)
        local terrain = game.Workspace.Terrain
        return terrain and terrain:IsAncestorOf(part)
    end

    game:GetService("RunService").Stepped:Connect(function()
        if noClipEnabled then
            for _, part in ipairs(character:GetDescendants()) do
                if part:IsA("BasePart") and not isDescendantOfTerrain(part) then
                    part.CanCollide = false
                end
            end
        end
    end)
end

noClip()
  	end    
})

local Tab = Window:MakeTab({
	Name = "AdminHead",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})
local Section = Tab:AddSection({
	Name = "AdminHead"
})
Tab:AddButton({
	Name = ";F3x",
	Callback = function()
      		loadstring(game:GetObjects("rbxassetid://6695644299")[1].Source)()
  	end    
})
Tab:AddButton({
	Name = ";Hide_head",
	Callback = function()
      		-- Variável para ativar ou desativar a funcionalidade de ocultar a cabeça do personagem
local ocultarCabeca = true

-- Função para ocultar a cabeça do jogador
local function toggleHeadVisibility(player)
    -- Verificar se a funcionalidade de ocultar cabeça está ativada
    if ocultarCabeca then
        -- Verificar se o jogador possui um personagem e se a cabeça está disponível
        if player.Character and player.Character:FindFirstChild("Head") then
            -- Acessar a cabeça do personagem
            local cabeca = player.Character.Head
            
            -- Verificar se a cabeça existe e é uma instância de BasePart
            if cabeca and cabeca:IsA("BasePart") then
                -- Ocultar a cabeça definindo sua transparência como 1 (completamente invisível)
                cabeca.Transparency = 1
                return "Cabeça do jogador ocultada."
            else
                return "Erro: Cabeça não encontrada ou não é uma instância de BasePart"
            end
        else
            return "Erro: Jogador não tem um personagem ou a cabeça não está disponível"
        end
    else
        return "Funcionalidade de ocultar cabeça desativada."
    end
end

-- Exemplo de uso: ocultar a cabeça do jogador local (substitua "game.Players.LocalPlayer" pelo jogador desejado)
print(toggleHeadVisibility(game.Players.LocalPlayer))
  	end    
})
Tab:AddButton({
	Name = ";Unhide_head",
	Callback = function()
      		-- Variável para ativar ou desativar a funcionalidade de ocultar a cabeça do personagem
local ocultarCabeca = false

-- Função para ocultar a cabeça do jogador
local function toggleHeadVisibility(player)
    -- Verificar se a funcionalidade de ocultar cabeça está ativada
    if ocultarCabeca then
        -- Verificar se o jogador possui um personagem e se a cabeça está disponível
        if player.Character and player.Character:FindFirstChild("Head") then
            -- Acessar a cabeça do personagem
            local cabeca = player.Character.Head
            
            -- Verificar se a cabeça existe e é uma instância de BasePart
            if cabeca and cabeca:IsA("BasePart") then
                -- Ocultar a cabeça definindo sua transparência como 1 (completamente invisível)
                cabeca.Transparency = 1
                return "Cabeça do jogador ocultada."
            else
                return "Erro: Cabeça não encontrada ou não é uma instância de BasePart"
            end
        else
            return "Erro: Jogador não tem um personagem ou a cabeça não está disponível"
        end
    else
        return "Funcionalidade de ocultar cabeça desativada."
    end
end

-- Exemplo de uso: ocultar a cabeça do jogador local (substitua "game.Players.LocalPlayer" pelo jogador desejado)
print(toggleHeadVisibility(game.Players.LocalPlayer))
  	end    
})
Tab:AddButton({
	Name = ";Invisible",
	Callback = function()
      		-- Variável para controlar a invisibilidade do jogador
local invisibilidadeAtivada = true

-- Função para tornar o jogador invisível ou visível
local function controlarInvisibilidadeDoJogador(player)
    -- Verificar se a invisibilidade está ativada
    if invisibilidadeAtivada then
        -- Verificar se o jogador possui um personagem
        if player.Character then
            -- Acessar todas as partes do personagem
            local parts = player.Character:GetDescendants()
            
            -- Iterar sobre todas as partes
            for _, part in ipairs(parts) do
                -- Verificar se a parte é uma instância de BasePart
                if part:IsA("BasePart") then
                    -- Definir a transparência da parte como 1 (totalmente invisível)
                    part.Transparency = 1
                end
            end
            return "Jogador tornou-se invisível."
        else
            return "Erro: Jogador não tem um personagem."
        end
    else
        -- Se a invisibilidade não estiver ativada, tornar todas as partes do jogador visíveis
        if player.Character then
            local parts = player.Character:GetDescendants()
            for _, part in ipairs(parts) do
                if part:IsA("BasePart") then
                    part.Transparency = 0
                end
            end
            return "Jogador tornou-se visível."
        else
            return "Erro: Jogador não tem um personagem."
        end
    end
end

-- Exemplo de uso: controlar a invisibilidade do jogador local (substitua "game.Players.LocalPlayer" pelo jogador desejado)
print(controlarInvisibilidadeDoJogador(game.Players.LocalPlayer))
  	end    
})
Tab:AddButton({
	Name = ";Uninvisible",
	Callback = function()
      		-- Variável para controlar a invisibilidade do jogador
local invisibilidadeAtivada = false

-- Função para tornar o jogador invisível ou visível
local function controlarInvisibilidadeDoJogador(player)
    -- Verificar se a invisibilidade está ativada
    if invisibilidadeAtivada then
        -- Verificar se o jogador possui um personagem
        if player.Character then
            -- Acessar todas as partes do personagem
            local parts = player.Character:GetDescendants()
            
            -- Iterar sobre todas as partes
            for _, part in ipairs(parts) do
                -- Verificar se a parte é uma instância de BasePart
                if part:IsA("BasePart") then
                    -- Definir a transparência da parte como 1 (totalmente invisível)
                    part.Transparency = 1
                end
            end
            return "Jogador tornou-se invisível."
        else
            return "Erro: Jogador não tem um personagem."
        end
    else
        -- Se a invisibilidade não estiver ativada, tornar todas as partes do jogador visíveis
        if player.Character then
            local parts = player.Character:GetDescendants()
            for _, part in ipairs(parts) do
                if part:IsA("BasePart") then
                    part.Transparency = 0
                end
            end
            return "Jogador tornou-se visível."
        else
            return "Erro: Jogador não tem um personagem."
        end
    end
end

-- Exemplo de uso: controlar a invisibilidade do jogador local (substitua "game.Players.LocalPlayer" pelo jogador desejado)
print(controlarInvisibilidadeDoJogador(game.Players.LocalPlayer))
  	end    
})

local Tab = Window:MakeTab({
	Name = "Owner",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})
local Section = Tab:AddSection({
	Name = "Owner"
})
Tab:AddButton({
	Name = ";rtx",
	Callback = function()
      		if not game:IsLoaded() then
    game.Loaded:Wait()
end
local Bloom = Instance.new("BloomEffect")
Bloom.Intensity = 0.1
Bloom.Threshold = 0
Bloom.Size = 100

local Tropic = Instance.new("Sky")
Tropic.Name = "Tropic"
Tropic.SkyboxUp = "http://www.roblox.com/asset/?id=169210149"
Tropic.SkyboxLf = "http://www.roblox.com/asset/?id=169210133"
Tropic.SkyboxBk = "http://www.roblox.com/asset/?id=169210090"
Tropic.SkyboxFt = "http://www.roblox.com/asset/?id=169210121"
Tropic.StarCount = 100
Tropic.SkyboxDn = "http://www.roblox.com/asset/?id=169210108"
Tropic.SkyboxRt = "http://www.roblox.com/asset/?id=169210143"
Tropic.Parent = Bloom

local Sky = Instance.new("Sky")
Sky.SkyboxUp = "http://www.roblox.com/asset/?id=196263782"
Sky.SkyboxLf = "http://www.roblox.com/asset/?id=196263721"
Sky.SkyboxBk = "http://www.roblox.com/asset/?id=196263721"
Sky.SkyboxFt = "http://www.roblox.com/asset/?id=196263721"
Sky.CelestialBodiesShown = false
Sky.SkyboxDn = "http://www.roblox.com/asset/?id=196263643"
Sky.SkyboxRt = "http://www.roblox.com/asset/?id=196263721"
Sky.Parent = Bloom

Bloom.Parent = game:GetService("Lighting")

local Bloom = Instance.new("BloomEffect")
Bloom.Enabled = false
Bloom.Intensity = 0.35
Bloom.Threshold = 0.2
Bloom.Size = 56

local Tropic = Instance.new("Sky")
Tropic.Name = "Tropic"
Tropic.SkyboxUp = "http://www.roblox.com/asset/?id=169210149"
Tropic.SkyboxLf = "http://www.roblox.com/asset/?id=169210133"
Tropic.SkyboxBk = "http://www.roblox.com/asset/?id=169210090"
Tropic.SkyboxFt = "http://www.roblox.com/asset/?id=169210121"
Tropic.StarCount = 100
Tropic.SkyboxDn = "http://www.roblox.com/asset/?id=169210108"
Tropic.SkyboxRt = "http://www.roblox.com/asset/?id=169210143"
Tropic.Parent = Bloom

local Sky = Instance.new("Sky")
Sky.SkyboxUp = "http://www.roblox.com/asset/?id=196263782"
Sky.SkyboxLf = "http://www.roblox.com/asset/?id=196263721"
Sky.SkyboxBk = "http://www.roblox.com/asset/?id=196263721"
Sky.SkyboxFt = "http://www.roblox.com/asset/?id=196263721"
Sky.CelestialBodiesShown = false
Sky.SkyboxDn = "http://www.roblox.com/asset/?id=196263643"
Sky.SkyboxRt = "http://www.roblox.com/asset/?id=196263721"
Sky.Parent = Bloom

Bloom.Parent = game:GetService("Lighting")
local Blur = Instance.new("BlurEffect")
Blur.Size = 2

Blur.Parent = game:GetService("Lighting")
local Efecto = Instance.new("BlurEffect")
Efecto.Name = "Efecto"
Efecto.Enabled = false
Efecto.Size = 2

Efecto.Parent = game:GetService("Lighting")
local Inaritaisha = Instance.new("ColorCorrectionEffect")
Inaritaisha.Name = "Inari taisha"
Inaritaisha.Saturation = 0.05
Inaritaisha.TintColor = Color3.fromRGB(255, 224, 219)

Inaritaisha.Parent = game:GetService("Lighting")
local Normal = Instance.new("ColorCorrectionEffect")
Normal.Name = "Normal"
Normal.Enabled = false
Normal.Saturation = -0.2
Normal.TintColor = Color3.fromRGB(255, 232, 215)

Normal.Parent = game:GetService("Lighting")
local SunRays = Instance.new("SunRaysEffect")
SunRays.Intensity = 0.05

SunRays.Parent = game:GetService("Lighting")
local Sunset = Instance.new("Sky")
Sunset.Name = "Sunset"
Sunset.SkyboxUp = "rbxassetid://323493360"
Sunset.SkyboxLf = "rbxassetid://323494252"
Sunset.SkyboxBk = "rbxassetid://323494035"
Sunset.SkyboxFt = "rbxassetid://323494130"
Sunset.SkyboxDn = "rbxassetid://323494368"
Sunset.SunAngularSize = 14
Sunset.SkyboxRt = "rbxassetid://323494067"

Sunset.Parent = game:GetService("Lighting")
local Takayama = Instance.new("ColorCorrectionEffect")
Takayama.Name = "Takayama"
Takayama.Enabled = false
Takayama.Saturation = -0.3
Takayama.Contrast = 0.1
Takayama.TintColor = Color3.fromRGB(235, 214, 204)

Takayama.Parent = game:GetService("Lighting")
local L = game:GetService("Lighting")
L.Brightness = 2.14
L.ColorShift_Bottom = Color3.fromRGB(11, 0, 20)
L.ColorShift_Top = Color3.fromRGB(240, 127, 14)
L.OutdoorAmbient = Color3.fromRGB(34, 0, 49)
L.ClockTime = 6.7
L.FogColor = Color3.fromRGB(94, 76, 106)
L.FogEnd = 1000
L.FogStart = 0
L.ExposureCompensation = 0.24
L.ShadowSoftness = 0
L.Ambient = Color3.fromRGB(59, 33, 27)

local Bloom = Instance.new("BloomEffect")
Bloom.Intensity = 0.1
Bloom.Threshold = 0
Bloom.Size = 100

local Tropic = Instance.new("Sky")
Tropic.Name = "Tropic"
Tropic.SkyboxUp = "http://www.roblox.com/asset/?id=169210149"
Tropic.SkyboxLf = "http://www.roblox.com/asset/?id=169210133"
Tropic.SkyboxBk = "http://www.roblox.com/asset/?id=169210090"
Tropic.SkyboxFt = "http://www.roblox.com/asset/?id=169210121"
Tropic.StarCount = 100
Tropic.SkyboxDn = "http://www.roblox.com/asset/?id=169210108"
Tropic.SkyboxRt = "http://www.roblox.com/asset/?id=169210143"
Tropic.Parent = Bloom

local Sky = Instance.new("Sky")
Sky.SkyboxUp = "http://www.roblox.com/asset/?id=196263782"
Sky.SkyboxLf = "http://www.roblox.com/asset/?id=196263721"
Sky.SkyboxBk = "http://www.roblox.com/asset/?id=196263721"
Sky.SkyboxFt = "http://www.roblox.com/asset/?id=196263721"
Sky.CelestialBodiesShown = false
Sky.SkyboxDn = "http://www.roblox.com/asset/?id=196263643"
Sky.SkyboxRt = "http://www.roblox.com/asset/?id=196263721"
Sky.Parent = Bloom

Bloom.Parent = game:GetService("Lighting")

local Bloom = Instance.new("BloomEffect")
Bloom.Enabled = false
Bloom.Intensity = 0.35
Bloom.Threshold = 0.2
Bloom.Size = 56

local Tropic = Instance.new("Sky")
Tropic.Name = "Tropic"
Tropic.SkyboxUp = "http://www.roblox.com/asset/?id=169210149"
Tropic.SkyboxLf = "http://www.roblox.com/asset/?id=169210133"
Tropic.SkyboxBk = "http://www.roblox.com/asset/?id=169210090"
Tropic.SkyboxFt = "http://www.roblox.com/asset/?id=169210121"
Tropic.StarCount = 100
Tropic.SkyboxDn = "http://www.roblox.com/asset/?id=169210108"
Tropic.SkyboxRt = "http://www.roblox.com/asset/?id=169210143"
Tropic.Parent = Bloom

local Sky = Instance.new("Sky")
Sky.SkyboxUp = "http://www.roblox.com/asset/?id=196263782"
Sky.SkyboxLf = "http://www.roblox.com/asset/?id=196263721"
Sky.SkyboxBk = "http://www.roblox.com/asset/?id=196263721"
Sky.SkyboxFt = "http://www.roblox.com/asset/?id=196263721"
Sky.CelestialBodiesShown = false
Sky.SkyboxDn = "http://www.roblox.com/asset/?id=196263643"
Sky.SkyboxRt = "http://www.roblox.com/asset/?id=196263721"
Sky.Parent = Bloom

Bloom.Parent = game:GetService("Lighting")
local Blur = Instance.new("BlurEffect")
Blur.Size = 2

Blur.Parent = game:GetService("Lighting")
local Efecto = Instance.new("BlurEffect")
Efecto.Name = "Efecto"
Efecto.Enabled = false
Efecto.Size = 2

Efecto.Parent = game:GetService("Lighting")
local Inaritaisha = Instance.new("ColorCorrectionEffect")
Inaritaisha.Name = "Inari taisha"
Inaritaisha.Saturation = 0.05
Inaritaisha.TintColor = Color3.fromRGB(255, 224, 219)

Inaritaisha.Parent = game:GetService("Lighting")
local Normal = Instance.new("ColorCorrectionEffect")
Normal.Name = "Normal"
Normal.Enabled = false
Normal.Saturation = -0.2
Normal.TintColor = Color3.fromRGB(255, 232, 215)

Normal.Parent = game:GetService("Lighting")
local SunRays = Instance.new("SunRaysEffect")
SunRays.Intensity = 0.05

SunRays.Parent = game:GetService("Lighting")
local Sunset = Instance.new("Sky")
Sunset.Name = "Sunset"
Sunset.SkyboxUp = "rbxassetid://323493360"
Sunset.SkyboxLf = "rbxassetid://323494252"
Sunset.SkyboxBk = "rbxassetid://323494035"
Sunset.SkyboxFt = "rbxassetid://323494130"
Sunset.SkyboxDn = "rbxassetid://323494368"
Sunset.SunAngularSize = 14
Sunset.SkyboxRt = "rbxassetid://323494067"

Sunset.Parent = game:GetService("Lighting")
local Takayama = Instance.new("ColorCorrectionEffect")
Takayama.Name = "Takayama"
Takayama.Enabled = false
Takayama.Saturation = -0.3
Takayama.Contrast = 0.1
Takayama.TintColor = Color3.fromRGB(235, 214, 204)

Takayama.Parent = game:GetService("Lighting")
local L = game:GetService("Lighting")
L.Brightness = 2.14
L.ColorShift_Bottom = Color3.fromRGB(11, 0, 20)
L.ColorShift_Top = Color3.fromRGB(240, 127, 14)
L.OutdoorAmbient = Color3.fromRGB(34, 0, 49)
L.ClockTime = 6.7
L.FogColor = Color3.fromRGB(94, 76, 106)
L.FogEnd = 1000
L.FogStart = 0
L.ExposureCompensation = 0.24
L.ShadowSoftness = 0
L.Ambient = Color3.fromRGB(59, 33, 27)
  	end    
})
Tab:AddButton({
	Name = ";bola",
	Callback = function()
      	                local UserInputService = game:GetService("UserInputService")
                local RunService = game:GetService("RunService")
                local Camera = workspace.CurrentCamera
                
                local SPEED_MULTIPLIER = 30
                local JUMP_POWER = 60
                local JUMP_GAP = 0.3
                
                local character = game.Players.LocalPlayer.Character
                
                for i,v in ipairs(character:GetDescendants()) do
                   if v:IsA("BasePart") then
                       v.CanCollide = false
                   end
                end
                
                local ball = character.HumanoidRootPart
                ball.Shape = Enum.PartType.Ball
                ball.Size = Vector3.new(5,5,5)
                local humanoid = character:WaitForChild("Humanoid")
                local params = RaycastParams.new()
                params.FilterType = Enum.RaycastFilterType.Blacklist
                params.FilterDescendantsInstances = {character}
                
                local tc = RunService.RenderStepped:Connect(function(delta)
                   ball.CanCollide = true
                   humanoid.PlatformStand = true
                if UserInputService:GetFocusedTextBox() then return end
                if UserInputService:IsKeyDown("W") then
                ball.RotVelocity -= Camera.CFrame.RightVector * delta * SPEED_MULTIPLIER
                end
                if UserInputService:IsKeyDown("A") then
                ball.RotVelocity -= Camera.CFrame.LookVector * delta * SPEED_MULTIPLIER
                end
                if UserInputService:IsKeyDown("S") then
                ball.RotVelocity += Camera.CFrame.RightVector * delta * SPEED_MULTIPLIER
                end
                if UserInputService:IsKeyDown("D") then
                ball.RotVelocity += Camera.CFrame.LookVector * delta * SPEED_MULTIPLIER
                end
                --ball.RotVelocity = ball.RotVelocity - Vector3.new(0,ball.RotVelocity.Y/50,0)
                end)
                
                UserInputService.JumpRequest:Connect(function()
                local result = workspace:Raycast(
                ball.Position,
                Vector3.new(
                0,
                -((ball.Size.Y/2)+JUMP_GAP),
                0
                ),
                params
                )
                if result then
                ball.Velocity = ball.Velocity + Vector3.new(0,JUMP_POWER,0)
                end
                end)
                
                Camera.CameraSubject = ball
                humanoid.Died:Connect(function() tc:Disconnect() end)
  	end    
})

local Tab = Window:MakeTab({
	Name = "Script hub",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})
local Section = Tab:AddSection({
	Name = "Scripts Admin"
})
Tab:AddButton({
	Name = "infinite yield",
	Callback = function()
      		loadstring(game:HttpGet('https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source'))()
  	end    
})
Tab:AddButton({
	Name = "Reviz admin",
	Callback = function()
      		loadstring(game:HttpGetAsync("https://pastebin.com/raw/Caniwq2N"))()
  	end    
})
Tab:AddButton({
	Name = "Hd admin",
	Callback = function()
             loadstring(game:HttpGet("https://raw.githubusercontent.com/porrinha09/Hd-Admin/main/HdAdmin.lua", true))()
  	end    
})
local Section = Tab:AddSection({
	Name = "fly"
})
Tab:AddButton({
	Name = "fly v3",
	Callback = function()
      		loadstring(game:HttpGet('https://pastebin.com/raw/YSL3xKYU'))()
  	end    
})
Tab:AddButton({
	Name = "vfly",
	Callback = function()
      		loadstring(game:HttpGet("https://pastebin.com/raw/MHE1cbWF"))()
  	end    
})

local Tab = Window:MakeTab({
	Name = "prison life",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})
local Section = Tab:AddSection({
	Name = "prison life"
})
Tab:AddButton({
	Name = "Tiger Admin",
	Callback = function()
      		loadstring(game:HttpGet("https://raw.githubusercontent.com/dalloc2/Roblox/main/TigerAdmin.lua"))()
  	end    
})
Tab:AddButton({
	Name = "prisonware",
	Callback = function()
      		loadstring(game:HttpGet("https://raw.githubusercontent.com/Denverrz/scripts/master/PRISONWARE_v1.3.txt"))();
  	end    
})

local Tab = Window:MakeTab({
	Name = "brookhaven",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})
local Section = Tab:AddSection({
	Name = "brookhaven"
})
Tab:AddButton({
	Name = "Ice hub",
	Callback = function()
      		loadstring(game:HttpGet('https://icehub.cf/IceHubLoader'))()
  	end    
})
Tab:AddButton({
	Name = "redz hub",
	Callback = function()
      		loadstring(game:HttpGet("https://raw.githubusercontent.com/REDzHUB/REDzHUB/main/REDzHUB"))()
  	end    
})

local Tab = Window:MakeTab({
	Name = "Bombas",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})
local Section = Tab:AddSection({
	Name = "Bombas"
})
Tab:AddButton({
	Name = "Bomba atômica",
	Callback = function()
      		loadstring(game:HttpGet("https://raw.githubusercontent.com/porrinha09/Better-Admin/main/bomba.lua",true))()
  	end    
})

local Tab = Window:MakeTab({
	Name = "Paraquedas",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})
local Section = Tab:AddSection({
	Name = "Paraquedas"
})
Tab:AddButton({
	Name = "Ativar",
	Callback = function()
      		local player = game.Players.LocalPlayer
local character = player.Character or player.CharacterAdded:Wait()
local humanoid = character:WaitForChild("Humanoid")

-- Define a gravidade normal e a gravidade de paraquedas
local normalGravity = 196.2
local parachuteGravity = 20 -- Ajuste este valor para mudar a velocidade de queda

-- Função para verificar se o jogador está caindo
local function checkFalling()
    if humanoid:GetState() == Enum.HumanoidStateType.Freefall then
        -- Muda a gravidade para simular queda de paraquedas
        workspace.Gravity = parachuteGravity
    else
        -- Retorna a gravidade ao normal
        workspace.Gravity = normalGravity
    end
end

-- Conecta a função ao evento de mudança de estado do Humanoid
humanoid.StateChanged:Connect(function(oldState, newState)
    checkFalling()
end)

-- Verifica a queda continuamente
while true do
    wait(0.1)
    checkFalling()
end

  	end    
})

local Tab = Window:MakeTab({
	Name = "Config",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})
local Section = Tab:AddSection({
	Name = "Scripts"
})
Tab:AddButton({
	Name = "Players próximos",
	Callback = function()
      		local player = game.Players.LocalPlayer
local playerGui = player:WaitForChild("PlayerGui")
local notification = Instance.new("ScreenGui")
notification.Name = "notification"
notification.Parent = playerGui

local Background = Instance.new("Frame")
Background.Size = UDim2.new(0, 300, 0, 50)  
Background.Position = UDim2.new(0.5, -150, 0.5, -25) 
Background.BackgroundColor3 = Color3.new(0, 0, 0)
Background.Active = true
Background.Draggable = true
Background.Parent = notification

local Text = Instance.new("TextLabel")
Text.Text = "carregando..." 
Text.TextColor3 = Color3.new(1, 1, 1)
Text.BackgroundColor3 = Color3.new(0, 0, 0)
Text.TextSize = 19
Text.Size = UDim2.new(1, 0, 1, 0)
Text.Parent = Background

local DISTANCIA_MAXIMA = 30
local function contarJogadoresProximos()
    local count = 0
    for _, outroPlayer in pairs(game.Players:GetPlayers()) do
        if outroPlayer ~= player and (outroPlayer.Character and outroPlayer.Character:FindFirstChild("HumanoidRootPart")) and player.Character and player.Character:FindFirstChild("HumanoidRootPart") then
w   sou gay e vc tbm zg     fagã   e  ésy           local distancia = (player.Character.HumanoidRootPart.Position - outroPlayer.Character.HumanoidRootPart.Position).magnitude
            if distancia <= DISTANCIA_MAXIMA then
                count = count + 1
            end
        end
    end
    return count
end

while wait(1) do
    local jogadoresProximos = contarJogadoresProximos()
    Text.Text = jogadoresProximos .. " jogadores próximos"
end
  	end    
})