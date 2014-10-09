#encoding: utf-8

=begin
  Lexique partagé
    Point : type agrégat
        x : Réel // position absices
        y : Réel // position ordonnées
    fagrégat
    
    
  Lexique de distanceEntrePoints(a : Point, b : Point) -> Réel
      // Calcule et renvoie la distance séparant deux points d'un plan
    Données
      a : Point // paramètre
      b : Point // paramètre
  Algorithme de distanceEntrePoints
    Renvoie racine(((b.x - a.x) * (b.x - a.x))+((b.y - a.y) * (b.y - a.y)))
=end