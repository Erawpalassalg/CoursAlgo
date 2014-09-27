#encoding: utf-8

=begin
    Reformulation
      Si X > 1an => 28+jours
      Si X < 1an => 2jours/mois
      Si X = cadre de +35 ans et 3ans+ ancienneté => +2jours
      Si X = ........ +45 ...... 5ans+ .......... => +4jours

    Lexique
      Données
        Anc : Entier // ancienneté de l'individu, en années, donnée utilisateur
        AncMin : Entier // Ancienneté de l'individu, en mois, donnée utilisateur
        Age : Entier // age de l'individu, en années, donnée utilisateur
        EstC : Booleen // définit si l'individu est cadre ou non
      Variables
        JdC : Entier // nombre de jours de congés dans l'année
      Périphériques
        cl : clavier // périphérique d'entrée
        e : écran // périphérique de sortie  
        
    Algorithme
        // Anc = ?, AncMin = ?, Age = ?, EstC = ?, JdC = ?
        
      e.afficher("Veuillez entrer le nombre d'années d'ancienneté de la personne")
      cl.saisir(Anc)
      
      si Anc = 0
      alors e.afficher("Veuillez entrer le nombre de mois d'ancienneté de la personne") ; cl.saisir(AncMin)
      fsi
      
      e.afficher ("Veuillez entrer l'âge de la personne")
      cl.saisir(Age)
      
      e.afficher ("Veuillez indiquer le statut de la personne")
      cl.saisir(EstC)
      
          // Anc = Anc0, AncMin = (AncMin0 ou ?), Age = Age0, EstC = EstC0, JdC = ?
          
      selon
        Anc < 1 : e.afficher(AncMin*2, " jours de congé")
        Anc > 1 et (Anc < 3 ou EstC = faux ou Age < 35) : e.afficher("28 jours de congé")
        (EstC = vrai et (Anc >= 3 et (Age >= 35 et Age < 45))) ou (EstC = vrai et ( Anc >= 3 et (Anc <= 5 et Age >= 35))) : e.afficher(28+2, " jours de congé")
        EstC = vrai et (Anc >= 5 et Age >= 45) : e.afficher(28+4, " jours de congé")
      fselon
=end

# ruby

puts "Veuillez entrer le nombre d'années d'ancienneté de la personne"
anc = gets.chomp.to_i

if anc == 0
  puts "Veuillez entrer le nombre de mois d'ancienneté de la personne"
  ancMin = gets.chomp.to_i
end

puts "Veuillez entrer l'âge de la personne"
age = gets.chomp.to_i

puts "La personne est-elle cadre ?"
mlop = gets.chomp
if mlop == "oui"
  estC = true
elsif mlop == "non"
  estC = false
end

if anc < 1
  puts (ancMin*2).to_s + " jours de congé"
elsif anc > 1 and (anc < 3 or estC == false or age < 35)
  puts "28 jours de congé"
elsif (estC == true and (anc >= 3 and (age >= 35 and age < 45))) or (estC == true and (anc >= 3 and (anc <= 5 and age >=35)))
  puts "30 jours de congé"
elsif estC == true and (anc >= 5 and age >= 45)
  puts "32 jours de congé" 
end