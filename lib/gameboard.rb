class GameBoard

  attr_accessor

  def initialize(player, blank_word)
    @player = player
    @player_name = player.name
    @word = blank_word
    @alphabet = ["A", "B", "C", "D", "E", "F", "G", "H", "I", "J", "K", 
      "L", "M", "N", "O", "P", "Q", "R", "S", "T", "U", "V", "W", "X", "Y", "Z"]
    show_board
  end 

  def board 
    puts
    puts
    puts
    puts
    puts
    puts " welcome  #{@player_name} "
    puts " ******************** "
    puts " You have #{@player.lives} lives "
    puts
    puts @word.to_s
    puts 
    puts "Guess a letter!"  
    puts @alphabet.to_s
    
  end  
  

  # def show_word
  # end 

  def show_board
    
    if @player.lives == 5
    #system("clear")
    board
    # show_word
    puts " 
        # |------
        # |       
        # |                             
        # |
        # |______

        "


    elsif @player.lives == 4
     #system("clear")
     board
     # show_word
     puts "
        # |------
        # |  O
        # |                            
        # |
        # |______






        "
    elsif @player.lives == 3
    #system("clear")
    board
    # show_word
    puts "
        # |-----
        # | O/
        # |                            
        # |
        # |_____







         "
    elsif @player.lives == 2
      #system("clear")
      board
      # show_word
      puts "
        # |------
        # | \O/
        # |                            
        # |
        # |______






         "

    elsif @player.lives == 1
      #system("clear")
      board
      # show_word
      puts "
         # |------
         # | \O/
         # |  |                          
         # |
         # |______






         "
    elsif  @player.lives == 0 
      #system("clear")
      board
      # show_word      
      puts "
         # |------
         # | \O/
         # |  |                            
         # | / \
         # |______


         "
       puts
       puts "GAME OVER"
    end
  end 
end 

# test = GameBoard.new
