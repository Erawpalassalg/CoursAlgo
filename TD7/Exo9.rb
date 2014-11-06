#encoding: utf-8

=begin

  Lexique
    f : Fichier de caractères // donnée initiale, fichier lu
    wasThatAnL : Booleen // indique si la lettre précédente était un "L"
    n : Entier // nombre de "LE" présent dans la séquence parcourue
    e : écran // périphérique de sortie
    
  Algorithme
    wasThatAnL ← faux
    n ← 0
    f.LirePremier
    
    Tantque non f.FDF
    
      Selon f.EC wasThatAnL n
        f.EC = 'L' : wasThatAnL ← vrai
        f.EC = 'E' et wasThatAnL : n ← n+1
        Autrement : wasThatAnL ← faux
      fSelon
      
      f.LireSuivant
      
    fTantque
  
    e.afficher("Nombre de LE :" n)
  
=end

#Ruby

f = File.open("Exo9Test.txt", "r")
wasThatAnL = false
n = 0

f.each_line do |x|
  i = 0
  while i < x.length
    if x[i] == 'L'
      wasThatAnL = true
    elsif x[i] == 'E' and wasThatAnL
      n += 1
    else
      wasThatAnL = false
    end
    i += 1
  end
end

puts "Nombre de LE : #{n}"
