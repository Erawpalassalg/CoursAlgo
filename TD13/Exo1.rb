#encoding: utf-8

=begin

a) Table définie
b) On affiche les résultats dans l'ordre de leur apparition dans le fichier ( on affiche plusieurs fois si le caractère apparaître plusieurs fois)

Lexique
  F : Fichier // donnée initiale, séquence à parcourir
  table : {A B C D E F G H I J K L M N O P Q R S T U V W X Y Z}
  to : Tableau d'entiers sur 0..25 // Nombre d'occurence du caractère dont l'indice correspond sur table dans la séquence parcourue.
  total : Entier >= 0 // Nombre de letters rencontrées.
  i : Entier 0..26 // outil d'initialisation de to.
  e : écran // périphérique de sortie
  
Algorithme
  total ← 0
  i ← 0
  
  Tantque i < 26, faire
  to[i] ← 0
  i ← i + 1
  fTantque
  
  F.lirePremier
  Tantque non F.FDF, faire
    Si F.EC != " "
    Alors 
          to[table[F.EC]] ← to[table[F.EC]] + 1
          total ← total +1
    fSi
    F.lireSuivant
  fTantque
  
  F.lirePremier
  Tantque non F.FDF, faire
    e.afficher(F.EC, " : ", to[table[F.EC]], " occurences, ", to[table[F.EC]]/total*100,"% des occurences totales." )
  fTantque
  
=end





=begin

  2) Il faut ajouter un tableau de caractères et changer l'tération d'affichage

Lexique
  F : Fichier // donnée initiale, séquence à parcourir
  table : {A B C D E F G H I J K L M N O P Q R S T U V W X Y Z}
  tc : Tableau de caractères sur 0..25 = ['A', 'B', 'C', 'D', 'E', 'F', 'G', 'H', 'I', 'J', 'K', 'L', 'M', 'N', 'O', 'P', 'Q', 'R', 'S', 'T', 'U', 'V', 'W', 'X', 'Y', 'Z']
  to : Tableau d'entiers sur 0..25 // Nombre d'occurence du caractère dont l'indice correspond sur table dans la séquence parcourue.
  total : Entier >= 0 // Nombre de letters rencontrées.
  i : Entier 0..26 // outil de parcours de tableau.
  e : écran // périphérique de sortie
  
Algorithme
  total ← 0
  i ← 0
  
  Tantque i < 25, faire
  to[i] ← 0
  i ← i + 1
  fTantque
  
  F.lirePremier
  Tantque non F.FDF, faire
    Si F.EC != " "
    Alors 
          to[table[F.EC]] ← to[table[F.EC]] + 1
          total ← total +1
    fSi
    F.lireSuivant
  fTantque
  
  i ← 0
  Tantque i < 25, faire
    e.afficher(tc[i], " : ", to[i], " occurences, ", to[i]/total*100,"% des occurences totales." )
  fTantque
  
=end  







=begin

3) Il faut construire un tableau pour les fréquences, qu'on triera en dernier

Lexique
  F : Fichier // donnée initiale, séquence à parcourir
  table : {A B C D E F G H I J K L M N O P Q R S T U V W X Y Z}
  stats : type agrégat
              lettre : Caractère
              total : Entier
              fréquence : Réel
              fagrégat
  to : Tableau d'entiers sur 0..25 // Nombre d'occurence du caractère dont l'indice correspond sur table dans la séquence parcourue.
  tc : Tableau de caractères sur 0..25 = ['A', 'B', 'C', 'D', 'E', 'F', 'G', 'H', 'I', 'J', 'K', 'L', 'M', 'N', 'O', 'P', 'Q', 'R', 'S', 'T', 'U', 'V', 'W', 'X', 'Y', 'Z']
  ts : Tableau de stats sur 0..25 // Tableau contenant toutes les inforamtions, trié par fréquences décroissantes.
  total : Entier >= 0 // Nombre de letters rencontrées.
  i : Entier -1..26 // outil de parcours de tableau.
  j : Entier 0..26 // nombre de valeurs classées dans tf
  freq : Réel // Fréquence d'occurence de la valeur étudiée
  e : écran // périphérique de sortie
  
Algorithme
  total ← 0
  i ← 0
  
  Tantque i < 25, faire
  to[i] ← 0
  tf[i].fréquence ← 0.0
  i ← i + 1
  fTantque
  
  F.lirePremier
  Tantque non F.FDF, faire
    Si F.EC != " "
    Alors 
          to[table[F.EC]] ← to[table[F.EC]] + 1
          total ← total +1
    fSi
    F.lireSuivant
  fTantque
  
  
  // classements des fréquences et modification des ordres / valeurs des autres tableaux
  j ← 0
  Tantque j < 26, faire
  freq ← to[j]/total*100
    i ← 25
    Tantque i > -1 oualors freq < ts[i-1].fréquence, faire
      ts[i] = ts[i-1]
      i ← i -1
    fTanque
    ts[i].fréquence ← freq
    ts[i].lettre ← tc[j]
    ts[i].total ← to[j]
    j ← j + 1
  fTantque
  
  i ← 0
  Tantque i < 26, faire
    e.afficher(ts[i].letter, " : ", ts[i].total, " occurences, ", ts[i].fréquence,"% des occurences totales.")
  
=end  