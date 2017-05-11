class Player
  # attr_reader :name

  def initialize(name)
    @name = name
    @score = 3
  end

  # def is_dead
  #   if p1_lives === 0 || p2_lives === 0
  #     print @game_over
  #   end
  # end

  def player_score
    @score
  end

  def name
    @name
  end

  def current_score(p1_lives, p2_lives)
    puts "P1: #{p1_lives}/3 vs P2: #{p2_lives}/3"
  end

  def lose_life # where player is an integer 1 or 2
    @score -= 1
  end

end