#encoding: utf-8

=begin

action EcrireChBinaire(Consulté X : entier >= 0, Modifié e : écran)
  // Effet : affiche sur l'écran la chaîne binaire représentant le nombre X, caractère par caractère.

  Lexique de ECB
    X : Entier >= 0 // paramètre
    e : écran // paramètre, périphérique de sortie
    
  Algorithme de ECB
    Si X > 1
    Alors ECB(X/2, e)
    fSi
    
    Selon X
      X mod 2 = 1 : afficherCar('1')
      X mod 2 = 0 : afficherCar('0')
    fSelon
    
    
=end

# Ruby

def ecb(x)
  if x > 1
    ecb(x/2)
  end
  x%2 == 1 ? (print "1") : (print "0")
end

ecb(126)
