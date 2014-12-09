#encoding: utf-8

=begin

fonction PGCD( a,b : Entiers) → Entier
  // PGCD(a,b) retourne le plus grand diviseur commun des nombres a et b
  
  Lexique PGCD
    a,b : Entier // paramètres formels, nombres dont la fonction retourne le plus grand diviseur commun
    
  Algorithme PGCD
    r = a mod b
    Selon r
      r = 0 : retourner(b)
      r != 0 : retourner(PGCD(b, r))
    fSelon
      
=end

# Ruby

a = 12
b = 15

def pgcd(a, b)
  r = a%b
  r == 0 ? b : pgcd(b, r)
end

puts pgcd(a, b)
