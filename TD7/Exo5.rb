#encoding: utf-8

# a)
=begin
	Lexique
		f : Fichier de durées non vide // Donnée initiale
		m : Durée // Moyenne des durées comprises dans f
		i : Entier // Intermédiaire, compteur d'itération et dénominateur
		s : Durée // Intermédiaire, somme des durées comprises dans f
		
	Algorithme
		f.LirePremier
		Tantque non f.FDF faire
			s ← s + f.EC
			i ← i + 1
			f.LireSuivant
		fTantque
		m ← s / i
=end

# b)
=begin
	Lexique
		f : Fichier de durées non vide // Donnée initiale
		d : Durée // Donnée initiale
		s : Durée // Intermédiaire, somme des durées comprises dans f et sous d
		e : ecran // Périphérique de sortie
		
	Algorithme
		f.LirePremier
		Tantque non f.FDF etPuis f.EC < d faire
			s.s ← s.s + f.EC.s
			s.m ← s.m + f.EC.m
			s.h ← s.h + f.EC.h
			f.LireSuivant
		fTantque
		s.m ← s.m + s.s div 60
		s.s ← s.s % 60		
		s.h ← s.h + s.m div 60
		s.m ← s.m %60
		
		e.afficher(s)
=end