#encoding: utf-8

=begin
	Lexique
		Données
			s : séquence d'entiers // donnée initiale
		Périphériques
			e : écran // périphérique de sortie
	
	Algorithme
		s.Démarrer
		Si FindeSéquence
		Alors e.afficher(La séquence est vide)
		Sinon Tantque non (s.EC mod 2 != 0) et puis non FindeSéquence
			  s.Avancer
			  fTantque
			  Si FindeSéquence
			  Alors e.afficher(La séquence ne contient que des nombres pairs)
			 fSi
		fSi
=end

#Ruby
s = [2, 4, 6, 8, 10]

s.empty? ? (puts "La séquence est vide") : (a = false ; s.each { |x| a = x and break if x%2 != 0} ; puts "La séquence ne se compose que de nombres pairs" unless a)
