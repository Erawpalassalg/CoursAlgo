#encoding: utf-8

=begin

fonction Puissance(x, p : Entier) → Entier
  // La fonction puissance(x,p) renvoie l'entier représentant le nombre x à la pussance p
  
  Lexique de Puissance
    x, p : Entier // paramètres fonctionnels, le nombre renvoyé représente x à la puissance p
    
  Algorithme de Puissance
    Selon
      p = 1 : renvoyer(x)
      p != 1 : renvoyer(Puissance(x, p-1)*x)
    fSelon
  
=end

# Ruby

a = 4
b = 4
def puissance(x, p)
  if p == 1
    return x
  else
    return puissance(x, p-1)*x
  end
end

puts puissance(a, b)
