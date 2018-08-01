-- coding: utf-8
local mago = {
    vida = 300,
    vida_max = 300,
    mana_max = 150,
    mana = 150,
    ataque = 150,
    defesa = 150,
    classe = "Mago",
    status = "Vivo"
}

--jogador:new = function(n, c)
function mago:new(n)
  local tab = {};
  tab.__index = {nome = n};
  
  return setmetatable(espadachim, tab);
end

-- Quando o personagem é atacado
function mago:levaDano(dano)
    -- Calculo do dano que o personagem vai receber do inimigo
    self.vida = math.floor(self.vida - (dano / (1 + self.defesa / 100)))
    if self.vida <= 0 then
        self.vida = 0
        self.status = "Morto"
    end

end

return mago