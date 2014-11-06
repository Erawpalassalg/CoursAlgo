#encoding: utf-8

=begin
	fonction estVoyelle ( x : caractère )→ booléen
		// Prend un caractère en paramètre, le compare à une série de voyelle et renvoie true si la comparaison est effective, false sinon
		
		Lexique estVoyelle
			x : caractère // paramètre fonctionnel
		Algorithme estVoyelle
			Si x = 'A' ou x = 'E' ou x = 'I' ou x = 'O' ou x = 'U' ou x = 'Y'
			Alors Renvoyer vrai
			Sinon Renvoyer faux
			fSi


	Lexique
		Données
			f : Fichier de caractères majuscules non-accentués et d'espaces, non-vide // Donnée initiale
			fc : Fichier de caractères consonnes majuscules // Donnée finale
			fv : Fichier de caractères voyelles majuscules // Donnée finale
		Fonctions
			estVoyelle(x)
	
	Algorithme
		fc.PréparerEnregistrement ; fv.PréparerEnregistrement
		f.Lirepremier
		Tantque non f.FDF faire
			Selon f.EC
				estVoyelle(f.EC) : fv.Enregistrer(f.EC)
				f.EC = ' ' :
				Autrement : fc.Enregistrer(f.EC)
			fSelon
			f.LireSuivant
		fTantque
		fc.Marquer ; fv.Marquer
=end

#Ruby

a = IO.readlines("Exo2Test.txt")
fv = File.open("exo2voy.txt", "w+")
fc = File.open("exo2cons.txt", "w+")

a.each do |x|
  x.chomp!
  i = 0
  while i < x.length
    unless x[i] == " "
      if x[i] == "a" or x[i] == "e" or x[i] == "i" or x[i] == "o" or x[i] == "u" or x[i] == "y"
         fv << x[i]
      else
        fc << x[i]
      end
    end
    i += 1
  end
end

files = [fc,fv]

files.each do |i|
  i.rewind
  puts i.read
  i.close
end