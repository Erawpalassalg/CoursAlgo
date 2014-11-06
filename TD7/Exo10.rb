#encoding: utf-8

=begin

  Lexique
    fr : Fichier d'Entiers // donnée intermédiaire, fichier résultat
    f1 : Fichier d'Entiers // donnée initiale
    f2 : Fichier d'Entiers // donnée initiale
    b : Booleen // vrai si l'élément courant de la séquence f2 est égal à l'un des éléments de la séquence parcourue sur fr
    fin : Entier // Intermédiair : dernier chiffre du fichier fr
    
  Algorithme
  fr.PréparerEnregistrement
  f1.LirePremier
  
  Tantque non f1.FDF
    fr.Enregistrer(f1.EC)
    f1.LireSuivant
    fin ← f1.EC
  fTantque
  // f1.EC = f1.FDF
  
  f2.LirePremier
  
  Tantque non f2.FDF
 
    b ← faux
    fr.LirePremier
    
    Tantque fr.EC != fin ou non b
    
      Si fr.EC = f2.EC
      Alors b ← vrai
      fSi
      
      fr.LireSuivant
    fTantque
    // fr.EC = fin ou b
    
    Si non b
    Alors fr.Enregistrer(f2.EC)
    fSi
  
    f2.LireSuivant
  
  fTantque
  // f2.EC = f2.FDF
  
  fr.Marquer
  
=end