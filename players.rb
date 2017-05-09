class Players

  def initialize
    @p1
    @p2
    @p1_lives
    @p2_lives
  end

  def is_dead
    if p1_lives === 0 || p2_lives === 0
      print @game_over
    end
  end

  def current_score (p1_lives, p2_lives)
    puts "P1: #{p1_lives}/3 vs P2: #{p2_lives}/3"
  end


  def lose_life(player)  # where player is an integer 1 or 2
    p[player]_lives -= 1
  end

end