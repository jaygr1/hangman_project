require './data'
require './gameboard'
require './engine.rb'

class Player
  #computer already has word from random array
  def initialize
    puts " start to begin the game "
    @star= gets.chomp
  end 
    def start
      if @star.downcase == "start"
        test = GameBoard.new
      end 
    end 

  def self.pick_letter
    puts "pick letter"
    letter = gets.chomp
  end 

  def guess_word

  end 

  def exit
  end 

  def new_game
  end 

end 