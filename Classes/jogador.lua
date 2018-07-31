-- coding: utf-8
-- Objeto personagem, valores padrÃµes, etc...
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

end

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

end]]
local jogador = {
    vida = 300,
    vida_max = 300,
    mana_max = 150,
    mana = 150,
    ataque = 150,
    defesa = 150,
    status = "Vivo"
}

--jogador.new = function(n, c)
function jogador:new(n, c)
  local tab = {};
  tab.__index = {nome = n, classe = c};
  
  return setmetatable(jogador, tab);
end

--local Player= jogador.new(io.read(), io.read());

-- Quando o personagem é atacado
function jogador:levaDano(dano)
    -- Calculo do dano que o personagem vai receber do inimigo
    self.vida = math.floor(self.vida - (dano / (1 + self.defesa / 100)))
    
    if self.vida <= 0 then
        self.vida = 0
        self.status = "Morto"
    end

end
return jogador