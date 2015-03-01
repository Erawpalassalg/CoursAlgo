#encoding: utf-8

=begin
 
 Lexique
  nombre : Entier // nombre d'éléments commun aux deux listes
  l1, l2, t3 : Séquence chaînée
  t1, t2, t3 : Adresse mémoire // Début de la séquence
  q3 : Adresse mémoire // fin séquence
 
 Algorithme
  a1 <- t1
  a2 <- t2
  t3 <- NIL
  q3 <- NIL
  nombre <- 0
  
  Tantque a1 != NIL et a2 != NIL, faire
    Selon a1, a2
      a1^.val = a2^.val : nombre <- nombre+1 
                          créer(a) 
                          Si nombre = 1 Alors t3 <- q3 <- a fSi // Cas de base
                          a^.val <- a1^.val ; a^.suiv <- NIL ; q3^.suiv <- a; // On ajoute la valeur de l'élément courant à et le donne comme suivant à l'ancienne queue, puis on met a comme queue
                          a1 <- a1^.suiv ; a2 <- a2^.suiv // Enfin on passe à l'élément suivant
                          
      a1^.val > a2^.val : a2 <- a2^.suiv
      a1^.val < a2^.val : a1 <- a1^.suiv
    fSelon
  fTantque
  // Fin d'itération : a1 = NIL ou a2 = NIL;
  
=end