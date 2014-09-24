#encoding: utf-8
# Lexique
#
# a, b, c : entiers // données
# m1 : réel // moyenne de a et b
# m2 : réel // moyenne de b et c
# m3 : réel // moyenne de a et c
# abmax : réel // nombre max entre a et b
# bcmax : réel // maximum entre b et c
# acmax : réel // maximum entre a et c
# abmin : réel // minmum entre a et b
# bcmin : réel // minmum entre b et c
# acmin : réel // minmum entre a et c
# cl : clavier // périphérique entrant
# e : écran // périphérique sortant

# Algo
# 
# // a = ?, b = ?, c = ?, m1 = ?, m2 = ?, m3 = ?, abmax = ?, bcmax = ?, acmax = ?, abmin = ?, bcmin = ?, acmin = ?
# cl.saisir( a, b, c) // saisir les données
# // a = a0, b = b0, c = c0, m1 = ?, m2 = ?, m3 = ?, abmax = ?, bcmax = ?, acmax = ?, abmin = ?, bcmin = ?, acmin = ?
# m1 ← ((a+b)/2) ; abmax ← (m1 + abs(a-b)/2) ; abmin ← (m1 - abs(a-b)/2)
# // a = a0, b = b0, c = c0, m1 = m1.0, m2 = ?, m3 = ?, abmax = abmax0, bcmax = ?, acmax = ?, abmin = abmin0, bcmin = ?, acmin = ?
# m2 ← (b+c)/2 ; bcmax ← (m2 + abs(b-c)/2) ; bcmin ← (m2 - abs(b-c)/2)
# // a = a0, b = b0, c = c0, m1 = m1.0, m2 = m2.0, m3 = ?, abmax = abmax0, bcmax = bcmax0, acmax = ?, abmin = abmin0, bcmin = bcmin0, acmin = ?
# m3 ← (a+c)/2 ; acmax ← (m3 + abs(a-c)/2) ; acmin ← (m3 - abs(a-c)/2)
# // a = a0, b = b0, c = c0, m1 = m1.0, m2 = m2.0, m3 = m3.0, abmax = abmax0, bcmax = bcmax0, acmax = acmax0, abmin = abmin0, bcmin = bcmin0, acmin = acmin0
#e.afficher("La moyenne des chiffres ", a, ", ", b, " et ", c, " est ", ((a+b+c)/3)))
#e.afficher("Le maximum est celui qui apparaît deux fois sur trois ici :", abmax, bcmax, acmax)
#e.afficher("Le minimum est celui qui apparaît deux fois sur trois ici :", abmin, bcmin, acmin)

# Ruby code

puts "Veuillez entrer trois entiers :" # Copie la chaîne de caractère demandée dans la console
puts " a = "
a = gets.chomp.to_f                    # Prend - sous forme de chaîne de caractère (string) la valeur qu'entre l'utilisateur et la convertit en nombre réel (float), tout en supprimant l'espace 
                                       # à la fin, si il y en a un
puts "b = "
b = gets.chomp.to_f

puts "c = "
c = gets.chomp.to_f

puts "Etat du système : a = #{a}, b = #{b}, c = #{c}" # Copie la chaîne de caractère avec interpolation des valeurs entre #{}

m1 = (a+b)/2                          # Calcul de la moyenne ab et affectation dans la valeur dans la variable m1
abmax = (m1 + (a-b).abs/2)            # Calcul de la valeur maximum ab et affectation dans la variable abmax, grace au passage en nombre absolu → .abs
abmin = (m1 - (a-b).abs/2)            # Calcul de la valeur minimum ab et affectation dans la variable abmin

puts "Etat du système : a = #{a}, b = #{b}, c = #{c}, m1 = #{m1}, abmax = #{abmax}, abmin = #{abmin}" 

m2 = (b+c)/2                          # Calcul de la moyenne bc et affectation dans la valeur dans la variable m2
bcmax = (m2 + (b-c).abs/2)            # Calcul de la valeur maximum bc et affectation dans la variable bcmax
bcmin = (m2 - (b-c).abs/2)            # Calcul de la valeur minimum bc et affectation dans la variable bcmin

puts "Etat du système : a = #{a}, b = #{b}, c = #{c}, m1 = #{m1}, abmax = #{abmax}, abmin = #{abmin}, m2 = #{m2}, bcmax = #{bcmax}, bcmin = #{bcmin}"

m3 = (a+c)/2                          # Calcul de la moyenne ac et affectation dans la valeur dans la variable m3
acmax = (m3 + (a-c).abs/2)            # Calcul de la valeur maximum ac et affectation dans la variable acmax
acmin = (m3 - (a-c).abs/2)            # Calcul de la valeur minimum ac et affectation dans la variable acmin

puts "Etat du système : a = #{a}, b = #{b}, c = #{c}, m1 = #{m1}, abmax = #{abmax}, abmin = #{abmin}, m2 = #{m2}, bcmax = #{bcmax}, bcmin = #{bcmin}, m3 = #{m3}, acmax = #{acmax}, acmin = #{acmin}"

puts "La moyenne des chiffres #{a}, #{b} et #{c} est #{(a+b+c)/3}"
puts "La valeur la plus grande entre #{a}, #{b} et #{c} est celle qui se répète deux fois ici : #{abmax}, #{bcmax}, #{acmax}"
puts "La valeur la plus faible entre #{a}, #{b} et #{c} est celle qui se répète deux fois ici : #{abmin}, #{bcmin}, #{acmin}"
