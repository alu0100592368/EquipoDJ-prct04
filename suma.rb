#Suma de dos matrices cuadradas A y B dadas

a = [[3, 0, 2], [5, 1, 6], [4, 3, 1]]		#matriz a

b = [[1, 4, 2], [4, 3, 3], [1, 3, 6]]		#matriz b

c = Array.new 										#matriz de filas c

m, n = a.size, a[1].size						#m son las filas y n las columnas

for i in 0...m do									#iterador sobre m filas
	c[i] = Array.new								#la 2da dimension (columnas) de c
	for j in 0...n do 							#iterador sobre columnas
		c[i][j] = 0									#se inicializan en 0
	end
end

for i in 0...m do 								#iteramos de nuevo sobre las filas
	for j in 0...n do 							#por cada fila, se iteran columnas
		c[i][j] = a[i][j] + b[i][j]			#se calcula la suma
	end
end

c.each do |fila|									#por cada fila
	puts fila.join(" ")							#imprime el resultado
end
