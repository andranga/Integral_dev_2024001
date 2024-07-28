producto = 'articulo2'
precio = '12000'

archivo = File.open("lista_precios.txt", "r")
dataFile = archivo.readlines
archivo.close

productos = []
lista = dataFile.map do |articulo|
	productos.push(articulo.split("\t").map(&:chomp))
end

hash = productos.to_h
puts hash

hash[producto]=precio
puts hash

archivoW = File.open("lista_precios.txt", "w")
hash.each do |articulo, precio|
	archivoW.puts "#{articulo}	#{precio}"
end
archivoW.close

if File.exist?("lista_precios.txt")
	archivoA = File.open("lista_precios.txt", "a")
	archivoA.puts "articulo6	6000"
	archivoA.close
end
