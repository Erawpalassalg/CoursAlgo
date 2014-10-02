#encoding: utf-8

=begin
  fonction estDuPremierGroupe(v:chaine) -> booléen
    //renvoie vrai si le verbe v est du premier groupe, sinon renvoie faux
    Lexique de estDuPremierGroupe
      Données
        v : Chaine // paramètre - verbe donné à analyser   
        
    Algorithme  
        si (SousChaine(vb, longueur(vb)-1, 2) = "er") et (v != "aller")
        Alors Renvoyer(vrai)
        Sinon Renvoyer(faux)
        fsi
=end

#Ruby

def estBissextile(a)
  if a%4 == 0
    if a%100 == 0
      if a%400 == 0
        return true
      else
        return false
      end
    else
      return true
    end
  else
    return false
  end
end
a = [1500, 1600, 1504, 2014]
a.each do |i|
  puts estBissextile(i)
end
