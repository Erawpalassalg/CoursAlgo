#encoding: utf-8

=begin
  Lexique partagé
    Point : type agrégat
        x : Réel // position absices
        y : Réel // position ordonnées
    fagrégat
    
    
  fonction distanceEntrePoints(a : Point, b : Point) -> Réel
       // Calcule et renvoie la distance séparant deux points d'un plan
    Lexique de distanceEntrePoints
      a : Point // paramètre
      b : Point // paramètre
    Algorithme de distanceEntrePoints
      Renvoie racine(((b.x - a.x) * (b.x - a.x))+((b.y - a.y) * (b.y - a.y)))
=end

class Point
  attr_accessor :x
  attr_accessor :y
end
a, b = Point.new, Point.new
puts "veuillez entrer les coodronnées des points a et b ( x, puis y)"
a.x, a.y, b.x, b.y = gets.chomp.to_i, gets.chomp.to_i, gets.chomp.to_i, gets.chomp.to_i
def distanceEntrePoints(m, n)
  Math.sqrt(((n.x - m.x) * (n.x - m.x))+((n.y - m.y) * (n.y - m.y)))
end
puts distanceEntrePoints(a, b)
