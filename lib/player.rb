class Player
  attr_accessor :name, :lives

def initialize(name)
  @name = name
  @lives = 5
end 

def decrement_lives
  self.lives -= 1
  self.lives
end 

end 
