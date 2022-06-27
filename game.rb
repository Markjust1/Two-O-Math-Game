class Game


  def initialize
    @player1 = Player.new("Player 1")
    @player2 = Player.new("Player 2")
  end

  def start_game
    "Welcome to the Math game!"
    game_loop
  end

  def game_loop
    player_turn = 1
    current_player = @player_turn == 1 ? @player1 : @player2
    question = Question.new().ask_question(current_player)
    print "> "
    player_answer = $stdin.gets.chomp
  end

  def check_life
  end

end



