require './questions'
require './players'

class Game
  def self.run
    puts "Let the games begin!"

    game = Game.new

    game.game_loop

  end

  def initialize
    @p1 = Player.new('Player 1')
    @p2 = Player.new('Player 2')
    @players = [@p1, @p2]
    @current_turn = @players[0]
  end

  def play_turn #change to play_turn and place inside another method that loops the game
    ask_question_and_check
    # @playersscore = Player.new
    @current_turn.current_score(@p1.player_score, @p2.player_score)
    change_turn
    if @p1.player_score === 0 || @p2.player_score === 0
      print "#{@current_turn.name} wins with a score of #{@current_turn.player_score}/3\n----- GAME OVER -----\nGood bye!\n"
      return
    end
    play_turn
  end

  def ask_question_and_check
    @question = Question.new
    puts "#{@current_turn.name}: #{@question.question_string}"
    answer = gets.chomp
    @question.validate_answer(@current_turn, answer)
  end

  def change_turn
    if @current_turn == @players[0]
      @current_turn = @players[1]
    else
      @current_turn = @players[0]
    end
  end
  
  def game_loop
    play_turn
  end
end


Game.run