#encoding: utf-8

=begin

  Lexique
    Données
      f : Fichier de caractères // donnée initiale
      f1 : Fichier de caractères // donnée finale
      a : Chaîne // donnée intermédiaire, à insérer dans le nouveau fichier
    Fonctions
      FindeSéquence cité U po→ booléen // renvoie vrai si positionné en fin de séquence
      EC → élément // renvoie la position de EC
    Actions
      Démarrer // se positionne sur le premier élément dela séquence
      Avancer // Sepositionne sur l'élément suivant
    
  Algorithme
    f.Démarrer
    tantque f.FDF = false
      a ← a•f.EC
    ftantque
    f1 ← a
      
    
=end

# Ruby
a = ""
File.open("test1.txt", "r") do |i|
  i.each_char do |ii|
    a = a + ii
  end
end

IO.write("test2.txt", a)
