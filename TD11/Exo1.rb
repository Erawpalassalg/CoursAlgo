#encoding: utf-8

=begin

fonction ExisteCar(C : caractère, X: Chaîne) → booléen
  //ExisteCar(C,X) désigne vrai si le caractère C est présent dans la chaîne X
  
  Lexique de ExisteCar
    C : Caractère // paramètre fonctionnel, caractère recherché
    X : Chaîne de caractères // paramètre fonctionnel, chaîne étudiée à la recherche de C
    
  Algorithme de ExisteCar
    Selon C, X
      longueur(X) = 0 : renvoyer faux
      Longueur(X) != 0 : Si Nème(X, longueur(X)) = C
                         Alors renvoyer vrai
                         Sinon ExisteCar(C, SousChaine(X, 1, longueur(X)-1))
    fSelon
    
=end

# Ruby

x = "j'aime les carembars"
c = "a"
def existeCar(c, x)
  if (x.length == 1 && x != c)
    return false
  elsif x[x.length-1] == c
    return true
  else
    existeCar(c, x[0..x.length-2])
  end
end

existeCar(c, x) ? (puts "#{c} y est") : (puts "#{c} n'y est pas")


=begin

fonction ExisteCar(C : caractère, X: Tableau de caractères sur [1..NMAX], N: Entier) → booléen
  //ExisteCar(C,X) désigne vrai si le caractère C est présent dans le tableau de caractères X
  
  Lexique de ExisteCar
    C : Caractère // paramètre fonctionnel, caractère recherché
    X : tableau de caractères sur [1..NMAX] // paramètre fonctionnel, chaîne étudiée à la recherche de C
    N : Entier // Indice de fin de la séquence de caractères contenue sur X
    
  Algorithme de ExisteCar
    Selon C, X
      N = 0 : renvoyer faux
      N != 0 : Si X[N] = C
               Alors renvoyer vrai
               Sinon ExisteCar(C, X, N-1)
    fSelon
  
=end

x = %w(j ' a i m e l e s c a r e m b a r s)
c = "y"
def existeCar(c, x)
  if x.length == 1 && x[0] != c
    return false
  elsif x[-1] == c
    return true
  else
    existeCar(c, x[0..-2])
  end
end

existeCar(c, x) ? (puts "#{c} y est") : (puts "#{c} n'y est pas")