# Objetos
#
# instancia_objeto = Nombre_Clase.new
#### Array.new es equivalente a: instancia_objeto = []
#### Hash.new es equivalente a: instancia_objeto = {}
####### para saber de que clase es un objeto se hace: instancia_objeto.class
####### para saber el id de un objeto se hace: instancia_objeto.object_id

class Lego
end

legos = []
5.times do
	legos << Lego.new
end
print legos

lego1 = Lego.new
puts lego1.object_id


class Zombie
	def saludar()
		puts 'Braaaaains'
	end
end

z = Zombie.new
z.saludar

# los metodos de acceso, crean metodos para las variables de instancia automaticamente
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

p1 = Persona.new
p1.bautizar('Pepe')
p2 = Persona.new(5)
p2.bautizar('Pepa')
p1.saludar
p2.saludar
p1.envejecer
p1.saludar
p2.edad=2
p2.nombre='Pepa Pig'
puts p2.edad, p2.nombre

# Para imprimirlo en pantalla
puts p2

class Complejo
	attr_accessor :entero, :imaginario
	def initialize(entero = 0, imaginario = 0)
		@entero = entero
		@imaginario = imaginario
	end

	def +(imag) #Suma mutable, modifica al objeto original
		@entero += imag.entero
		@imaginario += imag.imaginario
	end

	def *(imag) #Suma inmutable, NO modifica al objeto original
		imagTemp = Complejo.new
		imagTemp.entero = @entero + imag.entero
		imagTemp.imaginario = @imaginario + imag.imaginario
		return imagTemp
	end

	def to_s
		print("#{@entero} + #{@imaginario}i")
	end
end

z1 = Complejo.new(2, 4)
print z1
z2 = Complejo.new(3, 3)
print z2
z1+z2
print z1, z2
z3 = Complejo.new
z3 = z1*z2
print z1, z2, z3

class Objeto2
	def self.metodo_de_clase #Me sirven para separar logica del objeto (carga, suma, impresion, etc) a la del negocio o funcional (cuando se quiere usar el objeto)
		print 'Soy un metodo de clase'
	end
end

print Objeto2.metodo_de_clase

class Hijo < Persona
	def bautizar(nuevo_nombre)
		#@nombre = nuevo_nombre + ' PersonaSon'
		@nombre = super + ' PersonaSon' #super llama el metodo del padre
	end
end

h1 = Hijo.new
h1.bautizar('Pipe')
print h1

print Hijo.ancestors
puts h1.is_a? Hijo
puts h1.is_a? Persona
puts h1.is_a? Float






