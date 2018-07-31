-- coding: utf-8
local jogador = {
    vida = 300,
    vida_max = 300,
    mana_max = 150,
    mana = 150,
    ataque = 150,
    defesa = 150,
    status = "Vivo"
}

--jogador:new = function(n, c)
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