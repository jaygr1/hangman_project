class Logic

  attr_accessor :avail_letters

  def initialize
    @avail_letters = ["A", "B", "C", "D", "E", "F", "G", "H", "I", "J", "K", 
  "L", "M", "N", "O", "P", "Q", "R", "S", "T", "U", "V", "W", "X", "Y", "Z"]
  end 

  def start
    until @start == "start"
      puts "type start to begin the game"
      @start = gets.chomp
    end 
    
  setup 
  end  

  def setup
    get_name
    create_player
    generate_word
    create_board
    play
  end

  def get_name
    puts "Enter your name!"
    @name = gets.chomp
  end 

  def create_player
    @player = Player.new(@name)
  end 

  def create_board
    @board = GameBoard.new(@player, @array_blank_word, @avail_letters)
  end


  def generate_word
    # picks random word for play
    game_choices = ["Temporary", "Nice", "Silly", "Poison", "Book", "Timothy", "Billy", "Smelly"]

    num_of_words = game_choices.length - 1
    @chosen_word = game_choices[rand(num_of_words)].upcase

    @array_chosen_word = @chosen_word.split(//) # turn word into array
 
    @array_blank_word = Array.new(@chosen_word.length, "*")
    @array_blank_word
  end 

  def play
    if @player.lives > 0 
      get_letter
      picked_letter_valid?
    else 
      start
    end
  end 

  def get_letter
    @picked_letter = gets.chomp.upcase
    if ! @avail_letters.include?(@picked_letter)
      puts "Choose again!"
      get_letter
    end
    @avail_letters.delete(@picked_letter)
    @board.curr_letters = @avail_letters 
    #picked_letter_valid?
    # @alphabet
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