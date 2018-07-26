local Inimigo = {
	--Atributos padrões
    nome = "Não definido", vida = 150, vida_max = 150, ataque = 100,
    defesa = 100, status = 'Vivo'
}

function Inimigo:new(nome, vida, vida_max, ataque, defesa, status)
    table = {
        nome = nome, vida = vida, vida_max = vida_max, mana = mana,
        ataque = ataque, defesa = defesa, status = status
    }
    setmetatable(table, self)
    self.__index = self
    return table
end


function Inimigo:levaDano(dano)
	self.vida = math.floor(self.vida - (dano / (1 + self.defesa / 100)))
	if self.vida <= 0 then
		self.vida = 0
		self.status = 'Morto'
	end

end

esqueleto = Inimigo:new("Esqueleto", vida, vida_max, ataque, defesa, status)
mumia = Inimigo:new("MÃºmia", 225, 225, 125, 125, status)
aranha_gigante = Inimigo:new("Aranha Gigante", 300, 300, 150, 150, status)
