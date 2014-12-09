#encoding: utf-8

=begin

fonction NbreLE(X: chaîne) → Entier >= 0
  // NbreLE(X) désigne le nombre de LE contenus dans la chaîne X
  
  Lexique de NbreLE
    X : Chaîne de caractères // paramètre fonctionnel, séquence étudiée
    
  Algorithme de NbreLE
    Selon
      longueur(X) < 2 : renvoyer(0)
      longueur(X) > 2 : Si Nème(X, longueur(X)) = 'E' et Nème(X, longueur(X)-1) = 'L'
                        Alors renvoyer(NbreLE(SousChaine(X, 1, longueur(X)-1))+1)
                        Sinon renvoyer(NbreLE(SousChaine(X, 1, longueur(X)-1)))
                        fSi
    fSelon
  
=end

# Ruby

a = "LEGROSBLEUESTMORLU"

def nbreLE(x)
  if x.length < 2
    return 0
  else
    if x[-1] == "E" && x[-2] == "L"
      return nbreLE(x[0..x.length-2])+1
    else
      return nbreLE(x[0..x.length-2])
    end
  end
end

puts nbreLE(a)
