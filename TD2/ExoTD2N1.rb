#encoding: utf-8

=begin
  Lexique
    Données
      vb : chaîne de caractère représentant un verbe // donnée utilisateur
    Périphériques
      cl : clavier // périphérique d'entrée
      e : écran // périphérique de sortie
    Variable de stockage
      k : chaîne de 2 caractères // comparée à "er", elle indique si vb est un verbe du er groupe ou non
  
  Algorithme
      //vb = ?, k = ?
    e.afficher("Veuillez entrer un verbe français.")
    cl.saisir(vb)
      // vb = "vb0", k = ?
    k ← SousChaine(vb, -2, -1)
      // vb = "vb0", k = "k0"
    selon
      k = "er" : e.afficher(vb, " est un verbe du premier groupe")
      k != "er" : e.afficher (vb, " n'est pas un verbe du premier groupe")
    fselon
=end

#Ruby

puts "Veuillez entrer un verbe français."
vb = gets.chomp

k = vb[-2..-1]
if k == "er" and vb != "aller"
  puts "#{vb} est un verbe du premier groupe"
else
  puts "#{vb} n'est pas un verbe du premier groupe"
end
