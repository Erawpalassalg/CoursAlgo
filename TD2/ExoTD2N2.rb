#encoding: utf-8

=begin
  Lexique
    Données
      a : Réel // donnée utilisateur
      b : Réel // donnée utilisateur
    Périphériques
      cl : clavier // périphérique d'entrée
      e : écran // périphérique de sortie
      
      
    Algorithme
        // a = ?, b = ?
      e.afficher("Saisissez deux nombres.")
      cl.saisir(a, b)
        // a = a0, b = b0
      si (a > 0 et b < 0) ou (a < 0 et b > 0 )    
        alors e.afficher("Le produit des deux nombres est négatif")
        sinon e.afficher("Le produit des deux nombres est positif ou nul")
      fsi
=end

#Ruby

puts "Entrez deux nombres"
a = gets.chomp.to_f
b = gets.chomp.to_f

if   (a > 0 and b < 0) or (a < 0 and b > 0 ) 
  puts "Le produit des deux nombres est négatif"
else 
  puts "Le produit des deux nombres est positif ou nul"
end