#Suma de dos matrices cuadradas A y B dadas

a = [[3, 0, 2], [5, 1, 6], [4, 3, 1]]     #matriz a
b = [[1, 4, 2], [4, 3, 3], [1, 3, 6]]     #matriz b
c = Array.new(3, Array.new(3,0))			   #matriz de filas c
puts c
d = Array.new(3, Array.new(3,0))
m, n = a.size, a[1].size                  #m son las filas y n las columnas


# for i in 0...m do                         #iterador sobre m filas
#    c[i] = Array.new                       #la 2da dimension (columnas) de c
#    d[i] = Array.new
#    for j in 0...n do                      #iterador sobre columnas
#       c[i][j] = 0                         #se inicializan en 0
#       d[i][j] = 0
#    end
# end




for i in 0...m do                         #iteramos de nuevo sobre las filas
   for j in 0...n do                      #por cada fila, se iteran columnas
      for k in 0...m do                      #por cada fila, se iteran columnas
        d[i][j] += (a[i][k] * b[k][j])
	c[i][j] = a[i][j] + b[i][j]
      end
   end
end
       
puts "MATRIZ A"
a.each do |fila|                          #por cada fila
   puts fila.join(" ")             #imprime el resultado
end

puts"\n"

puts "MATRIZ B"
a.each do |fila|                          #por cada fila
   puts fila.join(" ")             #imprime el resultado
end



puts "SUMA DE MATRICES"
c.each do |fila|                          #por cada fila
   puts fila.join(" ")                    #imprime el resultado
end

puts "\n"

puts "PRODUCTOS DE MATRICES"

d.each do |fila|
  puts fila.join(" ")
end
