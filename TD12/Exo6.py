# -*- coding: utf-8 -*-

"""
fonction VolumePyramide(b : Entier > 0, d : Entier > 0 ) → Entier > 0
  //VolumePyramide(b, d) désigne le volume d'une pyramide à degrés de base b rt de hauteur/largeur d'un degré d
  
  Algorithme de VolumePyramide
    a ← 0
    Si b - (d*2) > d
    Alors a ← VolumePyramide(b-(2*d), d)
    fSi
    
    renvoyer(a + (b*b*d)
"""

def volpir(b,d):
    a = 0
    if b - (d*2) > d:
        a = volpir(b-(2*d), d)
    return(a + (b*b*d))

print(volpir(10,3))