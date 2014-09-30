#encoding: utf-8

=begin
 Lexique
    Données
      nom : chaîne de charactères // nom de l'élève, donnée utilisateur
      a : Réel // première note, donnée utilisateur
      b : Réel // seconde note, donnée utilisateur
      c : Réel // troisième note, donnée utilisateur
    Variables
      m1 : Réel // Moyenne des trois notes
      m2 : Réel // Moyenne de la meilleure et de la plus mauvaise note
      nmax : Réel // note maximale
      nmin : Réel // note minimale
    Périphériques
      cl : clavier // périphérique d'entrée
      e : écran // périphérique de sortie  
      
  Algorithme
  
      // nom = ?, a = ?, b = ?, c = ?, m1 = ?, m2 = ?, nmax = ?, nmin = ?
      
    e.afficher("Veuillez entrer le nom de l'élève")
    cl.saisir(nom)
    e.afficher("Veuillez entrer les trois notes")
    cl.saisir(a, b, c)
    
      // nom = "nom0", a = a0, b = b0, c = c0, m1 = ?, m2 = ?, nmax = ?, nmin = ?
      
    m1 ← (a+b+c)/3
    
      // nom = "nom0", a = a0, b = b0, c = c0, m1 = m10, m2 = ?, nmax = ?, nmin = ?
      // relation m1 = (a+b+c)/3
      
    selon a, b, c, nmax
      a >= b et a >= c : nmax ← a
      b > a et b >= c  : nmax ← b
      c > a et c > b   : nmax ← c
    fselon
    
      // nom = "nom0", a = a0, b = b0, c = c0, m1 = m10, m2 = ?, nmax = nmax0, nmin = ?
    
    selon a, b, c, nmin
      a <= b et a <= c : nmin ← a
      b < a et b <= c  : nmin ← b
      c < a et c < b   : nmin ← c
    fselon

      // nom = "nom0", a = a0, b = b0, c = c0, m1 = m10, m2 = ?, nmax = nmax0, nmin = nmin0
    
    m2 ← (nmax + nmin)/2

      // nom = "nom0", a = a0, b = b0, c = c0, m1 = m10, m2 = m20, nmax = nmax0, nmin = nmin0
      
    selon
      m1 >= m2 : cl.afficher("La note de l'élève ", nom, " est ", m1)
      m2 < m1  : cl.afficher("La note de l'élève ", nom, " est ", m2)
    fselon
=end

# Ruby

puts "Veuillez entrer le nom de l'élève"
nom = gets.chomp
puts "Veuillez entrer les trois notes"
a = gets.chomp.to_f
b = gets.chomp.to_f
c = gets.chomp.to_f

# On commence par le plus simple: calculer la moyenne des 3

m1 = (a+b+c)/3

# Puis il faut définir quel chiffre est le plus grand entre a, b et c

if a >= b and a >= c                               #Bien faire attention aux égalités, il ne peux y avoir deux réponses vraies
  nmax = a
elsif b > a and b >= c
  nmax = b
elsif c > a and c > b
  nmax = c
end

# On détermine ensuite le minimum d'a, b et c

if a <= b and a <= c
  nmin = a
elsif b < a and b <= c
  nmin = b
elsif c < a and c < b
  nmin = c
end

# On fait ensuite la moyenne entre le minimum et le maximum

m2 = (nmin + nmax)/2

# Puis on détermine le plus grand des deux moyennes possibles

if m1 >= m2                                     # Si il y a égalité, elle est gérée ici
  puts "La note de l'élève #{nom} est #{m1}"
elsif m2 > m1
  puts "La note de l'élève #{nom} est #{m2}"
end
