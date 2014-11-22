#encoding: utf-8

=begin

  Lexique
   t : tableau d'Entiers non vide, sur [1..LMAX] // Donnée initiale
   L : Entier // Nombre de données enregistrées dans le tableau t
   b : Booléen // vrai si la température précédente était positive, faux si elle était négative, ne change pas de nature lorsque la température est égale à 0
   i : Entier // intermédiaire permettant de se mouvoir sur la séquence t
   n : Entier // Nombre de fois où la température a traversé l'axe horizontal de zéro degrés
   e : écran // périphérique de sortie
  
  Algorithme
    i ← 0
    n ← 0
    
    Tantque i < L et t[i] = 0 faire
      i ← i + 1
    fTantque
   
   Si t[i] = 0
   Alors e.afficher("La séquence ne contient que des températures égales à 0")
   Sinon Selon t[i]
           t[i] > 0 : b ← vrai
           t[i] < 0 : b ← faux
         fSelon
    
         Tantque i < L faire
           i ← i + 1
           Si (b et t[i] < 0) ou (!b et t[i] > 0)
           Alors b ← !b ; n ← n + 1
           fSi
         fTantque
         
         e.afficher("Nombre de changements de signe de la température : ", n)
   fSi
  
=end