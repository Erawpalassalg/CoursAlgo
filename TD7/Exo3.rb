#encoding: utf-8

=begin
	Lexique
		f : Fichier // donnée initiale
		c : caractère // donnée intermédiaire
		e : écran // péripéhrique de sortie
	Algorithme
		f.LirePremier
		Si f.FDF
		Alors e.afficher(Le fichier est vide)
		Sinon Tantque non f.FDF faire
				c ← f.EC
				f.LireSuivant
			  fTantque
			  e.afficher(c " est le dernier caractère du fichier")
		fSi
		
=end