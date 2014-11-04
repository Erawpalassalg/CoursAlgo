#encoding: utf-8

=begin
  
action DécomposerCube(Consulté X : Entier > 0)
  // Calcule et affiche X3 en une somme d'entiers impairs consécutifs
  // EI : X = X0
  // EF : X = X0
  
  Lexique de DécomposerCube
    X : Entier > 0 // Paramètre
    I : Entier > 0 // Donnée intermédiaire, nombre d'itération
    C : Entier > 0 // Donnée intermédiaire, nombre d'itération portant un nombre impair
    N : Entier > 0 // Donnée intermédiaire, X*X*X
    S : Chaine // Donnée intermédiaire, chaîne vide
    
  Algorithme de DécomposerCube
    I ← 1
    C ← -1
    S ← transformerEnChaine(X*X*X) & " = "
    
    Tantque I < X faire
      Répéter I fois
        C ← C + 2
      fRépéter
      I ← I + 1
    fTantque
    
    Répéter I-1 fois
      C ← C + 2
      S ← S & transformerEnChaine(C) & " + "
    fRépéter
    C ← C + 2
    S ← S•transformerEnCaractère(C)
    
    e.afficher(S)

=end

# Ruby

def decomposerCube(x)
  i = 1
  c = -1
  s = "#{x**3} = "

  while i < x do
    i.times {c+=2}; i+=1
  end
  
  (i-1).times {c+=2; s+="#{c} + "}
  c+=2
  s+=c.to_s
  puts s 
end

puts "Entrez un Entier"
a = gets.chomp
decomposerCube(a.to_i)