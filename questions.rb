class Question

  def initialize
    @number_a = rand(1..20)
    @number_b = rand(1..20)
    # @question = "What does #{@number_a} plus #{@number_b} equal?"
    # @current_response = gets.chomp
    @correct_response = @number_a + @number_b

    # Perhaps call these strings in methods instead of instance variables
    # @response_wrong1 = "Player #{current_turn} Seriously? No!"
    # @response_wrong2 = "Player #{current_turn} ZOMG No NO NO!"
    # @response_right = "Player #{current_turn}, you are correct!!"
    # @new_turn = "----- NEW TURN -----"
    # @game_over = "Player #{current_turn} wins with a score of #{p[current_turn].score}/3\n----- GAME OVER -----\nGood bye!"
    # @current_score = "P1: #{p1_lives}"
  end

  def question_string
    "What does #{@number_a} plus #{@number_b} equal?"
  end

  def validate_answer(player, attempt)
    if attempt.to_i != @correct_response  ## TODO: attempt is a string, and @correct_response is a number, oh no
      p "Sorry, you are wrong!!"
      # @player = Player.new
      player.lose_life
    else
      p "Player #{player.name}, you are correct!!"   
    end
  end

end