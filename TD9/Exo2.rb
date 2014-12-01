#encoding: utf-8

=begin

fonction estMagique(M : Matrice ; N entier > 0) → booleen
//renvoie vrai si la Matrice M d'ordre N est magique

  Lexique de estMagique
    M : Matrice carrée // paramètre
    N : Entier // ordre de la matrice M
    a : Entier // valeur constante à vérifier pour que M soit un carré magique
    j : Entier // indice sur la ligne ou la colonne i actuellement examiné
    i : Entier // indice de la ligne ou de la colonne actuellement examinée
    b : booleen // indique si la séquence parcourue répondait aux conditions du carré magique
    scol : Entier // Somme des chiffres de la colonne parcourue
    sli : Entier // Somme des chiffres de la ligne parcourue
  
  Algorithme de estMagique
    i ← 1
    j ← 1
    a ← N*(N*N + 1)/2
    b ← vrai
    cdiag ← N
    scol ← 0
    sli ← 0
    sdiag1 ← 0
    sdiag2 ← 0
    
    
    Tantque b etpuis i <= N faire
      Selon i, j, N
        j <= N : 
             Si j = i
             Alors sdiag1 ← sdiag1 + M[i][j]
             fSi ; 
             Si j = cdiag
             Alors diag 2 ← M[i][j] + M[j][i] 
             fSi ; cdiag ← cdiag - 1
             col ← scol + M[j][i] ; sli ← sli + M[i][j] ; j ← j + 1 
                          
        j > N : 
             Si scol != a et sli != a
             Alors b ← non b
             Sinon j ← 1 ; i ← i + 1 ; scol ← 0; sli ← 0;
             fSi 
      fSelon
    fTantque
    
    Si b etpuis (sdiag1 != a ou sdiag2 != a)
    Alors b ← non b
    fSi
    
    Renvoyer b
  
=end


=begin
action construireCarré(Modifié, M : Matrice, Consulté, N : Entier)
// Rempli la matrice M d'orbre N avec 1..N*N, de sorte que M soit un carré magique

  Lexique de construireCarré
    M : Matrice // paramètre fonctionnel
    N : Entier // Ordre de M, longueur des lignes et colonnes composant M
    comp : Entier // Numéro de l'itération et du chiffres à placer, en fonction de comp-1
    i : Entier // Numéro de la ligne
    j : Entier // Numéro de la colonne

  Algorithme de construireCarré
    i ← 1
    j ← N div 2 + 1
    comp ← 0
    
    Tantque comp < N*N
      comp ← comp + 1
      M[i][j] ← comp
      
      Si N mod comp = 0
      Alors i = i + 1
      Sinon Si i = 1
            Alors i ← N
            Sinon i ← i -1
            fSi
            
            Si j = 1
            Alors j ← N
            Sinon j ← j - 1
            fSi
      fSi
    fTantque

=end