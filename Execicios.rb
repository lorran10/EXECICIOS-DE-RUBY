#1) Crie um script em Ruby que leia três valores, 'a', 'b' e 'c' e diga se estesvalores 
#podem ser os lados de um triângulo. Para um triângulo ser formado,
#a soma de dois lados deve 
#ser maior do que o terceiro lado: a + b > c e a + c > b e b + c > a.
'''
puts"Digite um valor para A:"
A = gets.chomp.to_i
puts"Digite um valor para B:"
B = gets.chomp.to_i
puts"Digite um valor para C:"
C = gets.chomp.to_i

if  A + B > C && A + C > B && B + C > A
  puts "E um triagulo"
else 
  puts "Não e um triangulo"
end
'''
#2) Modifique a questão anterior para contemplar o seguinte: quando os lados do
#triângulo forem válidos, o algoritmo deve informar qual é o tipo de triângulo 
#formado pelos lados. O triângulo equilátero é formado quando os três lados são iguais.
#O triângulo isósceles é formado quando dois lados quaisquer são iguais, e o triângulo escaleno
 # é formado quando os três lados são diferentes entre si.
'''
puts"Digite um valor para A:"
A = gets.chomp.to_i
puts"Digite um valor para B:"
B = gets.chomp.to_i
puts"Digite um valor para C:"
C = gets.chomp.to_i

if A == B && C == B && C == A
  puts "Triangulo equilátero"
else if  A == B || C == B || C == A
  puts "Triangulo isósceles "
else 
  puts "Triângulo escaleno"
end
'''
  #3)Crie um script em Ruby que permita ao usuário digitar um ano. Em seguida, 
#o script deve informar se o ano (informado pelo usuário) é ou não bissexto. 
#Dica: um ano é bissexto se ele for divisível por 400, ou se ele for divisível por 4 e não por 100.  
'''
puts "DIGITE UM ANO QUALQUER"
ano  = gets.chomp.to_i

if ano % 100 != 0 and ano % 4 == 0 or ano % 400 == 0 
  puts"E um ano bissexto"
else  
  puts"Não e bissexto"
end
'''
#4)  "Um elefante incomoda muita gente..." Escreva um programa que imprima a letra
#para o clássico das viagens de carro, com um limite de 100 elefantes.
'''
   comando = 1.0
comando = comando.to_i
puts '' + comando.to_s + " elefante incomoda muito a gente"
while comando != 100.0
comando = comando + 1.0
comando2 = comando / 2.0
if comando2 != comando2.to_i
comando = comando.to_i
puts '' + comando.to_s + " elefantes encomodam muito mais"
else
comando = comando.to_i
puts '' + comando.to_s + " elefantes encomodam muito a gente"
end
end
'''
#5) Escreva um programa Velha Surda. O que quer que você diga à velha 
#(o que quer que você digite), ela tem que responder com QUE?! FALA MAIS ALTO!, 
#a não ser que você grite (digite tudo em maiúsculas). Se você gritar, 
#ela pode lhe ouvir (ou ao menos pensa que pode), e sempre responde
#NÃO, NÃO DESDE 1938! Para fazer seu programa ser realmente verossímil,
#faça a velha gritar um número diferente a cada vez; talvez qualquer ano aleatório entre 1930 e 1950
'''
puts "Olá meu filho"

resposta = gets.chomp

while resposta != resposta.upcase
	puts "O QUE? FALA MAIS ALTO!"
	resposta = gets.chomp
end

ano = rand(1938..1950)

if resposta == resposta.upcase
	puts "NÃO, NÃO DESDE #{ano}"
end
'''
#6) Escreva um programa que leia um número inteiro que corresponde 
#a um ângulo e informe em qual quadrante este ângulo se encontra.
'''
print "Digite um ângulo: "
angulo = gets.to_i % 360
quadrante = 
  if    angulo <  90 then 
    puts "primeiro" 
  elsif angulo < 180 then 
    puts"segundo"
  elsif angulo < 270 then 
    puts"terceiro"
  else  
    puts "quarto" 
  
  end

puts "O ângulo #{angulo} fica no #{quadrante} quadrante."

'''
#7)Escreva a uma classe Imc que implemente o método calcular que calcula o imc de cada paciente e imprime o resultado.
#Nota: Formula do IMC: Peso / (Altura metros * Altura metros)
'''
class Imc
  def self.calcular(peso, altura, nome)
    imc = peso / (altura * altura)
    if imc > 30
      puts "#{nome} está obeso(a)"
    elsif imc > 25
      puts "#{nome} está acima do peso(a)"
    elsif imc > 18.5 and imc < 24.99
      puts "#{nome} está normal"
    elsif imc < 18.5
      puts "#{nome} está abaixo do peso"
    else
      puts "Algo está errado"
    end
  end
end

Imc.calcular(200.2, 1.75, "Mario")
Imc.calcular(65.6, 1.65, "Roberta")
Imc.calcular(79.7, 1.77, "Pedro")
Imc.calcular(35.3, 1.60, "Ana")

'''
#8) Escreva uma classe BicicletaEletrica que extende Bicicleta, sobrescrevendo
#o método motorizada para retornar true, de forma que o código abaixo funcine
#com a nova classe BicicletaEletrica. 
'''
class Bicicleta
  def rodas
    2
  end

  def motorizada
    false
  end
end

class BicicletaEletrica < Bicicleta
  def motorizada
    true
  end
end

minha_bike_normal = Bicicleta.new
minha_bike_normal.rodas 
minha_bike_normal.motorizada 

minha_bike = BicicletaEletrica.new
minha_bike.rodas 
minha_bike.motorizada 

'''
#9) Crie um script em Ruby que leia um número inteiro repetidas vezes. 
#A repetição deve terminar quando o usuário digitar um número múltiplo de 5.
'''
    condicao = true
while condicao
  puts "Digite um número múltiplo de 5: "
  numero = gets.chomp.to_i
  if numero % 5 == 0
    condicao = false
  end
end
puts "#{numero} é múltiplo de 5!"
'''
#10) Crie um script em Ruby que permita que o usuário digite uma nota de 
#0 a 100 (número inteiro) e calcule o conceito relativo à nota. 
#Se a nota for entre 0 e 20, o conceito é "E"; entre 21 e 40, conceito "D"; 
  #entre 41 e 60, conceito "C"; entre 61 e 80, conceito "B"; entre 81 e 100, conceito "A".

