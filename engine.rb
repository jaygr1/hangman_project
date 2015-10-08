require './data'
class Engine

  def word_generator
    # picks random word for play
     chosen_word = game_choices[rand(game_choices.length -1)]
  end 

  def letter_checker
    # iterate over generated word for match
    # output true of false
     array_letter= word_generator.split(//)

     array_letter.each do |elem|
       

     end  
     
    
  end 

  def alphabet_options
    # keeps track of what letters have been guessed
    # sends info to gameboard of what letters need to be displayed
  end 


end
