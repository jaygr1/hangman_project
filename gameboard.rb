class GameBoard

  def initialize
    
    @lives = 4
    show_bord
   
  end 

  def bord 
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
    alphabet = ["A", "B", "C", "D", "E", "F", "G", "H", "I", "J", "K", 
      "L", "M", "N", "O", "P", "Q", "R", "S", "T", "U", "V", "W", "X", "Y", "Z"]
    puts alphabet.to_s
    
  end  
  
  def decremente_case
     @lives -= 1
     system("clear")
  end 

  def welcome_bord




  end 

  def show_word
      word = "Test"
      @word = word.upcase.gsub(/./,'*')
     

  end 

  def show_bord
    
    if @lives == 5
    system("clear")
    bord
    show_word
    puts "
        #  
        # |------
        # |       
        # |                     #{@word}          
        # |
        # |______






        "
    elsif @lives == 4
     system("clear")
     bord
     show_word
     puts "
        # |------
        # |  O
        # |                #{@word}             
        # |
        # |______






        "
    elsif @lives == 3
    system("clear")
    bord
    show_word
    puts "
        # |-----
        # | O/
        # |                 #{@word}               
        # |
        # |_____







         "
    elsif @lives == 2
      system("clear")
      bord
      show_word
      puts "
        # |------
        # | \O/
        # |                   #{@word}             
        # |
        # |______






         "

    elsif @lives == 1
      system("clear")
      bord
      show_word
      puts "
         # |------
         # | \O/
         # |  |                 #{@word}            
         # |
         # |______






         "
    elsif  @lives == 0 
      system("clear")
      bord
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
