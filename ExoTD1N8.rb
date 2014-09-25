#encoding: utf-8

=begin
  Lexique
  
    Données
      d = Réel entre 0 et 50 // donnée utilisateur
    Périphériques
      cl = clavier // périphérique d'entrée
      e = écran // périphérique de sortie
    Variables
      b50 = Entier entre 0 et 1 // nombre de billet de cinquante euros
        r1 = Réel entre 0 et 49.99 // reste de la division d/50
      b20 = Entier entre 0 et 2 // nombre de billets de vingt euros
        r2 = Réel entre 0 et 19.99 // reste de la division r1/20
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
      // d = ?, b50 = ?, b20 = ?, b10 = ?, b5 = ?, p2 = ?, p1 = ?, p50c = ?, p20c = ?, p10c = ?, p5c = ?, p2c = ?, p1c = ?, 
      // r1 = ? r2 = ?, r3 = ?, r4 = ?, r5 = ?, r6 = ?, r7 = ?, r8 = ?, r9 = ?, r10 = ?, r11 = ?
    e.afficher("Veuillez entrer un nombre situé entre 0 et 50 à convertir.")
    cl.saisir(d)
       // d = d1, b50 = ?, b20 = ?, b10 = ?, b5 = ?, p2 = ?, p1 = ?, p50c = ?, p20c = ?, p10c = ?, p5c = ?, p2c = ?, p1c = ?
       // r1 = ? r2 = ?, r3 = ?, r4 = ?, r5 = ?, r6 = ?, r7 = ?, r8 = ?, r9 = ?, r10 = ?, r11 = ?
    b50 = d/50
    r1 = d%50
       // d = d1, b50 = b50a, b20 = ?, b10 = ?, b5 = ?, p2 = ?, p1 = ?, p50c = ?, p20c = ?, p10c = ?, p5c = ?, p2c = ?, p1c = ?
       // r1 = r10a r2 = ?, r3 = ?, r4 = ?, r5 = ?, r6 = ?, r7 = ?, r8 = ?, r9 = ?, r10 = ?, r11 = ?
    b20 = r1/20
    r2 = r1%20
       // d = d1, b50 = b50a, b20 = b20a, b10 = ?, b5 = ?, p2 = ?, p1 = ?, p50c = ?, p20c = ?, p10c = ?, p5c = ?, p2c = ?, p1c = ?
       // r1 = r1a r2 = r2a, r3 = ?, r4 = ?, r5 = ?, r6 = ?, r7 = ?, r8 = ?, r9 = ?, r10 = ?, r11 = ?
    b10 = r2/10
    r3 = r2%10
       // d = d1, b50 = b50a, b20 = b20a, b10 = b10a, b5 = ?, p2 = ?, p1 = ?, p50c = ?, p20c = ?, p10c = ?, p5c = ?, p2c = ?, p1c = ?
       // r1 = r1a r2 = r2a, r3 = r3a, r4 = ?, r5 = ?, r6 = ?, r7 = ?, r8 = ?, r9 = ?, r10 = ?, r11 = ?
    b5 = r3/5
    r4 = r3%5
       // d = d1, b50 = b50a, b20 = b20a, b10 = b10a, b5 = b5a, p2 = ?, p1 = ?, p50c = ?, p20c = ?, p10c = ?, p5c = ?, p2c = ?, p1c = ?
       // r1 = r1a r2 = r2a, r3 = r3a, r4 = r4a, r5 = ?, r6 = ?, r7 = ?, r8 = ?, r9 = ?, r10 = ?, r11 = ?
    p2 = r4/2
    r5 = r4%2
       // d = d1, b50 = b50a, b20 = b20a, b10 = b10a, b5 = b5a, p2 = p2a, p1 = ?, p50c = ?, p20c = ?, p10c = ?, p5c = ?, p2c = ?, p1c = ?
       // r1 = r1a r2 = r2a, r3 = r3a, r4 = r4a, r5 = r5a, r6 = ?, r7 = ?, r8 = ?, r9 = ?, r10 = ?, r11 = ?
    p1 = r5/1
    r6 = r5%1
       // d = d1, b50 = b50a, b20 = b20a, b10 = b10a, b5 = b5a, p2 = p2a, p1 = p1a, p50c = ?, p20c = ?, p10c = ?, p5c = ?, p2c = ?, p1c = ?
       // r1 = r1a r2 = r2a, r3 = r3a, r4 = r4a, r5 = r5a, r6 = r6a, r7 = ?, r8 = ?, r9 = ?, r10 = ?, r11 = ?
    p50c = r6/0.50
    r7 = r6%0.50
       // d = d1, b50 = b50a, b20 = b20a, b10 = b10a, b5 = b5a, p2 = p2a, p1 = p1a, p50c = p50ca, p20c = ?, p10c = ?, p5c = ?, p2c = ?, p1c = ?
       // r1 = r1a r2 = r2a, r3 = r3a, r4 = r4a, r5 = r5a, r6 = r6a, r7 = r7a, r8 = ?, r9 = ?, r10 = ?, r11 = ?
    p20c = r7/0.20
    r8 = r7%0.20
       // d = d1, b50 = b50a, b20 = b20a, b10 = b10a, b5 = b5a, p2 = p2a, p1 = p1a, p50c = p50ca, p20c = p20ca, p10c = ?, p5c = ?, p2c = ?, p1c = ?
       // r1 = r1a r2 = r2a, r3 = r3a, r4 = r4a, r5 = r5a, r6 = r6a, r7 = r7a, r8 = r8a, r9 = ?, r10 = ?, r11 = ?
    p10c = r8/0.10
    r9 = r8%0.10
       // d = d1, b50 = b50a, b20 = b20a, b10 = b10a, b5 = b5a, p2 = p2a, p1 = p1a, p50c = p50ca, p20c = p20ca, p10c = p10ca, p5c = ?, p2c = ?, p1c = ?
       // r1 = r1a r2 = r2a, r3 = r3a, r4 = r4a, r5 = r5a, r6 = r6a, r7 = r7a, r8 = r8a, r9 = r9a, r10 = ?, r11 = ?
    p5c = r9/0.5
    r10 = r9%0.5
       // d = d1, b50 = b50a, b20 = b20a, b10 = b10a, b5 = b5a, p2 = p2a, p1 = p1a, p50c = p50ca, p20c = p20ca, p10c = p10ca, p5c = p5ca, p2c = ?, p1c = ?
       // r1 = r1a r2 = r2a, r3 = r3a, r4 = r4a, r5 = r5a, r6 = r6a, r7 = r7a, r8 = r8a, r9 = r9a, r10 = r10a, r11 = ?
    p2c = r10/0.2
    r11 = r10%0.1
       // d = d1, b50 = b50a, b20 = b20a, b10 = b10a, b5 = b5a, p2 = p2a, p1 = p1a, p50c = p50ca, p20c = p20ca, p10c = p10ca, p5c = p5ca, p2c = p5ca, p1c = r11a
       // r1 = r1a r2 = r2a, r3 = r3a, r4 = r4a, r5 = r5a, r6 = r6a, r7 = r7a, r8 = r8a, r9 = r9a, r10 = r10a, r11 = r11a
=end

# Ruby code

puts "Veuillez entrer un nombre situé entre 0 et 50 à convertir."
d = gets.chomp.to_i

[...]
