#encoding: utf-8

=begin
	fonction SomChiffres(N : Entier >= 0 ) → Entier >= 0
		// Renvoie la somme des chiffres composant l'entier N
		
		Lexique de SomChiffres
			N : Entier >= 0 // Donnée initiale
			num : Entier >= 0 // Donnée intermédiaire
			s : Entier >= 0 // Donnée renvoyée, somme des chiffres de N
			d : Entier >=0 // Intermédiaire, dénominateur
	
		Algorithme de SomChiffres
			num ← N
			s ← 0
			Tantque d < N faire
				d ← d*10
			fTantque
			
			Tantque d != 1 faire
				d ← d div 10
				s ← s + num div d
				num ← num mod d
			fTantque
			
			Renvoyer s
=end

def somChiffres(n)
	num = n
	s = 0
	d = 1
	d *= 10 while d < n
	
	while d != 1
		d /= 10
		s += num/d
		num %= d
	end
	return s
end

puts "Entrez un nombre"
i = gets.to_i

puts somChiffres(i)