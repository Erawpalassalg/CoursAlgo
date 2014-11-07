#encoding: utf-8

=begin
	action enregistrerEtAvancer (seq : consulté, fic : modifié)
		// Enregistre l'élément courant de la séquence déjà initialisée dans le fichier déjà préparé à l'enregistrement, puis la fait avancer
		Lexique de enregistrerEtAvancer
			seq : Séquence d'entiers déjà initialisée// paramètre
			fic : Fichier d'entiers déjà préparé à l'enregistrement // paramètre
		Algorithme de enregistrerEtAvancer
			fic.Enregistrer(seq.ElementCourant)
			seq.Avancer

	Lexique
		s1 : séquence d'entiers classés par ordre croissant // donnée initiale
		s2 : séquence d'entiers classés par ordre croissant // donnée initiale
		fr : fichier d'entiers classés par ordre croissant // donnée intermédiaire
		ts1 : Entier // donnée intermédiaire
		ts2 : Entier // donnée intermédiaire
		enregistrerEtAvancer(seq, fic) : Action // enregistre l'élément courant de la séquence dans le fichier et la fait avancer.
		
	Algorithme
		fr.PréparerEnregistrement
		s1.Démarrer ; s2.Démarrer
		Tantque non s1.FindeSéquence ou non s2.FindeSéquence faire		
			Selon s1.FindeSéquence s2.FindeSéquence
				s1.FindeSéquence : enregistrerEtAvancer(s2, fr)
				s2.FindeSéquence : enregistrerEtAvancer(s1, fr)
				Autrement : Selon s1.ElementCourant s2.ElementCourant
								s1.ElementCourant < s2.ElementCourant : enregistrerEtAvancer(s1, fr)
								s2.ElementCourant < s1.ElementCourant : enregistrerEtAvancer(s2, fr)
								s1.ElementCourant = s2.ElementCourant : enregistrerEtAvancer(s1, fr) ; enregistrerEtAvancer(s2, fr)
							fSelon
			fSelon
		fTantque
		fr.Marquer
=end