#encoding: utf-8

=begin

  fonction tailleMax ( t : Entier, p : Entier ) -> Entier
      // Renvoie la taille maximum autorisée, en fonction de la priorité du message
    Lexique de tailleMax
      p : Entier
      t : Entier // Paramètre
      tm : Entier // Taille maximum après évaluation
      
    Algorithme de tailleMax
      Si p = 4
      Alors tm ← t + 100
      Sinon tm ← t
      fSi
      
      Renvoyer(tm)
      

  action traiterMessage( consulté X : message, élaboré t : réel )
    // Gère l'archivage ou non du message selon les critères prédéfinis, puis l'expédie aux destinataires.
    // Ei : X = X0
    // Ef : X = X0
    
    Lexique de traiterMessage
      Données
        X : Message // donnée
        
    Algorithme de traiterMessage
      // On considère que la fonction Toutlemonde() implique le même mécanisme que la fonction ServiceDestinataire() et, par conséquent, un message envoyé
      // à tout le monde ne peut avoir de service destinataire.
        Si Toutlemonde(X) = vrai et Taille(X) < tailleMax(300, Priorité(X))  // Choix des "si" emboîtés pour éviter des expressions à rallonge dans un "selon"
        Alors Archiver(X) ; Envoyer(X)
        Sinon Si ServiceDestinataire(X) = "Commercial"
              Alors Archiver(X) ; Envoyer(X)
              Sinon Si ServiceDestinataire(X) = "Direction" et Priorité(X) != 1 et Taille(X) < tailleMax(200, Priorité(X))
                    Alors Archiver(X) ; Envoyer(X)
                    Sinon Envoyer(X)
                    fSi
              fSi      
        fSi
    
=end

# Ruby

#Définition du type ( la classe ) Message, afin de tester le programme

class Message
  attr_accessor :destinataire
  attr_accessor :taille
  attr_accessor :priorite
  attr_accessor :broadcast
  def initialize(taille, priorite, broadcast, destinataire)
    @destinataire = destinataire
    @taille = taille
    @priorite = priorite
    @broadcast = broadcast
  end
end

  puts "Veuillez entrer le service destinataire du message -- 'broadcast' si tous les services sont destinataires"
  dest = gets.chomp

if dest.downsize == "broadcast"
  broad = true
else 
  broad = false
end

puts "Sur une échelle de 1 à 4 ( 4 étant la plus grande priorité ), quelle est la priorité de votre message ?"
prio = gets.chomp.to_i

siz = rand(25..450)
puts "Votre message possède une taille de #{siz} Mo"

email = Message.new siz, prio, broad, dest

#Définition des fonctions données

def toutLeMonde(msg)
  msg.broadcast == true
end

def taille(msg)
  msg.taille
end

def priorite(msg)
  msg.priorite
end

def serviceDestinataire(msg)
  msg.destinataire
end

def envoyer(msg)
  puts "Votre message a été envoyé"
end

def archiver(msg)
  puts "Votre message a été archivé"
end

def tailleMax (t, p)
  if p == 4
    tm = t + 100
  else 
    tm = t
  end
end

def traiterMessage(x)
  if toutLeMonde(x) == true and taille(x) < tailleMax(300, priorite(x))
    envoyer(x)
    archiver(x)
  elsif serviceDestinataire(x) == "Commercial"
    envoyer(x)
    archiver(x)
  elsif  serviceDestinataire(x) == "Direction" and priorite(x) != 1 and taille(x) < tailleMax(200, priorite(x))
    envoyer(x)
    archiver(x)
  else
    envoyer(x)
  end
end

traiterMessage(email)
