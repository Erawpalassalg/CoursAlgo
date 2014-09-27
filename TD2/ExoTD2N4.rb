#encoding: utf-8

=begin
  Lexique
      Données
        n : Entier compris entre 10100 et 311299 // date, donnée utilisateur
      Variables
        date : chaîne de caractères // date, variable inetmédiaire
        annee : chaîne de caractères // variable intermédiaire
        mois : chaîne de caractères // variable intermédiaire
        jour : chaîne de caractères // variable intermédiaire
      Périphériques
        cl : clavier // périphérique d'entrée
        e : écran // périphérique de sortie
        
        
      Algorithme
          
          // n = ?, date = ?, annee = ?, mois = ?, jour = ?
        
        e.afficher("Veillez entrer une date entre 10100 et 311299")
        cl.saisir(n)
        
          // n = n0, date = ?, annee = ?, mois = ?, jour = ?
          
       date ← Conv(n) 
       
          // n = n0, date = "date0", annee = ?, mois = ?, jour = ?
       
       selon
          Longueur(date) = 6 : jour ← SousChaine(date, 1, 2) ; mois ← SousChaine(date, 3, 4) ; annee ← "20" & SousChaine(date, 5, 6)
          Longueur(date) = 5 : jour ← '0'°SousChaine(date, 1) ; mois ← SousChaine(date, 2, 3) ; annee ← "20" & SousChaine(date, 4, 5)
       fselon
       
          // n = n0, date = "date0", annee = "annee0", mois = "mois0", jour = "jour0"
       
       e.afficher((jour•'-')&(mois•'-')&annee)
=end

#Ruby

puts "Veillez entrer une date entre 10100 et 311299"
date = gets.chomp  #En ruby, on ne peut recevoir de variable que sous la forme "String" - gets signifiant "get as string", soit chaîne de caractère. La première conversion est don cdéjà faite automatiquement

#On sélectionne ensuite les caractères voulus en fonction de leur place dans la chaine. Comme il n'y a que deux format de chaine possible ( 5 ou 6 caractères ) :
if date.length == 6
  jour = date[0..1]                      # En ruby le premier élément d'un tableau - et ruby considère ici la chaine de carctères comme un tableau - est classé à 0
  mois = date[2..3]                      # On utilise ici la classe range de ruby, qui nous permet de sélectionner tous les chiffres entre x et y (compris), noté [x..y]
  annee = date[4..5]
elsif date.length == 5
  jour = "0#{date[0]}"                  # ci on utilise une interpolation, qui nous permet d'éxecuter le morceau de code entre #{} même si il se trouve dans une chaîne
  mois = date[1..2]
  annee = "20"+date[3..4]               # Une concaténation en ruby se fait avec l'opérateur "+"
end

puts jour + "-" + mois + "-" + annee 
