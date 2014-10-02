#encoding: utf-8

=begin
  fonction estBissextile(a:entier) -> Entier
    // Renvoie l'entier -1 si l'année a est bissextile sinon renvoie l'entier -2
    Lexique de estBissextile
      Données
        a : Entier // paramètre   
        
    Algorithme  
        si a mod 4 = 0
        Alors si a mod 100 = 0
              Alors si a mod 400 = 0
                    Alors Renvoyer(-1)
                    Sinon Renvoyer(-2)
                    fsi
              Sinon Renvoyer(-1)
              fsi
        Sinon Renvoyer(-2)
        fsi

  fonction quantième(j: Entier entre 1 et 31, m: Entier entre 1 et 12, a : Entier entre 1900 et 2100) -> Entier entre 1 et 366
    // renvoie le numéro d'ordre de la date j/m/a dans l'année a
    Lexique de quantième
      Données
        j : Entier // paramètre, jour de la date
        m : Entier // paramètre, mois de la date   
        a : Entier // paramètre, année de la date
      Variable
        quant : Entier // valeur incrémentée puis renvoyée
        
    Algorithme de quantième
      quant ← 0
      selon
        m < 2 : quant ← j
        m >= 2 et m <= 8 : quant ← ((m-1)*31 - ((m-1) div 2) + estBissextile(a) + j)
        m >= 9 : quant ← ((m-1)*31 - ((m div 2)-1) + estBissextile(a) + j)
      fselon
    Renvoyer(quant)
=end

#Ruby

def estBissextile(a)
  if a%4 == 0
    if a%100 == 0
      if a%400 == 0
        return -1
      else
        return -2
      end
    else
      return -1
    end
  else
    return -2
  end
end

def quantieme(j, m, a)
  if m <= 2
    quant = (m-1)*31 + j
  elsif m > 2 and m <= 8
    quant = (m-1)*31 - ((m-1)/2) + estBissextile(a) + j
  elsif m >= 9
    quant = (m-1)*31 - ((m/2)-1) + estBissextile(a) + j
  end
end

puts "Jour Mois Année"
j = gets.chomp.to_i
m = gets.chomp.to_i
a = gets.chomp.to_i

puts quantieme(j, m, a)
