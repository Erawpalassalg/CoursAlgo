#encoding: utf-8

# a)
=begin
	Lexique
		f : Fichier de durées non vide // Donnée initiale
		m : Durée // Moyenne des durées comprises dans f
		i : Entier // Intermédiaire, nombre de durées dans la séquence parcourue
		s : Entier // Intermédiaire, somme des durées ( converties en seconde ) comprises dans f
		e : écran // périphérique de sortie
		
	Algorithme
	  s ← 0
		f.LirePremier
		Tantque non f.FDF faire
			s ← s + (f.EC.h*3600 + f.EC.m*60 + f.EC.s )
			i ← i + 1
			f.LireSuivant
		fTantque
		s ← s / i
		m.h ← s / 3600
		s ← s mod 3600
		m.m ← s / 60
		s ← s mod 60
		m.s ← s
		e.afficher(m.h, m.m, m.s)
=end

# b)
=begin
	Lexique
		f : Fichier de durées non vide // Donnée initiale
    i : Entier // Intermédiaire, nombre de durées inférieures à d dans la séquence parcourue
		m : Durée // Moyenne des durées comprises dans f et inférieures à d
		d : Durée // Donnée initiale
		s : Entier // Intermédiaire, somme des durées ( en secondes ) inférieures à d de la séquence parcourue
		e : ecran // Périphérique de sortie
		
	Algorithme
	s ← 0
	i ← 0
		f.LirePremier
		Tantque non f.FDF faire
		  Si f.EC < d
			Alors s ← s + f.EC.s + f.EC.m*60 + f.EC.h*3600 ; i ← i + 1
			fSi
			f.LireSuivant
		fTantque
		s ← s / i
    m.h ← s / 3600
    s ← s mod 3600
    m.m ← s / 60
    s ← s mod 60
    m.s ← s
		
		e.afficher(m.h, m.m, m.s)
=end