'''
puts "Digite uma nota de 0 a 100:"
nota = gets.chomp.to_i

if nota < 0 or nota > 100
  puts "Nota inválida! Digite uma nota entre 0 e 100!"
else
  if nota <= 20
    puts "Conceito E"
  else
    if nota <= 40
      puts "Conceito D"
    else
      if nota <= 60
        puts "Conceito C"
      else
        if nota <= 80
          puts "Conceito B"
        else
          puts "Conceito A"
        end
      end
    end
  end
end


'''
#11)Brincadeira do ímpar ou par: escreva um programa que leia dois 
#nomes e dois valores inteiros, que correspondem ao 
#que cada um colocou, e informe quem ganhou o “ímpar ou par”.
'''
print "Digite os nome jogador par: "
jogador_par = gets.chomp

print "Digite os nome jogador ímpar: "
jogador_impar = gets.chomp

print "Digite o número de #{jogador_par}: "
n1 = gets.to_i

print "Digite o número de #{jogador_impar}: "
n2 = gets.to_i

resultado = if (n1+n2)%2==0 then "Par" else "Ímpar" end

vencedor = if resultado=="Par" then jogador_par else jogador_impar end 
puts "#{resultado}, o vencedor foi #{vencedor}."
'''

#12) Escreva um programa que leia dois nomes e informe se os mesmos 
#são iguais. Além de informar se os nomes são iguais ele deve 
#informar se há diferenças na digitação de letras maiúsculas/ minúsculas.
'''
puts "Digite dois nomes"
nome1 = gets.chomp
nome2 = gets.chomp

resposta = 
  if nome1==nome2 then
    "iguais"
  elsif nome1.upcase==nome2.upcase then
    "iguais mas há diferenças de digitação"
  else
    "diferentes"
  end
puts "Os nomes são #{resposta}."
    '''