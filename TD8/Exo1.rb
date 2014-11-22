#encoding: utf-8

=begin

Lexique
  prec : caractère // caractère précédent la position du curseur lors de la lecture du fichier. Est initialisé par défaut à ' '
  totocar : caractère // 1er caractère du 1er mot
  toto : booléen // répond à : la séquence parcourue est-elle un tautogramme ?
  f : Fichier de caractères non vide // donnée initiale
  e : écran // périphérique de sortie
  
Algorithme
  prec ← ' '
  f.LirePremier
  
  Tantque non f.FDF etpuis f.EC = ' ' faire
    f.LireSuivant
  fTantque
  // f.FDF oualors f.EC != ' '
  
  Si non f.FDF
  Alors totocar ← f.EC ; toto vrai ; 
      Tantque non f.FDF et toto = vrai faire
        Si prec = ' ' et f.EC != ' '
        Alors Si totocar != f.EC
              Alors toto ← faux
              fSi
        fSi
        prec ← f.EC
        f.LireSuivant
      fTantque
      // f.FDF ou toto = faux
      
      Selon toto
        toto     : e.afficher("Le fichier est composé d'un tautogramme")
        non toto : e.afficher("Le fichier n'est pas composé d'un tautogramme")
      fSelon
  Sinon e.afficher("Le fichier est vide")
  fSi
=end

a = File.readlines("Exo1test.txt")
i = 0
toto = false
a.each do |x|
  totocar = x[0][0]
  x.split.each {|y| y[0] == totocar ? toto = true  : (toto = false ; break)}
end
toto ? (puts "Le fichier contient un tautogramme") : (puts "Le fichier ne contient pas de tautogramme.")
