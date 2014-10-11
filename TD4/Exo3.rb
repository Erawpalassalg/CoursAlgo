#encoding: utf-8

#a
=begin
  Lexique
    a : Entier // Donnée initiale
    c : Entier // Donnée initiale
    b : Entier // Donnée initiale
    x : Entier // intermédiaire
    
  Algorithme
      //a = a0, b = b0, c = c0, x=?
     x ← a ; a ← b ; b ← c ; c ← x
      //a = b0, b = c0, c = a0, x = a0 
=end

# Ruby

puts "Entrez trois valeurs"
a, b, c = gets.chomp, gets.chomp, gets.chomp

x, a, b = a, b, c
c = x

puts a, b, c

#b
=begin
  action décalageCirculaire(consulté a : Entier, consulté b : Entier, consulté c : Entier, élaboré x : entier)
    // décale les valeurs de trois variables vers la gauche
    // EI : a = a0, b = b0, c = c0, x=?
    // EF : a = b0, b = c0, c = a0, x = a0 
  Lexique de décalageCirculaire
    a : Entier // paramètre
    b : Entier // paramètre
    c : Entier // paramètre
    x : Entier // intermédiaire
      
  Algorithme de déclageCirculaire
    x ← a ; a ← b ; b ← c ; c ← x
=end

# Ruby

def decalageCirculaire(a, b, c)
  x, a, b = a, b, c
  c = x
  return a, b, c
end