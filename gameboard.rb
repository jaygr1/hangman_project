class GameBoard

  attr_accessor :lives


  def initialize(lives = 5)
    @lives = lives
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
    puts                         " welcome (name) "
    puts                        " **************** "

    puts                     " tip start to begin play "

    puts 
    puts "pick one letter from the alphabet letter"  
    puts @alphabet.to_s
    puts
    puts "You have #{lives} lives"
    
  end  
  
  def decremente_lives
     @lives -= 1
     system("clear")
  end 

  def welcome_board




  end 

  def show_word
      word = "Test"
      @word = word.upcase.gsub(/./,'*')
     

  end 

  def show_board
    
    if lives == 5
    system("clear")
    board
    show_word
    puts "
        #  
        # |------
        # |       
        # |                     #{@word}          
        # |
        # |______






        "
    elsif lives == 4
     system("clear")
     board
     show_word
     puts "
        # |------
        # |  O
        # |                #{@word}             
        # |
        # |______






        "
    elsif lives == 3
    system("clear")
    board
    show_word
    puts "
        # |-----
        # | O/
        # |                 #{@word}               
        # |
        # |_____







         "
    elsif lives == 2
      system("clear")
      board
      show_word
      puts "
        # |------
        # | \O/
        # |                   #{@word}             
        # |
        # |______






         "

    elsif lives == 1
      system("clear")
      board
      show_word
      puts "
         # |------
         # | \O/
         # |  |                 #{@word}            
         # |
         # |______






         "
    elsif  lives == 0 
      system("clear")
      board
      show_word      
      puts "
         # |------
         # | \O/
         # |  |                  #{@word}            
         # | / \
         # |______







         "
    end
  end 
end 

test = GameBoard.new
