#encoding: utf-8

#a)

=begin

  Lexique
    Données
      f : Fichier de caractères // donnée initiale
      f1 : Fichier de caractères // donnée finale
      a : Chaîne // donnée intermédiaire, à insérer dans le nouveau fichier
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
    tantque f.FDF = false
      a ← a•f.EC
      f.LireSuivant
    ftantque
    f1.PréparerEnregistrement
    f1.Enregistrer(a)
      
    
=end

# Ruby


a = ""
File.open("test1.txt", "r") do |i|
  i.each_char do |ii|
    a = a + ii
  end
end

IO.write("test2.txt", a)




#b)

=begin

  Lexique
    Données
      f : Fichier de caractères // donnée initiale
      f1 : Fichier de caractères // donnée finale
      a : Chaîne // donnée intermédiaire, chaîne composée des caractères précédant l'élément courant dans le fichier f1
    Fonctions
      FindeFichier → booléen // renvoie vrai si positionné en fin de séquence
      EC → élément // renvoie la position de EC
    Actions
      LirePremier // se positionne sur le premier élément de la séquence dans un fichier
      LireSuivant // Se positionne sur l'élément suivant d'une séquence dans un fichier
      PréparerEnregistrement // se  positionne au début du fichier, en mode "écriture"
      Enregistrer(X) // Enregistre la valeur X dans un fichier
    
  Algorithme
      // a = ? ; f = f0 ; f1 = F10
    a ← ""
      // a = "a0" ; f = f0; f1 = f10
    f.LirePremier
    tantque non f.FDF
      Selon f.EC
        f.EC = ' ' : a ← a•'/'
        f.EC = '/' : a ← a•'\'
        Autrement : a ← a•f.EC
          // a = "a0"•f < f.EC•f.EC ; f = f0 ; f1 = f10
      fSelon
      f.LireSuivant
    ftantque
    f1.PréparerEnregistrement
    f1.Enregistrer(a)
      // a = "a1" ; f = f0 ; f1 = f11
    
=end

# Ruby 

a = ""
File.open("test1.txt", "r") do |i|
  i.each_char do |ii|
    if ii == " " 
      a = a + "/"
    elsif ii == "/"
      a = a + "\"
    else
      a = a + ii
  end
end

IO.write("test2.txt", a)