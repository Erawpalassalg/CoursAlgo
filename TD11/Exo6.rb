#encoding: utf-8

=begin

fonction Minimum(T : Tableau d'Entiers sur [0..Nmax-1], N : Entier) → Entier
  //Minimum(T, N) renvoie la valeur minimum contenu sur le tableau d'Entiers T, dans l'intervale [0..N]
  
  Lexique de Minimum
    T: Tableau d'Entiers sur [0..Nmax] // Paramètre fonctionnel
    N: Entier // paramètre fonctionnem, borne sur T
    
  Algorithme de Minimum
    Selon T, N
      N = 1 : renvoyer(T[0])
      N != 1 : Si T[N-1] < Minimum(T, N-1)
               Alors renvoyer(T[N-1])
               Sinon renvoyer(Minimum(T, N-1))
    fSelon
=end

#Ruby

t = [1, 2, 3, 4, 6, 12]

def minimum(t)
  if t.length == 1
    return t[0]
  else
    if t[t.length-1] < minimum(t[0..-2])
      return t[-1]
    else return minimum(t[0..-2])
    end
  end
end

puts minimum(t)
