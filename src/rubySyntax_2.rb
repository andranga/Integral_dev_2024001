
array = [1, 5, 6, 3, 2, 7, 4]

each = array.each do |item|
	item*2	
end
print each

map = array.map do |item|
	item*2	
end
print map 

selec = array.select do |item|
	item.even?	
end
print selec

rejec = array.reject do |item|
	item.even?	
end
print rejec

injec = array.inject(0) do |acumulador, item|
	acumulador+item
end
puts injec

group = array.group_by do |item|
	item.even?	
end
print group

group2 = array.group_by do |item|
	item	
end
print group2

order = array.sort_by do |item|
	item	
end
print order

nombres = ["Violeta", "Andino", "Clemente", "Javiera", "Paula", "Pia", "Ray"]

a= nombres.select {|a| a.length>5}
print 'Punto 1a', a

b= nombres.map {|a| a.downcase}
print 'Punto 1b', b

c= nombres.select {|a| a[0]=='P'}
print 'Punto 1c', c

d= nombres.map {|a| a.gsub(/[aeiouAEIOU]/, 'a'=>4, 'e'=>3, 'i'=>1, 'o'=>'0', 'u'=>'√', 'A'=>4, 'E'=>3, 'I'=>1, 'O'=>'0', 'U'=>'√')}
print 'Punto 1d', d


