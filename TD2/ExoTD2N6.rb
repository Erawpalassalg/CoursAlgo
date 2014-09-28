#encoding: utf-8

=begin
  Lexique
      Données
        a = tableau comprenant 4 entiers de 0 à 1 ou Entier entre 0 et 1111 ou chaine de caractères // représentation en chaine de caractère des entiers de 0 à 1111
      Variables
        m = Entier entre 0 et 1 // chiffre correspondant au bit de poids le plus fort
        c = Entier entre 0 et 1 // chiffre correspondant à l'antépénultième bit de poids le plus fort
        d = Entier entre 0 et 1 // chiffre correspondant au second bit de poids le plus faible
        u = Entier entre 0 et 1 // chiffre correspondant au bit de poids faible
      Périphériques
        cl : clavier // périphérique d'entrée
        e : écran // périphérique de sortie   
        
  Algorithme
  
      // a = ?, m = ?, c = ?, d = ?, u = ?
      
    e.afficher("Veillez entrer un nombre binaire composé de 4 chiffres 1 ou 0")
    cl.saisir(a)
    
      // a = a0 ou a[0,1,2,3], m = ?, c = ?, d = ?, u = ?
      
    si type(a) = Entier
    alors m ← a/1000 ; c ← (a-m*1000)/100 ; d ← ((a-m*1000)-c*100)/10 ; u ← ((a-m*1000)-c*100)-d*10 
    fsi
      
      // a = a0 ou a[0,1,2,3], m = ? ou m0, c = ? ou c0, d = ? ou d0, u = ? ou u0
      
    selon
      type(a) = Tableau : e.afficher("Votre nombre est égal à "a[0]*8 + a[1]*4 + a[2]*2 + a[3])
      type(a) = Entier : e.afficher("Votre nombre est égal à " m*8 + c*4 + d*2 + u)
    fselon
=end

#Ruby

puts "Veillez entrer un nombre binaire composé de 4 chiffre 1 ou 0"
a = gets.chomp

r = %r(, )
a.delete!(a.match(r).to_s)

if a.length == 3
  a = "0" + a
elsif a.length == 2
  a = "00" + a
elsif a.length == 1
  a = "000" + a
end

puts "Votre nombre est égal à " + (a[0].to_i*8 + a[1].to_i*4 + a[2].to_i*2 + a[3].to_i).to_s
