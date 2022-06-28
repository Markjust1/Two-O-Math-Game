class Game


  def initialize
    @player1 = Player.new("Player 1")
    @player2 = Player.new("Player 2")
  end

  def start_game
    puts "Lets play a little game!"
    puts ""
  end

  def game_loop
    start_game
    game_over = false
    player_turn = 1
    while game_over == false do
      current_player = player_turn == 1 ? @player1 : @player2
      question = Question.new
      puts question.ask_question(current_player)
      print "> "
      player_answer = $stdin.gets.chomp.to_i
      answer = question.check_answer(player_answer)
      if answer
        puts "Yes, you are CORRECT!"
      else 
        puts "Wrong! EXTERMINATE!"
        current_player.lose_life
      end
      print_score
        if player_turn == 1
          player_turn = 2
        else player_turn = 1
        end
        game_over = check_life
    end
  end

  def print_score
    p "Player1: #{@player1.lives}/3  VS  Player2: #{@player2.lives}/3"
    puts " "
    puts "--------------------NEW TURN-------------------"
    puts " "
  end

  def check_life
    if (@player1.lives == 0 || @player2.lives == 0)
      puts "GAME OVER. YOU DED"
      return true
    else
      return false
    end
  end

end



