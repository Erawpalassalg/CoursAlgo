#encoding: utf-8

=begin
	Lexique
		Données
			x : Réel // Donnée initiale
			a : Réel // Intermédiaire
		Périphériques
			e : écran // périphérique de sortie
			
	Algorithme
	a ← x/2
		Répéter 6 fois
			a ← (a + x/a)/2
		fRépéter
=end

# Ruby

x = 15236.2365

a = x/2

6.times { a = (a+x/a)/2 }
puts a