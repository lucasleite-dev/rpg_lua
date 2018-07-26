-- coding: utf-8
local personagem = require("Classes/jogador")
local Inimigo = require("Classes/inimigo")

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

game = true

-- Tela inicial
print("+----------------------------------+")
print("|             RPG-PY               |")
print("^----------------//----------------^")
print("+----------------------------------+")
print("|         Pressione Enter          |")
print("^----------------//----------------^")
io.read()
limparTela()

while game == true do
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
		io.write("Nome: ")
		local jogador = personagem_novo(io.read(), vida, vida_max, mana, mana_max, ataque, defesa, status)
		print("Criado com sucesso.")
		print("Nome: " .. jogador.nome)

	end
end