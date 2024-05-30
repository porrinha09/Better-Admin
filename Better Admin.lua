Nome = "Better Admin"
Versao = '1.0'
Dono = " Kelvin"

ranking = " Owner"
rank = ranking

theme = "https://raw.githubusercontent.com/porrinha09/Better-Admin/main/Temas/gifhub%20dark.lua"

local OrionLib = loadstring(game:HttpGet(theme))()
local Window = OrionLib:MakeWindow({Name = "Better Admin️ - v" .. Versao, HidePremium = false, SaveConfig = true, ConfigFolder = "OrionTest"})

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
