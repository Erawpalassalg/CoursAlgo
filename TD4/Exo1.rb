#encoding: utf-8

#a

=begin
  Lexique partagé
    Heure : type entier (0..23)
    Minute : type entier (0..59)
    Seconde : type entier (0..59)
      
  Lexique principal
    Données
      h :  Heure // donnée initiale
      m :  Minute // donnée initiale
      s :  Seconde // donnée initiale
    Préiphériques
      e : écran // périphérique de sortie
      
  Algorithme
      // h = h0, m = m0, s = s0
    selon h, m, s, Heure, Minute, Seconde
      s < 59 : e.afficher(h,m,s+1)
      m < 59 et s = 59 : e.afficher(h,m+1,0)
      h < 23 et m = 59 et s = 59 : e.afficher(h+1,0,0)
      h = 23 et m = 59 et s = 59 : e.afficher(0,0,0)
    fselon  
=end

#Ruby

resa = "Résultat #a :"

class Heure
  attr_accessor :he
end
class Minute
  attr_accessor :mi
end
class Seconde
  attr_accessor :se
end

h = Heure.new
m = Minute.new
s = Seconde.new

puts "Veuillez entrer les heures"
h.he = gets.chomp.to_i

puts "Veuillez entrer les minutes"
m.mi = gets.chomp.to_i

puts "Veuillez entrer les secondes"
s.se = gets.chomp.to_i

if s.se < 59
  puts "#{resa} #{h.he}, #{m.mi}, #{s.se+1}"
elsif m.mi < 59 and s.se == 59
  puts "#{resa} #{h.he}, #{m.mi+1}, 0"
elsif h.he < 23 and m.mi == 59 and s.se == 59
  puts "#{resa} #{h.he+1}, 0, 0"
elsif h.he == 23 and m.mi == 59 and s.se == 59
  puts "0, 0, 0"
end


#b

=begin
    Horaire : type agrégat
      heure : entier (0..23)
      minute : entier (0..59)
      seconde : entier (0..59)
    fagrégat
=end

#Ruby

class Horaire
  attr_accessor :heure
  attr_accessor :minute
  attr_accessor :seconde
end

# Permet de faire passer les variables utilisateur dans l'agrégat (classe), dont on crée une isntance appelée "hor"
hor = Horaire.new
hor.heure = h.he
hor.minute = m.mi
hor.seconde = s.se

#c

=begin
 
  fonction horaireSuivant(x : Horaire) -> Horaire
    // horaireSuivant renvoie l'horaire suivant l'horaire entré en paramètre d'une seconde
  Lexique 
    x : Horaire // paramètre
    y : Horaire // horaire renvoyé
  Algorithme de horaireSuivant
    selon x
      x.seconde < 59 : y.heure ← x.heure ; y.minute ← x.minute ; y.seconde ← x.seconde + 1
      x.minute < 59 et x.seconde = 59 : y.heure ← x.heure ; y.minute ← x.minute + 1 ; y.seconde ← 0
      x.heure < 23 et x.minute = 59 et x.seconde = 59 : y.heure ← x.heure +1 ; y.minute ← 0 ; y.seconde ← 0
      x.heure = 23 et x.minute = 59 et x.seconde = 59 : y.heure ← 0 ; y.minute ← 0 ; y.seconde ← 0
    fselon 
    Renvoyer(y)
=end

#Ruby

def horaireSuivant(horaire)
  resc = "Résultat #c :"
  horaire1 = Horaire.new
  if horaire.seconde < 59
    horaire1 = horaire.clone
    horaire1.seconde +=1
  elsif horaire.minute < 59 and horaire.seconde == 59
    horaire1.heure, horaire1.minute, horaire1.seconde = horaire.heure, horaire.minute + 1, 0    
  elsif horaire.heure < 23 and horaire.minute == 59 and horaire.seconde == 59
    horaire1.heure, horaire1.minute, horaire1.seconde = horaire.heure+1, 0, 0
  elsif horaire.heure == 23 and horaire.minute == 59 and horaire.seconde == 59
    horaire1.heure, horaire1.minute, horaire1.seconde = 0, 0, 0
  end
  return "#{resc} #{horaire1.heure}, #{horaire1.minute}, #{horaire1.seconde}"
end

puts horaireSuivant(hor)
