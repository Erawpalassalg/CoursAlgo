"""
	Lexique partagé
		Périphériques :
			e : écran // périphérique de sortie
			cl : clavier // périphérique d'entrée

 action DessinerCarré ( consultés P : Point, Long : Réel > 0, modifié m : machine-tracés)
	//Effet : dessine à l'aide de ma machine-tracés m un carré de longeur Long, à partir du point P et dont le 
		segment P-P1 constitue le bord gauche.
	// EI : écran et plume indifférents
	// EF : un carré de côté Long est ajouté à l'écran, état de la plume : position baissée, cap: a0 (inchangé)
		, pp: P
	
	Lexique de DessinerCarré
		Machine-tracés
			m : machine tracés
		Données
			P : Point // départ du dessin sur l'écran
			Long : Réel // Taille de tous les segments du carré
			
	Algorithme de DessinerCarré
		m.Baisser
		m.Positionner(P)
		répéter 4 fois
			m.Av(Long)
			m.Droite(90)
		frépéter
		
 action DessinerRectangle ( consultés P : Point, Long : Réel > 0, Larg : Réel > 0, modifié m : machine-tracés)
	//Effet : dessine à l'aide de ma machine-tracés m un rectangle de longeur Long et de largeur Larg, à partir du point
		P et dont le segment P-P1 constitue le bord gauche.
	// EI : écran et plume indifférents
	// EF : un rectangle de longueur Long et de largeur Larg est ajouté à l'écran, état de la plume : position baissée,
		sinon identique à l'état initial
	
	Lexique de DessinerRectangle
		Machine-tracés
			m : machine tracés
		Données
			P : Point // départ du dessin sur l'écran
			Long : Réel // Taille des deux segments composant la longueur
			Larg : Réel // Taille des deux segments composant la largeur
			
	Algorithme de DessinerRectangle
		m.Baisser
		répéter 2 fois
			m.Av(Larg)
			m.Droite(90)
			m.Av(Long)
			m.Droite(90)
		frépéter

	action : AvancerPoint(consultés px : Réel, py : Réel, modifié P : Point)
		//Effet : Modifie les coordonnées d'un point, le faisant avancer de px sur xet de py sur y
		//EI : P.x = a0, P.y = b0
		//EF : P.x = (a0 + px), P.y = (b0 + py)
		
		Lexique de AvancerPoint
			Données
				P : Point // point dont les coordonnées sont à modifier
				py : Réel // Ajout aux ordonnées
				px : Réel // Ajout aux abscisses
		
		Algorithme de AvancerPoint
			P.x ← P.x + px
			P.y ← P.y + py
		
		
 action DessinerMaison ( consultés S : Point, L : Réel > 0, modifié m :machine-tracé)
	//Effet : dessine à l'aide de ma machine-tracés m la maison de taille L, à partir du point S
	// EI : écran et plume indifférents
	// EF : la maison est dessinée ( ajoutée à l'écran de m), état de la plume :
	
	Lexique de DessinerMaison
		Machine-tracés
			m : machine tracés
		Données
			S : Point // départ du dessin sur l'écran
			L : Réel // Taille de la base de la maison
			PI : Point // Intermédiaire
			Z : Réel // Intermédiaire, quart de L
			
	Algorithme de DessinerMaison
		//On considère le 0 trigonométrique	
			
		Z ← L/4
		
		m.Vider
		m.DessinerCarré(S, L)
		PI.x ← S.x + L/3
		PI.y ← S.y
		m.DessinerCarré(PI, L/3)
		AvancerPoint(L/6, (L/2+L/6), PI)
		m.DessinerCarré(PI, L/4)
		AvancerPoint((L/4 + L/6), 0, PI)
		m.DessinerCarré(PI, L/4)
		PI.x ← S.x - L/8
		PI.y ← S.y + L
		répéter 4 fois
			m.DessinerRectangle(PI, (L+Z), L/12)
			AvancerPoint(L/8, L/12, PI)
			Z ← Z - L/4
		frépéter
		
	
	Lexique principal
		start : Point // Point de départ
		length : Réel // Longueur > 0
		
	Algorithme principal	
		e.afficher("Veuillez entrer la longueur de la base")
		cl.saisir(length)
		e.afficher("Veuillez entrer le point de départ de votre dessin)
		cl.saisir(start.x, start.y)
		
		DessinerMaison(start, length)
"""