arch = File.open("file.txt", "r") 
content = arch.read.split("\n")
print content
print content.length
arch.close

arch2 = File.open("file.txt", "r") 
content2 = arch2.readlines
print content2
print content2.count
arch2.close

suma = 0
content2.each do |linea|
	suma += linea.split(' ')[1].to_i
end
puts suma, suma/content2.count

suma2 = content2.inject(0) do | acum, linea |
	acum + linea.split(' ')[1].to_i
end
puts suma2, suma2/content2.count

arch3 = File.open("palabras.txt", "r") 
datos = arch3.readlines
datos2 = datos.map do | word | 
	word.chomp 
end
arch3.close
print datos
print datos2

arch4 = File.open("multilinea.txt", "r")
catalogo = arch4.readlines
arch4.close
catalogo.each_slice(5) do |slice|
	puts slice[3]
end

# Operador Splat *
def parse_campos(campo1, campo2, campo3, campo4, campo5)
	puts campo3, campo4
end

arch5 = File.open("multilinea.txt", "r")
catalogo2 = arch5.readlines
arch5.close
catalogo2.each_slice(5) do |slice|
	puts parse_campos(*slice)
end

def parse_campos2(campo1, campo2, campo3, campo4, campo5)
	puts campo1 
	votos = campo5.split(', ').map do |voto|
		voto.chomp
	end
	print "Votos buenos: #{votos.count('good')}, Votos Malos: #{votos.count('bad')}"
end

arch6 = File.open("multilinea.txt", "r")
catalogo3 = arch6.readlines
arch6.close
arrayvotos = []
catalogo3.each_slice(5) do |slice|
	puts parse_campos2(*slice)
	arrayvotos.push(slice[4].split(', ').map(&:chomp))
end
print arrayvotos.map { |a| a.count('good')}

arch7 = File.open("blog.txt", "w")
arch7.puts('Mi Blog lindo')
arch7.close

file_name = 'inventario.txt'
data=[]
File.open(file_name, "r") { |file|  
		data=file.readlines.map { |w| w.chomp.split(', ') }
}



