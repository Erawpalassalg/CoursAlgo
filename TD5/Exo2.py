# -*- coding: utf-8 -*-
"""

 Lexique partagé
 		Machine-tracés
			m : machine tracés
		Périphériques :
			e : écran // périphérique de sortie
			cl : clavier // périphérique d'entrée



 action DessinerCarré ( consultés P : Point, Long : Réel > 0, modifié m : machine-tracés)
	//Effet : dessine à l'aide de ma machine-tracés m un carré de longeur Long, à partir du point P et dont le 
		segment P-P1 constitue le bord gauche.
	// EI : écran et plume indifférents
	// EF : un carré de côté Long est ajouté à l'écran, état de la plume : position haute, cap: a0 (inchangé)
		, pp: P
	
	Lexique de DessinerCarré
		Données
			P : Point // départ du dessin sur l'écran
			Long : Réel // Taille de tous les segments du carré
			
	Algorithme de DessinerCarré
		m.lever
		m.positionner(P)
		m.Baisser
		répéter 4 fois
			m.Av(Long)
			m.Droite(90)
		frépéter
		m.lever
		
		
		
 action DessinerRectangle ( consultés P : Point, Long : Réel > 0, Larg : Réel > 0, modifié m : machine-tracés)
	//Effet : dessine à l'aide de ma machine-tracés m un rectangle de longeur Long et de largeur Larg, à partir du point
		P et dont le segment P-P1 constitue le bord gauche.
	// EI : écran et plume indifférents
	// EF : un rectangle de longueur Long et de largeur Larg est ajouté à l'écran, état de la plume : position baissée,
		sinon identique à l'état initial
	
	Lexique de DessinerRectangle
		Données
			P : Point // départ du dessin sur l'écran
			Long : Réel // Taille des deux segments composant la longueur
			Larg : Réel // Taille des deux segments composant la largeur
			
	Algorithme de DessinerRectangle
		m.lever
		m.positionner(P)
		m.Baisser
		répéter 2 fois
			m.Av(Larg)
			m.Droite(90)
			m.Av(Long)
			m.Droite(90)
		frépéter
		m.lever



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
		Actions
			DessinerCarré(P, Long, m)
			AvancerPoint(px, py, P)
			DessinerRectangle(P, Long, Larg, m)
		Données
			S : Point // départ du dessin sur l'écran
			L : Réel // Taille de la base de la maison
			PI : Point // Intermédiaire
			Z : Réel // Intermédiaire, quart de L
			
	Algorithme de DessinerMaison
		//On considère le 0 trigonométrique	
			
		Z ← L/4
		
		m.Vider
		m.Gauche(90)
		DessinerCarré(S, L)
		PI.x ← S.x + L/3
		PI.y ← S.y
		DessinerCarré(PI, L/3)
		PI.x ← S.x
		AvancerPoint(L/6, (L/2+L/6), PI)
		DessinerCarré(PI, L/4)
		AvancerPoint((L/4 + L/6), 0, PI)
		DessinerCarré(PI, L/4)
		PI.x ← S.x - L/8
		PI.y ← S.y + L
		répéter 4 fois
			m.DessinerRectangle(PI, (L+Z), L/12)
			AvancerPoint(L/8, L/12, PI)
			Z ← Z - L/4
		frépéter
		
	
	
	
	
	Lexique principal
		Action
			DessinerMaison(S, L, m)
		Données
		start : Point // Point de départ
		length : Réel // Longueur > 0	
		
	Algorithme principal	
		e.afficher("Veuillez entrer la longueur de la base")
		cl.saisir(length)
		e.afficher("Veuillez entrer le point de départ de votre dessin)
		cl.saisir(start.x, start.y)
		
		DessinerMaison(start, length)
"""

# Python

from turtle import *

class Point:
	def __init__(self, x, y):
		self.x = 0
		self.y = 0

def dessinerCarre(P, Long):
	up()
	goto(P.x, P.y)
	down()
	for i in range(4):
		forward(Long)
		right(90)
	up()
		
def dessinerRectangle(P, Long, Larg):
	up()
	goto(P.x, P.y)
	down()
	for i in range(2):
		forward(Larg)
		right(90)
		forward(Long)
		right(90)
	up()
		
def avancerPoint(px, py, P):
	P.x = P.x + px
	P.y = P.y + py

def dessinerMaison(S, L):
	Z = L/4
	PI = Point(S.x, S.y)
	
	reset()
	left(90)                                      #Position la pointe vers le haut
	dessinerCarre(S, L)                           #Dessine le premier carré, base de la maison
	avancerPoint(L/3, 0, PI)
	dessinerCarre(PI, L/3)                        #Second carré : la porte
	PI.x = S.x
	avancerPoint(L/6, (L/2+L/6), PI)
	dessinerCarre(PI, L/4)                        #Les deux fenêtres ( fenêtre N°1 )
	avancerPoint((L/4 + L/6), 0, PI)
	dessinerCarre(PI, L/4)                        # fenêtre N°2
	PI.x = S.x - L/8
	PI.y = S.y + L
	for i in range(4):
		dessinerRectangle(PI, (L+Z), L/12)		  #Le toit
		avancerPoint(L/8, L/12, PI)
		Z = Z - L/4
		

length = int(input("Entrez la longueur de la base"))
sx = float(input("Entrez les point de départ X puis Y de votre dessin"))
sy = float(input())

start = Point(sx, sy)

dessinerMaison(start, length)
done()