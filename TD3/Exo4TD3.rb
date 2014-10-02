#encoding: utf-8

=begin
  fonction volumeCylindre(r: Réel > 0, h: Réel > 0) -> Réel
    // Renvoie le volume d'un cylindre de hauteur h et de rayon r
    Lexique de volumeCylindre
      Données
        r : Réel // paramètre, longueur du rayon
        h : Réel // paramètre, hauteur du cylindre   
        
    Algorithme de volumeCylindre
    Retourne(r*h*Pi())
        
=end

#Ruby

def volumeCylindre(r, h)
  return (r*h*Math::PI)
end
puts volumeCylindre(32.5, 14.2)

