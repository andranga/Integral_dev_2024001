
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
