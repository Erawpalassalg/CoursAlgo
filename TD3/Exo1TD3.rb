#encoding: utf-8

=begin
  fonction estVoyelle(x:caractère) -> booléen
    //Renvoie vrai si le caractère x est une voyelle (a, e, i, o, u , y) sinon renvoie faux
    Lexique de estVoyelle
      Données
        x : Caractère // paramètre
      Périphériques
        cl : clavier // périphérique d'entrée
        e : écran // périphérique de sortie    
        
    Algorithme de estBissextile
        si x = 'a' ou x = 'e' ou x ='i' ou x = 'o' ou x = 'u' ou x = 'y'
        Alors Renvoyer(vrai)
        fsi
=end

#Ruby

def estVoyelle(x)
  if x == "a" or x =="e" or x == "i" or x == "o" or x == "u" or x == "y"
    return true
   else
     return false
  end
end
a = %w(a b o i k)
a.each do |i|
  puts estVoyelle(i)
end
