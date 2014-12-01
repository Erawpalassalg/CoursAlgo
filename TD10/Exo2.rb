#encoding: utf-8

=begin

  Lexique
    T : Tableau d'Entiers sur [1..LMAX], 0 <= L <= Lmax // Donnée initiale
    L : Entier // Longueur de la séquence s sur T
    prec : Entier // Entier précédent le dernier élément de la séquence étudiée
    i : Entier >= 0 // Index de l'élément en cours de traitement
    j : Entier >= 0 // Index du dernier élément de la séquence comparé à l'élément courant
    k : Entier >= 0 // Index du dernier élément ( ... )
    
  Algorithme
    i ← 1
    j ← 2
    k ← 2
    
    Tantque i <= L faire
      Tanque  j <= L faire
        Si T[i] = T[j]
        Alors Tantque k <= L - 1
                T[k] ← t [k + 1]
                k ← k + 1
              fTantque
              L ← L - 1
        fSi
        j ← j + 1
        k ← j
      fTantque
      i ← i + 1
      j ← i + 1
      k ← j
    fTantque
  
=end

# Ruby
t = [1,12, 15, 95, 56, 2,65, 95, 3, 4, 4, 5, 6, 8, 12, 42, 8]
i = 0
j = 1
k = j
l = t.length

while i <= l
  while j <= l
    if t[i] == t[j]
      while k <= l -1
        t[k] = t[k+1]
        k += 1
      end
      l -= 1
    end
    j += 1
    k = j
  end
 i += 1
 j = i + 1
 k = j
end
puts "Non ordonnée : "
t.each_with_index {|x,y| puts x unless y > l }


=begin

  Version triée

  Lexique
    T : Tableau d'Entiers sur [1..LMAX], 0 <= L <= Lmax // Donnée initiale
    L : Entier // Longueur de la séquence s sur T
    prec : Entier // Entier précédent le dernier élément de la séquence étudiée
    i : Entier >= 0 // Index de l'élément en cours de traitement
    prec : Entier // Index de l'avant dernier élément de la séquence étudiée, comparé à l'élément courant
    k : Entier >= 0 // Index du premier élément différent de prec
    
  Algorithme
    prec ← 1
    i ← 2
    k ← i
    
    Tantque i <= L faire
        Si T[i] = T[prec]
        Alors Tantque k <= L - 1
                T[k] ← t [k + 1]
                k ← k + 1
              fTantque
              L ← L - 1
              i ← i - 1
        fSi
      fTantque
      i ← i + 1
      prec ← i - 1
      k ← i
    fTantque
  
=end

# Ruby
t = [1,12, 15, 95, 56, 2,65, 95, 3, 4, 4, 5, 6, 8, 12, 42, 8, 2, 1, 1, 1].sort
i = 1
prec = 0
k = i
l = t.length

while i <= l
  if t[i] == t[prec]
    while k <= l -1
      t[k] = t[k+1]
      k += 1
    end
    l -= 1
    i -= 1
  end
 i += 1
 prec = i - 1
 k = i
end

puts "Ordonnée : "
t.each_with_index {|x,y| puts x unless y > l }
