#encoding: utf-8

=begin
	Lexique
		f : Fichier de chaînes de caractères non vide // Donnée initiale
		i : Entier // Intermédiaire, nombre de 'a' rencontrés dans f.EC
		n : Entier // Intermédiaire, 
		nc : Entier // Intermédiaire, nombre de chaînes rencontrées comportant au moins 3 'a'
		e : écran // Périphérique de sortie
		
	Algorithme
		f.LirePremier
		nc ← 0
		Tantque non f.FDF faire
			n ← 1
			i ← 0
			Tantque n <= longueur(f.EC) faire
				Si nième(f.EC, n) = 'a' ou nième(f.EC, n) = 'A'
				Alors i ← i + 1
				fSi
				n ← n + 1
			fTantque
			Si i >= 3
			Alors e.afficher(f.EC) ; nc ← nc + 1
			fSi
			f.LireSuivant
		fTantque
		e.afficher("Il y a " nc " chaînes comportant au moins 3 fois la lettre 'a'")
		
=end