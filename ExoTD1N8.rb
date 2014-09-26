#encoding: utf-8

=begin
  Lexique
  
    Données
      d = Réel entre 0 et 50 // donnée utilisateur
    Périphériques
      cl = clavier // périphérique d'entrée
      e = écran // périphérique de sortie
    Variables
      b20 = Entier entre 0 et 2 // nombre de billets de vingt euros
        r2 = Réel entre 0 et 19.99 // reste de la division d/20
      b10 = Entier entre 0 et 1 // nombre de billet de dix euros
        r3 = Réel entre 0 et 9.99 // reste de la division r2/10
      b5 = Entier entre 0 et 1 // nombre de billets de cinq euros
        r4 = Réel entre 0 et 4.99 // reste de la division r3/5
      p2 = Entier entre 0 et 2 // nombre de pièces de deux euros
        r5 = Réel entre 0 et 1.99 // reste de la division r4/2
      p1 = Entier entre 0 et 1 // nombre de pièces de un euro
        r6 = Réel entre 0 et 0.99 // reste de la division r5/1
      p50c = Entier entre 0 et 1 // nombre de pièces de 50 centimes
        r7 = Réel entre 0 et 0.49 // reste de la division r6/0.50
      p20c = Entier entre 0 et 2 // nombre de pièces de 20 centimes
        r8 = Réel entre 0 et 0.19 // reste de la division r7/0.20
      p10c = Entier entre 0 et 1 // nombre de pièces de 10 centimes
        r9 = Réel entre 0 et 0.9 // reste de la division r8/0.10
      p5c = Entier entre 0 et 1 // nombre de pièces de 5 centimes
        r10 = Réel entre 0 et 0.4 // reste de la division r9/0.5
      p2c = Entier entre 0 et 2 // nombre de pièces de 2 centimes
        r11 = Réel entre 0 et 0.1 // reste de la division r10/0.2 et nombre de pièces de 1 centime
      
      
  Algorithme
      // d = ?, b20 = ?, b10 = ?, b5 = ?, p2 = ?, p1 = ?, p50c = ?, p20c = ?, p10c = ?, p5c = ?, p2c = ?, p1c = ?, 
      // r2 = ?, r3 = ?, r4 = ?, r5 = ?, r6 = ?, r7 = ?, r8 = ?, r9 = ?, r10 = ?, r11 = ?
    e.afficher("Veuillez entrer un nombre situé entre 0 et 50 à convertir.")
    cl.saisir(d)
       // d = d1, b20 = ?, b10 = ?, b5 = ?, p2 = ?, p1 = ?, p50c = ?, p20c = ?, p10c = ?, p5c = ?, p2c = ?, p1c = ?
       // r2 = ?, r3 = ?, r4 = ?, r5 = ?, r6 = ?, r7 = ?, r8 = ?, r9 = ?, r10 = ?, r11 = ?
    b20 ← d div 20
    r2 ← d mod 20
       // d = d1, b20 = b20a, b10 = ?, b5 = ?, p2 = ?, p1 = ?, p50c = ?, p20c = ?, p10c = ?, p5c = ?, p2c = ?, p1c = ?
       // r2 = r2a, r3 = ?, r4 = ?, r5 = ?, r6 = ?, r7 = ?, r8 = ?, r9 = ?, r10 = ?, r11 = ?
    e.afficher(b20" billets de vingt euros")
    b10 ← r2 div 10
    r3 ← r2 mod 10
       // d = d1, b20 = b20a, b10 = b10a, b5 = ?, p2 = ?, p1 = ?, p50c = ?, p20c = ?, p10c = ?, p5c = ?, p2c = ?, p1c = ?
       // r2 = r2a, r3 = r3a, r4 = ?, r5 = ?, r6 = ?, r7 = ?, r8 = ?, r9 = ?, r10 = ?, r11 = ?
    e.afficher(b10" billets de dix euros")
    b5 ← r3 div 5
    r4 ← r3 mod 5
       // d = d1, b20 = b20a, b10 = b10a, b5 = b5a, p2 = ?, p1 = ?, p50c = ?, p20c = ?, p10c = ?, p5c = ?, p2c = ?, p1c = ?
       // r2 = r2a, r3 = r3a, r4 = r4a, r5 = ?, r6 = ?, r7 = ?, r8 = ?, r9 = ?, r10 = ?, r11 = ?
    e.afficher(b5" billets de cinq euros")
    p2 ← r4 div 2
    r5 ← r4 mod 2
       // d = d1, b20 = b20a, b10 = b10a, b5 = b5a, p2 = p2a, p1 = ?, p50c = ?, p20c = ?, p10c = ?, p5c = ?, p2c = ?, p1c = ?
       // r2 = r2a, r3 = r3a, r4 = r4a, r5 = r5a, r6 = ?, r7 = ?, r8 = ?, r9 = ?, r10 = ?, r11 = ?
    e.afficher(p2" pièces de deux euro")
    p1 ← r5 div 1
    r6 ← r5 mod 1
       // d = d1, b20 = b20a, b10 = b10a, b5 = b5a, p2 = p2a, p1 = p1a, p50c = ?, p20c = ?, p10c = ?, p5c = ?, p2c = ?, p1c = ?
       // r2 = r2a, r3 = r3a, r4 = r4a, r5 = r5a, r6 = r6a, r7 = ?, r8 = ?, r9 = ?, r10 = ?, r11 = ?
    e.afficher(p1" pièces de un euro")
    p50c ← pent(r6 div 0.50)
    r7 ← r6 mod 0.50
       // d = d1, b20 = b20a, b10 = b10a, b5 = b5a, p2 = p2a, p1 = p1a, p50c = p50ca, p20c = ?, p10c = ?, p5c = ?, p2c = ?, p1c = ?
       // r2 = r2a, r3 = r3a, r4 = r4a, r5 = r5a, r6 = r6a, r7 = r7a, r8 = ?, r9 = ?, r10 = ?, r11 = ?
    e.afficher(p50c" pièces de 50 centimes")
    p20c ← pent(r7 div 0.20)
    r8 ← r7 mod 0.20
       // d = d1, b20 = b20a, b10 = b10a, b5 = b5a, p2 = p2a, p1 = p1a, p50c = p50ca, p20c = p20ca, p10c = ?, p5c = ?, p2c = ?, p1c = ?
       // r2 = r2a, r3 = r3a, r4 = r4a, r5 = r5a, r6 = r6a, r7 = r7a, r8 = r8a, r9 = ?, r10 = ?, r11 = ?
    e.afficher(p20c" pièces de 20 centimes")
    p10c ← pent(r8 div 0.10)
    r9 ← r8 mod 0.10
       // d = d1, b20 = b20a, b10 = b10a, b5 = b5a, p2 = p2a, p1 = p1a, p50c = p50ca, p20c = p20ca, p10c = p10ca, p5c = ?, p2c = ?, p1c = ?
       // r2 = r2a, r3 = r3a, r4 = r4a, r5 = r5a, r6 = r6a, r7 = r7a, r8 = r8a, r9 = r9a, r10 = ?, r11 = ?
    e.afficher(p10c" pièces de 10 centimes")
    p5c ← pent(r9 div 0.05)
    r10 ← r9 mod 0.05
       // d = d1, b20 = b20a, b10 = b10a, b5 = b5a, p2 = p2a, p1 = p1a, p50c = p50ca, p20c = p20ca, p10c = p10ca, p5c = p5ca, p2c = ?, p1c = ?
       // r2 = r2a, r3 = r3a, r4 = r4a, r5 = r5a, r6 = r6a, r7 = r7a, r8 = r8a, r9 = r9a, r10 = r10a, r11 = ?
    e.afficher(p5c" pièces de 5 centimes")
    p2c ← pent(r10 div 0.02)
    r11 ← r10 mod 0.01
       // d = d1, b20 = b20a, b10 = b10a, b5 = b5a, p2 = p2a, p1 = p1a, p50c = p50ca, p20c = p20ca, p10c = p10ca, p5c = p5ca, p2c = p5ca, p1c = r11a
       // r2 = r2a, r3 = r3a, r4 = r4a, r5 = r5a, r6 = r6a, r7 = r7a, r8 = r8a, r9 = r9a, r10 = r10a, r11 = r11a
    e.afficher(p2c" pièces de 2 centimes")
    e.afficher(r11" pièces de 1 centime")
