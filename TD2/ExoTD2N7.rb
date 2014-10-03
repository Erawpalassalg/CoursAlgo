#encoding: utf-8

=begin
    Lexique
      Données
        a : Réel // ancienneté de l'individu, en années, donnée utilisateur
        b : Réel // Ancienneté de l'individu, en mois, donnée utilisateur
        c : Réel // age de l'individu, en années, donnée utilisateur
      Variables
        dd : Réel // Discriminant delta, permet de donner la réponse
      Périphériques
        cl : clavier // périphérique d'entrée
        e : écran // périphérique de sortie    
        
    Algorithme
    
        // a = ?, b = ?, c = ?, dd = ?    
    
    e.afficher("Veillez entrer les nombres a, b et c de l'équation ax² + bx + c = 0")
    cl.saisir(a, b, c)
    
        // a = a0, b = b0, c = c0, dd = ?
        
    dd ← b² - 4*a*c

        // a = a0, b = b0, c = c0, dd = dd0 ( = b² - 4*a*c)
        
    selon dd
      dd < 0 : e.afficher("Pas de solution réelle")
      dd = 0 : e.afficher("x = ", (-b)/(2*a))
      dd > 0: e.afficher("Deux solutions : x1 = ", (-b+racine(dd))/(2*a), " ou x2 = ", (-b-racine(dd))/(2*a))
    fselon
=end

#ruby

puts "Veillez entrer les nombres a, b et c de l'équation ax² + bx + c = 0"

a, b, c = gets.chomp.to_f, gets.chomp.to_f, gets.chomp.to_f

d = b**2 - 4*a*c

if d < 0
  puts "Pas de solution"
elsif d == 0
  puts "x = #{(-b)/(2*a)}"
elsif d > 0
  puts "Deux solutions : x1 = #{(-b + Math.sqrt(d))/(2*a)}, ou x2 = #{(-b - Math.sqrt(d))}"
end
