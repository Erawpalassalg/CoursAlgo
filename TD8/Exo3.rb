#encoding: utf-8

=begin

  Lexique
    t : tableau d'Entiers sur [1..LMAX]// Donnée initiale
    L : Entier // Longueur de la séquence d'Entiers sur t
    y : Entier // Intermédiaire
    z : Entier // Intermédiaire
    i : Entier >= 0 // Numéro de l'élément courant sur t
    
  Algorithme
    i ← 1
    z ← t[i]
    t[i] ← t[L]
    
    Tantque i < L faire
      i ← i + 1
      y ← t[i]
      t[i] ← z
      z ← y
    fTantque
    
    
=end

#Ruby

t = [1, 2, 3, 4, 5, 6, 7, 8, 9]

puts t

i = 0
z = t[i]
t[i] = t[-1]

while i < (t.length-1)
  i += 1
  y = t[i]
  t[i] = z
  z = y
end

puts t