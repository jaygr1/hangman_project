class Logic

  

  def start
    puts "type start to begin the game"
    @start = gets.chomp
    if @start.downcase == "start"
      setup
    end 
  end  

  def setup
    get_name
    create_player
    generate_word
    @board = GameBoard.new(@player, @array_blank_word)
    play
  end

  def get_name
    puts "Enter your name!"
    @name = gets.chomp
  end 

  def create_player
    @player = Player.new(@name)
  end 

  def generate_word
    # picks random word for play
    game_choices = ["Temporary", "Nice", "Silly", "Poison", "Book", "Timothy", "Billy", "Smelly"]
    num_of_words = game_choices.length - 1
    @chosen_word = game_choices[rand(num_of_words)].downcase

    @array_chosen_word = @chosen_word.split(//) # turn word into array
 
    @array_blank_word = Array.new(@chosen_word.length, "*")
    @array_blank_word
  end 

  def play
    if @player.lives > 0 
      get_letter
    else 
      false
    end
  end 

  def get_letter
    @picked_letter = gets.chomp.downcase
    picked_letter_valid?
  end 

  def picked_letter_valid?
    # need to check if picked letter available or already been picked 
    # puts "Please pick an available letter."
    if @chosen_word.include? @picked_letter
      # call on method that inserts picked letter into array
      letter_inserter
    else 
      puts "Wrong! Lose life."
      decrement_lives
    end 
    @board.show_board # with updated word array, letter options, lives & hangman
    play
  end 

  def letter_inserter
    @array_chosen_word.each_with_index do |word_letter, index|
      if word_letter == @picked_letter
        @array_blank_word[index] = @picked_letter
      end
    end 
    @array_blank_word
  end 


  def decrement_lives
   @player.lives -= 1
   # system("clear")
  end 


end 