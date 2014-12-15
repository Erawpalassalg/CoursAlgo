#encoding: utf-8

=begin

fonction EstPalindrome(X:chaîne) → booléen
  //EstPalindrome(X) désigne vrai si la chaine X est un palindrome
  
  Lexique de EstPalindrome
    X : Chaîne de caractères // paramètre fonctionnel, séquence étudiée
    
  Algorithme de EstPalindrome
    renvoyer ((longueur(X) < 2) oualors ((pre(X) = (der(X)) etpuis Palindrome(deb(fin(X))))))
  
=end

# Ruby

a = "laval"

def estPalindrome(x)
  puts x.length < 2 || (x[0] == x[-1] && estPalindrome(x[1..-2]))
  return x.length < 2 || (x[0] == x[-1] && estPalindrome(x[1..-2]))
  
end

puts estPalindrome(a) ? "oui" : "non"
