puts 2 + 4 / 2
puts (2 + 4) / 2

a = 5

puts ':)' if a == 5
puts ':(' unless a == 6

puts 'Ingresa un número:'
b = gets.chomp.to_i
puts 'Ingresa otro número:'
c = gets.chomp.to_i

if b > c 
	puts 'B es mayor que C' 
elsif c > b
	puts 'C es igual a B'
else
	puts 'B y C son iguales'
end

puts 'Ingresa tu password (Secreto):'
pass = gets.chomp

while pass != 'Secreto' 
	puts 'Ingresa tu password:'
	pass = gets.chomp
end

numero=-1
puts 'Ingresa un entero positivo chico:' 
numero=gets.chomp.to_i while numero<0 || numero>30

10.times do |i|
	puts "Learning Ruby #{i+1} time... Yeah!!!" if i == 0 
	puts "Learning Ruby #{i+1} times... Yeah!!!" if i != 0
end

for i in 0..10
	puts i
end

(10..20).each do |i|
	puts i
end

(0..21).each do |i|
	puts i+1 if (21 % (i+1)).zero?
end

def incrementar(num, inc=1)
	puts num + inc
end

puts incrementar(3)
puts incrementar(3, 2)

def sumapares(n)
	suma=0
	(0..n).each do |i|
		suma += n if i.even?
	end
	return suma
end

def sumaimpares(n)
	suma=0
	(0..n).each do |i|
		suma += n if i.odd?
	end
	return suma
end

puts sumapares(12)
puts sumaimpares(12)

def esporcentaje?(num)
	if num >= 0 && num <= 100
		true
	elsif num < 0 || num > 100	
		false
	end 
end

puts esporcentaje?(25)
puts esporcentaje?(125)
puts esporcentaje?(-125)

require_relative 'rubySyntax2'

puts suma(2, 3)

arreglo = [1, 3, 4, 5, 'Hola', 10]

def chek_if_exist?(array, elem_buscado)
	array.each do |i|
		return true if i == elem_buscado
	end
	false 
end

puts chek_if_exist?(arreglo, 5)
puts chek_if_exist?(arreglo, 9)
puts chek_if_exist?(arreglo, 'Hola')
puts arreglo.include?('Hola')


def array_position_if_exist?(array, elem_buscado)
	array.each_with_index do |val, i|
		if val == elem_buscado
			puts "El valor buscado #{elem_buscado} se encontó en la posición #{i}"
			return true
		end
	end
	puts "El valor buscado #{elem_buscado} NO se encontó"
	false
end

puts array_position_if_exist?(arreglo, 5)
puts array_position_if_exist?(arreglo, 9)
puts array_position_if_exist?(arreglo, 'Hola')

print arreglo
print arreglo + ['Nuevo']

array_entero=[1, 7, 1, 7]

def promedio(array)
	suma = 0
	array.each do |val|
		suma += val
	end
	puts suma / array.count.to_f
end

promedio(array_entero)

puts 'Ingrese nuevo elemento del arreglo entero'
new = gets.chomp
array_entero.push(new)
print array_entero

productos = ['prod1', 'prod2', 'prod3', 'prod4']
precios = [1000, 2000, 3000, 4000]

puts 'Ingrese producto a consultar (prodx):'
prod = gets.chomp
indice = productos.index(prod)
puts "El precio de #{prod} es: #{precios[indice]}"

productos_hash = {'prod1'=>1000, 'prod2'=>2000, 'prod3'=>3000, 'prod4'=>4000}
puts 'Ingrese nuevo producto a consultar (prodx):'
prod = gets.chomp
puts "El precio de #{prod} es: #{productos_hash[prod].to_s}"

colors = {:red=>'ff0000', :green=>'00ff00', :blue=>'0000ff'}
colors2 = {red: 'ff0000', green: '00ff00', blue: '0000ff'}

print colors
print colors2

colors.each do |key, value|
	puts "#{key} tiene valor en hexa #{value}"
end

hash = {}
puts hash
hash[:ele1]=1
puts hash
hash[:ele2]=2
puts hash
hash[:ele2]=3
puts hash
hash.delete(:ele2)
puts hash

colors3 = colors2.clone
colors4 = colors2
puts colors2
puts colors3
puts colors4

colors3[:green]='verde'
colors4[:blue]='azul'
puts colors2
puts colors3
puts colors4




