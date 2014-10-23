#encoding: utf-8

=begin

Lexique
    Pérphériques
      e : écran // préiphérique de sortie
    Données
      f : Fichier d'entiers // donnée initiale
      min : Entier // minimum
      max : Entier // maximum
    Fonctions
      FindeFichier → booléen // renvoie vrai si positionné en fin de séquence
      EC → élément // renvoie la position de EC
    Actions
      LirePremier // se positionne sur le premier élément de la séquence dans un fichier
      LireSuivant // Se positionne sur l'élément suivant d'une séquence dans un fichier
      PréparerEnregistrement // se  positionne au début du fichier, en mode "écriture"
      Enregistrer(X) // Enregistre la valeur X dans un fichier
    
  Algorithme
    f.LirePremier
    Si f.FDF
    Alors e.afficher("Le fichier est vide")
    Sinon max ← f.FDF ; min ← f.FDF
    fSi
    
    tantque f.FDF = false
      Selon min max f.FDF
        f.FDF < min : min ← f.FDF
        f.FDF > max : max ← f.FDF
        Autrement :
      fSelon
      f.LireSuivant
    ftantque
    
  
=end

# Ruby

File.open("test3.txt", "r") do |i|
  puts "fichier vide" if i.size == 0
  i.
end
