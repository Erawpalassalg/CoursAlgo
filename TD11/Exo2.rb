#encoding: utf-8

=begin

fonction EstPalindrome(X:chaîne) → booléen
  //EstPalindrome(X) désigne vrai si la chaine X est un palindrome
  
  Lexique de EstPalindrome
    X : Chaîne de caractères // paramètre fonctionnel, séquence étudiée
    
  Algorithme de EstPalindrome
    Selon X
      longueur(X) <= 1 : renvoyer vrai
      (Nème(X, 1) != Nème(X, longueur(X))) : renvoyer faux
      Autrement : EstPalindrome(SousChaine(X, 2, longueur(X)-2))
    fSelon
  
=end

# Ruby

a = "laval"

def estPalindrome(x)
  if x.length <= 1
    return true
  elsif x[0] != x[x.length-1]
    return false
  else estPalindrome(x[1..x.length-2])
  end
end

puts estPalindrome(a) ? "oui" : "non"
