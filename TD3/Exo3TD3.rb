#encoding: utf-8

=begin
  Lexique
    Données
      vb : chaîne de caractère représentant un verbe // donnée utilisateur
    Périphériques
      cl : clavier // périphérique d'entrée
      e : écran // périphérique de sortie
      
      
    Algorithme Principal
    
        fonction estDuPremierGroupe(v:chaine) -> booléen
          //renvoie vrai si le verbe v est du premier groupe, sinon renvoie faux
          Lexique de estDuPremierGroupe
            Données
              v : Chaine // paramètre - verbe donné à analyser   
              
          Algorithme  
              si (SousChaine(vb, longueur(vb)-1, 2) = "er") et (v != "aller")
              Alors Renvoyer(vrai)
              Sinon Renvoyer(faux)
              fsi
    
    e.afficher("Veuillez entrer un verbe")
    cl.sasir(vb)
    
    // vb = "vb0"
    
    selon vb
      estDuPremierGroupe(vb) = vrai : e.afficher("Le verbe ", vb, " est du premier groupe")
      estDuPremierGroupe(vb) = faux : e.afficher("Le verbe ", vb, " n'est pas du premier groupe")
    fselon
    
=end

#Ruby

def estDuPremierGroupe(v)
  if v[-2..-1] == "er" and v != 'aller'
    return true
  else
    return false
  end
end

puts "Veuillez entrer un verbe"
vb = gets.chomp

if estDuPremierGroupe(vb) == true
  puts ("Le verbe #{vb} est du premier groupe")
elsif estDuPremierGroupe(vb) == false
  puts ("Le verbe #{vb} n'est pas du premier groupe")
end
