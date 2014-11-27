#encoding: utf-8

=begin

fonction estSymétrique(M: Matrice, N : Entier > 0) → booléen
// Renvoie vrai si la matrice M d'ordre N est symétrique
  
  Lexique de estSymétrique
    M : Matrice carrée // paramètre
    N : Entier // ordre de la matrice M
    a : Entier // indice des lignes/colonnes déjà parcourues
    j : Entier // indice sur la ligne ou la colonne i actuellement examiné
    i : Entier // indice de la ligne ou de la colonne actuellement examinée
    b : booleen // indique si la séquence parcourue ne contenait que des symétries
  
  Algorithme de estSymétrique
    i ← 1
    j ← 1
    a ← 0
    b ← vrai
    
    Tantque b etpuis i <= N faire
      Si M[i][j] != M[j][i]
      Alors  b ← non b
      Sinon Selon j, N
              j <= N : j ← j + 1 
              j > N : a ← a + 1 ; j ← a ; i ← i + 1
            fSelon  
       fSi
    fTantque
    
    Renvoyer b
    
=end