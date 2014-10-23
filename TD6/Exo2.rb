#encoding: utf-8

=begin

  Lexique
    Données
      n : Réel >=0 // Donnée initiale
      r : Réel // intermédiaire, somme des puissances de 2 comprises entre 0 et i
      p : Réel // intermédiaire, valeur de 2 à la puissance i
    Périphériques
      cl : clavier // périphérique d'entrée
      e : écran // périphérique de sortie
    
  Algorithme
      //r = ? ; p = ?
    r ← 1 ; p ← 1
      // r = r0 ; p = p0
    répéter n fois
      p ← p*2
      r ← r + p
        // r = r0*2^p ; p = p0*2^p
  
=end

# Ruby
puts "entrez le nombre des puissances de 2"
n = gets.to_i
p, i, r = 1, 1

n.times do
  p *= 2
  r += p
end

puts r