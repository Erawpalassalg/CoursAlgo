#encoding: utf-8

=begin
  fonction estBissextile(a:entier) -> booléen
    // Renvoie vrai si l'année a est bissextile sinon renvoie faux
    Lexique de estBissextile
      Données
        a : Entier // paramètre   
        
    Algorithme de estBisextile
        si a mod 4 = 0
        Alors si a mod 100 = 0
              Alors si a mod 400 = 0
                    Alors Renvoyer(vrai)
                    Sinon Renvoyer(faux)
                    fsi
              Sinon Renvoyer(vrai)
              fsi
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
