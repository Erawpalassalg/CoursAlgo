#encoding: utf-8

=begin
  Algo
  
  non A
    |A-1|
  
  A et B
    |A*B|
    
  A ou B
    Exclusif
      |A-B|
    Inclusif
      |A-B| + A*B
=end

a = [0, 1]                                                  # On met les valeurs dans des Arrays, principalement pour pouvor itérer dessus
b = [1, 0]


puts "Non A :"
a.each do |i|                                               # Itération sur l'array, afin de faire l'opération sur les deux valeurs
  r = (i - 1).abs                                           # Définition de l'opération. La méthode ".abs" permet de récupérer la valeur absolue d'un nombre
  puts "pour A = #{i}, nonA = #{r}"                         # Expression en langage humain des résultats en fonction des valeurs
end

puts "A et B :"
a.each do |i|
  b.each do |ii|                                            #Itération dans l'itération. L'opération se fera donc deux fois ( une fois pour chaque valeur de b ) pour chaque valeur de a
    r = (i*ii).abs
    puts "Pour A = #{i} et B = #{ii}, A et B = #{r}"
  end
end

puts "A ou B -- exclusif :"
a.each do |i|
  b.each do |ii|
    r = (i-ii).abs
    puts "Pour A = #{i} et B= #{ii}, A ou B = #{r}"
  end
end

puts "A ou B -- inclusif :"
a.each do |i|
  b.each do |ii|
    r = (i-ii).abs + (i*ii)
    puts "Pour A = #{i} et B= #{ii}, A ou B = #{r}"
  end
end