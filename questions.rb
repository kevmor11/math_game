class Questions

  def initialize
    @question = "Player #{current_turn} What does #{number_a} plus #{number_b} equal?"
    @response_wrong1 = "Player #{current_turn} Seriously? No!"
    @response_wrong2 = "Player #{current_turn} ZOMG No NO NO!"
    @response_right = "Player #{current_turn}, you are correct!!"
    @new_turn = "----- NEW TURN -----"
    @game_over = "Player #{current_turn} wins with a score of #{p[current_turn]_lives}/3\n----- GAME OVER -----\nGood bye!"
    @current_score = "P1: #{p1_lives}"
  end

  def valid_answer
    if @response = @currect valid_answer
      true
    end
  end

end