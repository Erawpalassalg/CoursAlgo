#encoding: utf-8

=begin

  Lexique
    f : fichier de caractères ne contenant que lettres et espaces // Séquence initiale
    prec : Caractère // Valeur de l'élément précédent l'élément courant
    ms : Entier // Nombre de mots se terminant par 's' dans la séquence parcourue
    m : Entier // Nombre de mots dans le fichier
    e : écran // périphérique de sortie
    
    
  Algorithme
    ms ← 0
    m ← 0
    prec ← ' '
    f.LirePremier
    
    Si f.FDF
    Alors e.afficher("Le fichier est vide")
    Sinon
      Tant que non f.FDF faire
        Si f.EC = ' '
        Alors Selon prec
                prec = 's' : ms ← ms +1 ; m ← m + 1 
                prec != ' ' et prec != 's' : m ← m + 1
                prec = ' ' :
              fSelon
        fSi
        prec ← f.EC
        f.LireSuivant
      fTantque
      
      Selon prec
        prec = 's' : ms ← ms +1 ; m ← m + 1 
        prec != ' ' et prec != 's' : m ← m + 1
        prec = ' ' :
      fSelon
      
    fSi
    
    e.afficher("Le fichier comporte", m, " mots")
    e.afficher("Le fichier comporte", ms, "mots se terminant par un 's'")
=end

#Ruby

ms = 0
m = 0
prec = ' '

f = File.readlines("Exo4test.txt")

f.each do |x|
  x.split.each do |y|
    if y[-1] == 's'
      ms += 1
    end
    m += 1
  end
end

puts "Le fichier comporte #{m} mots"
puts "Le fichier comporte #{ms} mots se terminant par un 's'"