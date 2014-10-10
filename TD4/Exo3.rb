#encoding: utf-8

#a
=begin
  Lexique
    a : Entier // Donnée initiale
    c : Entier // Donnée initiale
    b : Entier // Donnée initiale
    x : Entier // intermédiaire
    
  Algorithme
      //a = a0, b = b0, c = c0, x=?
     x ← a ; a ← b ; b ← c ; c ← x
      //a = b0, b = c0, c = a0, x = a0 
=end

#b
=begin
  action décalageCirculaire(a : Entier, b : Entier ,c : Entier) -> Entier
    // décale les valeurs de trois variables vers la gauche
    // EI : a = a0, b = b0, c = c0, x=?
    // EF : a = b0, b = c0, c = a0, x = a0 
  Lexique de décalageCirculaire
    a : Entier // paramètre
    b : Entier // paramètre
    c : Entier // paramètre
    x : Entier // intermédiaire
      
  Algorithme de déclageCirculaire
    x ← a ; a ← b ; b ← c ; c ← x
=end