=end

# Ruby code

puts "Veuillez entrer un nombre situé entre 0 et 50 à convertir."
d = gets.chomp.to_f                                                   # Prendre la valeur entrée par l'utilisateur et la transformée en float ( nombre réel )

b20 = (d/20).to_i                                                     # Premier calcul, ne pas oublier de ne stocker que la partie entière du résultat.
                                                                      # En ruby les entiers sont représentés par les "int", donc on convertit simplement le type en int
r2 = d%20                                                             # Puis on récupère le reste de la division afin de continuer les calculs ...
puts "#{b20} billet de 20 euros"
b10 = (r2/10).to_i
r3 = r2%10
puts "#{b10} billet de 10 euros"
b5 = (r3/5).to_i
r4 = r3%5
puts "#{b5} billet de 5 euros"
p2 = (r4/2).to_i
r5 = r4%2
puts "#{p2} pièce de 2 euros"
p1 = (r5/1).to_i
r6 = r5%1
puts "#{p1} pièce de 1 euro"
p50c = (r6/0.50).to_i
r7 = r6%0.50
puts "#{p50c} pièce de 50 centimes"
p20c = (r7/0.20).to_i
r8 = r7%0.20
puts "#{p20c} pièce de 20 centimes"
p10c = (r8/0.10).to_i
r9 = r8%0.10
puts "#{p10c} pièce de 10 centimes"
p5c = (r9/0.05).to_i
r10 = r9%0.05
puts "#{p5c} pièce de 5 centimes"
p2c = (r10/0.02).to_i
r11 = ((r10%0.02)*100).to_i
puts "#{p2c} pièce de 2 centimes"
puts "#{r11} pièce de 1 centime"                                      # Ici simplement pas besoin de refaire le calcul, le reste est automatiquement le nombre de pièces de 1
