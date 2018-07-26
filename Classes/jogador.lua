-- coding: utf-8
-- Objeto personagem, valores padrÃµes, etc...
local personagem = {}
-- Criação de personagem
--[[function Jogador:new(nome, vida, vida_max, mana, mana_max, ataque, defesa, status)
    -- Novo personagem recebe personagem atributos + alterações. Ex: nome = "Exemplo"
    table = {
        nome = nome,
		vida = vida,
		vida_max = vida_max,
		mana_max = mana_max,
        mana = mana,
        ataque = ataque,
        defesa = defesa,
        status = status
    }
    self.__index = self
    return setmetatable(Jogador, table)

end]]

local personagem_novo = function(nome, vida, vida_max, mana, mana_max, ataque, defesa, status)
	local table = {}
	table.__index = {
        nome = nome,
		vida = 300,
		vida_max = 300,
		mana_max = 150,
        mana = 150,
        ataque = 150,
        defesa = 150,
        status = "Vivo"
    }
	return setmetatable(personagem, table)

end

-- Quando o personagem é atacado
function personagem:levaDano(dano)
    -- Calculo do dano que o personagem vai receber do inimigo
    self.vida = math.floor(self.vida - (dano / (1 + self.defesa / 100)))
    
    if self.vida <= 0 then
        self.vida = 0
        self.status = "Morto"
    end

end