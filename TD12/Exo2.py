# -*- coding: utf-8 -*-

"""
action LesCarrés(Consulté N : entier >= 0, L : réel > 0, D: Réel > 0, Modifié M : machine-tracée )
    // Effet :Trace al figure d'ordre N, la longueur du c^oté du carré extérieur est L
    // EI : pe = basse, pp = position de l'angle inférieur gauche du carré extérieur, cap = 0
    // EF : pe = basse, pp = position de l'angle inférieur gauche du carré extérieur, cap = 0
    
    Lexique de LesCarrés
        N : Entier >= 0    // paramètre - Nombre de carrés restant à tracer
        L : Réel > 0       // paramètre - Longueur du côté
        R : Réel > 0       // paramètre - Différence du côté entre les carrés
        M : Machine-tracée // paramètre
    
    Algorithme de LesCarrés
        Si N > 0
        Alors LesCarrés(N-1, L-D, D, M)
        fSi
        
        Répéter 4 fois
            Avancer(L)
            Gauche(90)
        fRépéter
"""

# Python

from turtle import *
import itertools

def lesCarres(n, l, d):
    if n > 0:
        lesCarres(n-1, l-d, d)
    
    for _ in itertools.repeat(None, 4):
        forward(l)
        left(90)
        
        
lesCarres(3, 150, 30)
done()