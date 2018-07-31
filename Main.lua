-- coding: utf-8
local jogador = require("Classes/jogador")
local inimigo = require("Classes/inimigo")
--local personagem
-- Funções
local clock = os.clock

os.getenv('OS')

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
	os.execute("cls" or "clear")
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
		-- Até o usuário confirmar os valores
		while true do

			-- Nome
			print("+----------------------------------+")
			print("|    Criar de Personagem - Nome    |")
			print("V----------------------------------V")
			io.write("| ?: ")
			nome = io.read()

			-- Limpa tela
			limparTela()

			-- Classe
			print("+----------------------------------+")
			print("|   Criar de Personagem - Classes  |")
			print("V----------------------------------V")
			print("| 1 - Espadachim                   |")
			print("| 2 - Mago                         |")
			print("| 3 - Arqueiro                     |")
			print("| 4 - Tanker                       |")
			print("^----------------//----------------^")
			io.write("| ?: ")
			classe = io.read()
			while classe ~= "1" and classe ~= "2" and classe ~= "3" and classe ~= "4" do
				print("\nOpção inválida!!")
				io.write("| ?: ")
				classe = io.read()
			end
			if classe == "1" then
				classe = "Espadachim"
			elseif classe == "2" then
				classe = "Mago"
			elseif classe == "3" then
				classe = "Arqueiro"
			elseif classe == "4" then
				classe = "Tanker"
			end

			-- Limpa tela
			limparTela()
			print("Nome   : ".. nome)
			print("Classe : ".. classe)
			io.write("Certo?(s/n): ")
			resposta = string.lower(io.read())
			while resposta ~= "s" and resposta ~= "n" do
				print("\nOpção inválida!!")
				print("Nome   : ".. nome)
				print("Classe : ".. classe)
				io.write("Certo?(s/n): ")
				resposta = string.lower(io.read())
			end

			if resposta == "s" then
				break
			end
			
			-- Limpa tela
			limparTela()

		end

		-- Cria literalmente
		if classe == "Espadachim" then
			jogador = espadachim:new(nome)
		elseif classe == "Mago" then
			jogador = mago:new(nome)
		elseif classe == "Arqueiro" then
			jogador = arqueiro:new(nome)
		elseif classe == "Tanker" then
			jogador = tanker:new(nome)
		end
		
		print("Criado com sucesso.")

	end
end

io.write("Pressione Enter para sair.")
io.read()