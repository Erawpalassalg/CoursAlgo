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
      h <= 23 et m <= 59 et s < 59 : e.afficher(h,m,s+1)
      h <= 23 et m < 59 et s = 59 : e.afficher(h,m+1,0)
      h < 23 et m = 59 et s = 59 : e.afficher(h+1,0,0)
      h = 23 et m = 59 et s = 59 : e.afficher(0,0,0)
    fselon  
=end


#b

=begin
    Horaire : type agrégat
      heure : entier (0..23)
      minute : entier (0..59)
      seconde : entier (0..59)
    fagrégat
=end


#c

=begin
 
  fonction horaireSuivant(x : Horaire) -> Horaire
    // horaireSuivant renvoie l'horaire suivant l'horaire entré en paramètre d'une seconde
  Lexique 
    x : Horaire // paramètre
    y : Horaire // horaire renvoyé
  Algorithme de horaireSuivant
    selon x
      x.heure <= 23 et x.minute <= 59 et x.seconde < 59 : y.heure ← x.heure ; y.minute ← x.minute ; y.seconde ← x.seconde + 1
      x.heure <= 23 et x.minute < 59 et x.seconde = 59 : y.heure ← x.heure ; y.minute ← x.minute + 1 ; y.seconde ← 0
      x.heure < 23 et x.minute = 59 et x.seconde = 59 : y.heure ← x.heure +1 ; y.minute ← 0 ; y.seconde ← 0
      x.heure = 23 et x.minute = 59 et x.seconde = 59 : y.heure ← 0 ; y.minute ← 0 ; y.seconde ← 0
    fselon 
    Renvoyer(y)
=end