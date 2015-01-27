#encoding: utf-8

class Carte
  attr_accessor :couleur, :valeur
  
  def initialize(c, v)
    @couleur = c
    @valeur = v
  end
  
  def afficher_carte
    if @couleur == 1
      c = "Trèfle"
    elsif @couleur == 2
      c = "Carreau"
    elsif @couleur == 3
      c = "Coeur"
    elsif @couleur == 4
      c = "Pique"
    end
    if @valeur == 1
      v = "As"
    elsif @valeur == 11
      v = "Valet"
    elsif @valeur == 12
      v = "Dame"
    elsif @valeur == 13
      v = "Roi"
    else
      v = @valeur.to_s
    end
    puts "#{v} de #{c}"
  end
end

class Main
  attr_accessor :cartes, :tete, :case_libre
  
  def initialize
    @cartes = {}
    @cartes[:carte] = []
    @cartes[:val] = []
    @case_libre = 0
    @tete = nil
  end
  
  def ajouter_carte(c)
    prec = nil
    suiv = @tete
    
    @cartes[:carte][@case_libre] = c
    
    while suiv != nil && (@cartes[:carte][suiv].couleur < c.couleur || (@cartes[:carte][suiv].couleur == c.couleur && ( c.valeur == 1 || @cartes[:carte][suiv].valeur < c.valeur))) do
      prec = suiv
      suiv = @cartes[:val][suiv]
    end
    
    if suiv == @tete
      @cartes[:val][@case_libre] = @tete
      @tete = @case_libre
    elsif suiv != @tete && suiv == nil
      @cartes[:val][@case_libre] = nil
      @cartes[:val][prec] = @case_libre
    else
      @cartes[:val][@case_libre] = suiv
      @cartes[:val][prec] = @case_libre
    end

    trouver_case_libre
    
  end
  
  def afficher_main
    suiv = @tete
    
    while suiv != nil do
      @cartes[:carte][suiv].afficher_carte
      suiv = @cartes[:val][suiv]
    end
  end
  
  private
  
  def trouver_case_libre
    i = 0
    while i < @cartes[:carte].length && @cartes[:carte][i] != nil do
      i += 1
    end
    @case_libre = i
  end
  
end


main = Main.new

while true do
  puts "Choisissez : 1 : Trèfle, 2 : Carreau, 3 : Coeur, 4 : Pique"
  c = gets.to_i
  puts "Choisissez une valeur ( 11 = valet, 12 = Dame, 13 = Roi)"
  v = gets.to_i
  
  carte = Carte.new(c, v)
  main.ajouter_carte(carte)
  main.afficher_main
end