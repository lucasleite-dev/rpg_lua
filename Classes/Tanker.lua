-- coding: utf-8
local tanker = {
    vida = 300,
    vida_max = 300,
    mana_max = 150,
    mana = 150,
    ataque = 150,
    defesa = 150,
    classe = "Tanker",
    status = "Vivo"
}

--jogador:new = function(n, c)
function tanker:new(n)
  local tab = {};
  tab.__index = {nome = n};
  
  return setmetatable(espadachim, tab);
end

-- Quando o personagem é atacado
function tanker:levaDano(dano)
    -- Calculo do dano que o personagem vai receber do inimigo
    self.vida = math.floor(self.vida - (dano / (1 + self.defesa / 100)))
    if self.vida <= 0 then
        self.vida = 0
        self.status = "Morto"
    end

end

return tanker