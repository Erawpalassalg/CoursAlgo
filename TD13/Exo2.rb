#encoding: utf-8

=begin

Lexique partagé
  statsMot : type agrégat
            mot : Chaîne
            total : Entier
            fréquence : Réel
            fagrégat




Fonction postionCar(caractère : c, c1) → Entier 0..2
  // Renvoie 0 si c est avant ou égal à c1 dans l'alphabet, 1 si ils sont égaux et 2 si c1 est avant c

  Lexique de positionCarpositionCar(c, c1)
     tc : Tableau de caractères sur 0..25 = ['A', 'B', 'C', 'D', 'E', 'F', 'G', 'H', 'I', 'J', 'K', 'L', 'M', 'N', 'O', 'P', 'Q', 'R', 'S', 'T', 'U', 'V', 'W', 'X', 'Y', 'Z']
     c, c1 : Caractères, paramètes fonctionnels
     i, j : Entiers 0..26 // Déterminent repectivement la valeur de c et c1 dans l'alphabet
     
  Algorithme de positionCar(c, c1)
    Si c = c1
    Alors renvoyer(1)
    fSi
    
    i ← 0
    j ← 0
    Tantque tc[i] != c
      Si tc[i] !=  c
      Alors i ← i + 1
      fSi
      Si tc[j] != c
      Alors j ← j + 1
      fSi
    fTantque
    
    Si i < j
    Alors renvoyer(0)
    Sinon renvoyer(2)
    fSi



fonction positionMot(chaîne : ch, ch1) → Entier 0..2
  // Renvoie 0 si ch est avant ch1 dans l'ordre alphabétique, 1 si les deux chaînes sont égales et 2 si ch1 se trouve avant ch

  Lexique de positionMot(chaîne : ch, ch1) → Entier 0..2
    
    positionCar : fonction
    temp : booléen // Dit si la première lettre de ch précède la première lettre de ch1
    
    
  Algo de positionMot(ch, ch1)
    Si ch = ch1
    Alors renvoyer(1)
    fSi
    
    firstcar = positionCar(pre(ch), pre(ch1))
    
    Selon temp
      firstcar = 0 : renvoyer(0)
      firstcar = 2 : renvoyer(2)
      firstcar = 1 : renvoyer positionMot(fin(ch), fin(ch1))



fonction dejaLa(t (t : Tableau sur NMIN..NMAX de statsMot), ch (chaîne)) → Entier
  //Renvoie -1 si le mot existat déjà et qu'il a été ajouté au total, sinon renvoie la place du mot
  
  Lexique de dejaLa
    t : Tableau sur NMIN..NMAX de statsMot// paramètre fonctionnel
    ch : Chaîne // paramètre fonctionnel
    place : Entier // Place alphabétique du mot dans le tableau
    position : Entier 0..2 // Position de ch par rapport au mot précédent dans la liste
    positionMot : fonction
    
  Algorithme de dejaLa
    position = positionMot(t[NMAX/2].mot, ch)
    
    Selon position, NMIN, NMAX
      position = 1 : t[NMAX/2].total = t[NMAX/2].total+1 ; place ← (-1)
      position = 0 et NMIN < NMAX : NMAX ← NMAX / 2 ; place ← dejaLa(t, ch) ; NMAX ← NMAX * 2
      position = 2 et NMIN < NMAX : NMIN ← NMAX / 2 ; place ← dejaLo(t, ch)
    fSelon
    NMIN ← 0
    renvoyer(place)



Lexique
  F : Fichier de caractères // séquence parcourue
  t : Tableau sur 0..NMAX de statsMot // Tableau classé par ordre alphabétique
  total : Entier // Nombre de mots rencontrés
  place : Entier // Place alphabétique du mot étudié dans le tableau
  prec : Caractère // caractère précédent le caractère courant dans la séquence parcourue
  i : Entier // Outil de parcours
  mot : chaîne // Mot parcouru
  positionMot : fonction
  
  
Algo
  NMIN ← 0
  NMAX ← 0
  place ← -1
  prec ← ' '
  
  F.LirePremier
  
  Tantque non F.FDF
    Selon prec, F.EC
      prec = ' ' et F.EC != ' ' : mot ← ""•F.EC
      prec != ' ' et F.EC != ' ' : mot ← mot•F.EC
      prec != ' ' et F.EC = ' ' : Si NMAX = 0
                                  Alors t[0].mot = ch ; t[0].total = 1 ; NMAX = 1
                                  Sinon place ← dejaLa(t, ch)
                                  fSi
                                  
                                  Si place != -1
                                  Alors NMAX ← NMAX + 1 ; i ← NMAX
                                        Tanque i < place faire
                                          t[i] ← t[i] - 1
                                          i ← i -1
                                        fTantque
                                        t[i].mot ← mot
                                        t[i].total ← 1
                                  fSi
                                  total ← total + 1
    fSelon
    f.lireSuivant
  fTantque
  
  i ← 0
  
  Tantque i < NMAX + 1
    t[i].fréquence ← t[i].total / total * 100
  fTantque
  
=end