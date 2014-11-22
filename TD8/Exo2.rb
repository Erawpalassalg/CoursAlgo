#encoding: utf-8

=begin

  fonction estPalindrome (Modifié t : Tableau de caractères, Consulté L : Entier) → booléen
  // Détermine si la phrase contenue dans le tableau de caractère t est ou non un palindrome et renvoie le booléen correspondant
  
  Lexique de estPalindrome
    t : talbeau de caractères sur [1..LMAX]// donnée initiale
    L : Entier > 0 // nombre de cases occupées par des caractères dans t
    i : Entier // position du curseur sur la première moitié de la chaîne, avance
    j : Entier // position de curseur sur la seconde moitié de la chaîne, recule
    pal : Booléen // valeur retournée, vrai si t contient un palindrome, faux sinon
    
  Algorithme de estPalindrome
  
    i ← 0
    j ← L
    pal ← faux
    
    Tantque (t[i]= t[j] oualors t[i] = ' ' oualors t[j] == ' ') et i < j
      Tantque t[i] = ' '
        i ← i + 1
      fTantque
      
     Tantque t[j] = ' '
       j ← j - 1
     fTantque
      
      Selon
        t[i] = t[j]  : pal ← vrai ; i ← i + 1 ; j ← j - 1
        t[i] != t[j] : pal ← faux
      fSelon
    fTantque
    
   Retourner pal
      
=end

# Ruby

def estPalindrome(t)
  i = 0
  j = t.length - 1
  pal = false
  
  while ( t[i] == t[j] || t[i] == ' ' || t[j] == ' ') && i < j
    while t[i] == ' '
       i += 1
    end
    while t[j] == ' '
      j -= 1
    end
    
    if t[i] == t[j]
      pal = true
      i += 1
      j -= 1
    else
      pal = false
    end
  end
  
  return pal
end

t = [" ", "k", "l", " ", " ", "m", "n", "l", " ", "k"]
puts estPalindrome(t)
