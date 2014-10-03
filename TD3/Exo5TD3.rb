#encoding: utf-8

=begin
  fonction estBissextile(a:entier) -> booléen
    // Renvoie vrai si l'année a est bissextile sinon renvoie faux
    Lexique de estBissextile
      Données
        a : Entier // paramètre   
        
    Algorithme estBissextile
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

  fonction dateValide(j: Entier entre 1 et 31, m: Entier entre 1 et 12, a : Entier entre 1900 et 2100) -> Booleén
    // renvoie vrai si j, m, a correspond à une date valide
    Lexique de dateValide
      Données
        j : Entier // paramètre, jour de la date
        m : Entier // paramètre, mois de la date   
        a : Entier // paramètre, année de la date
        
    Algorithme de dateValide
    
    si j > 28
    Alors selon j, m, a
            j > 29 et m = 2 : Retourne(faux)
            j = 29 et m = 2 et estBissextile(a) = faux : Retourne(faux)
            j > 30 et ((m <= 6 et m mod 2 = 0) ou (m >= 9 et m mod 2 != 0)) et m != 2 : Retourne(faux)
            Autrement : Retourne(vrai)
          fselon
    Sinon Retourne(vrai)
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

def dateValide(j, m, a)
  if j > 28
    if j > 29 and m == 2
      return false
    elsif j == 29 and m == 2 and estBissextile(a) == false
      return false
    elsif j > 30 and ((m <= 6 and m%2 == 0) or (m>=9 and m%2 != 0))
      return false
    else
      return true
    end
  else
    return true
  end
end

puts "jour mois année"
j = gets.chomp.to_i
m = gets.chomp.to_i
a = gets.chomp.to_i

puts dateValide(j, m, a)
