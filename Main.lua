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
-- Criação de Personagem
	if escolhaMenu == "1" then
		print("+----------------------------------+")
		print("|        Criar de Personagem       |")
		print("V----------------------------------V")
		print("1 - Espadachim | 2 - Mago | 3 - Arqueiro | 4 - Tanker")
		print("Para escolher a classe digite apenas o numero.")
		io.write("Nome: ")
		a = io.read()
		io.write("Classe: ")
		b = io.read()
		if b == "1" then
			b = "Espadachim"
		elseif b == "2" then
			b = "Mago"
		elseif b == "3" then
			b = "Arqueiro"
		elseif b == "4" then
			b = "Tanker"
		end
		Player = jogador:new(a, b)
		limparTela()
		print("Criado com sucesso.")
		print("Nome: " .. jogador.nome .. "\nClasse: " .. jogador.classe)
		io.read()
	end
end

io.write("Pressione Enter para sair.")
io.read()