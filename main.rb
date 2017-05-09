require './questions'
require './players'

class Game

  def initialize
    @current_turn = 1
    @number_a = rand(1..20)
    @number_b = rand(1..20)
  end

end