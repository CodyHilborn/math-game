class Game
  attr_accessor :player_turn
  
  def initialize
    @player_turn = 1
    @p1 = Player.new
    @p2 = Player.new
  end

  def update_player_turn
    if @player_turn == 1
      @player_turn = 2
    else
      @player_turn = 1
    end
  end

  def lose_life
    @player_turn == 1 ? @p1.lives -= 1 : @p2.lives -= 1
  end

  def game_over
    puts "Player #{player_turn} wins!"
    puts "Final Scores: Player 1 with #{@p1.lives}/3. Player 2 with #{@p2.lives}/3"
    puts "******* GAME OVER *******"
    puts "Goodbye!"
  end
  

  def start_game

    puts "******* LET THE GAME BEGIN! ******* "
    
    until @p1.lives == 0 || @p2.lives == 0 do

      question = Question.new(@player_turn)

      if !question.start_question
        lose_life
      end

      puts "Player 1: #{@p1.lives}/3 vs. Player 2: #{@p2.lives}/3"
      update_player_turn

    end

    game_over
  end

end

