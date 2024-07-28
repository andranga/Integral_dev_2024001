module Modulin
	class Persona
		attr_accessor :edad, :nombre
		def initialize(edad = 0)
			@edad = edad
		end

		def bautizar(nuevo_nombre)
			@nombre = nuevo_nombre
		end

		def saludar
			puts "Hola, soy una persona llamada #{@nombre} y tengo #{@edad} años."
		end

		def envejecer
			@edad += 1
		end

		def to_s
			"#{@nombre}, #{@edad}"
		end
	end 
end

p1 = Modulin::Persona.new
p1.bautizar('Florin')
print p1

##############

module Nadador
	def nadar
		puts "Soy un #{self.class} y estoy nadando"
	end
end

class Animal
end

class Pez < Animal
	include Nadador #Mixin en modulo Nadador
end

class Mamifero < Animal
end

class Perro < Mamifero
	include Nadador #Mixin en modulo Nadador
end

class Gato < Mamifero
end

pluto = Perro.new
nemo = Pez.new
felix = Gato.new

puts pluto.nadar
puts nemo.nadar
#puts felix.nadar #Si se descomenta da error de metodo indefinido pues gatos no saben nadar





