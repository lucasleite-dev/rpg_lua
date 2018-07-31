-- coding: utf-8
local jogador = require("Classes/jogador")
local inimigo = require("Classes/inimigo")
--local personagem
-- Funções
local clock = os.clock

function sleep(n)  -- seconds
  local t0 = clock()
  while clock() - t0 <= n do end
end

function loading(mensagem, tempo)
	c = 0
	while c < len(mensagem) do
		if mensagem[c] ~= '.' then
			print(mensagem[c] .. sleep(1))
			
		end
	end
end

function limparTela()
	os.execute("cls")

end

game = 1

-- Tela inicial
print("+----------------------------------+")
print("|       Dungeons of Ragnarok       |")
print("^----------------//----------------^")
print("+----------------------------------+")
print("|         Pressione Enter          |")
print("^----------------//----------------^")
io.read()
limparTela()

while game == 1 do
    print("+----------------------------------+")
    print("|               Menu               |")
    print("V----------------------------------V")
    print("| 1 - Criar personagem             |")
    print("| 2 - Selecionar personagem        |")
    print("| 3 - Sair                         |")
	print("^----------------//----------------^")
	io.write("| ?: ")
	escolhaMenu = io.read()
	limparTela()
	-- Criação de Personagem
	if escolhaMenu == "1" then
		print("+----------------------------------+")
        print("|        Criar de Personagem       |")
		print("V----------------------------------V")
		print("1 - Espadachim | 2 - Mago | 3 - Arqueiro | 4 - Tanker")
		print("Digite o nome e depois a classe.")
		local Player = jogador:new(io.read(), io.read())
		print("Criado com sucesso.")
		print("Nome: " .. jogador.nome .. "\nClasse: " .. jogador.classe)
		io.read()
	end
end