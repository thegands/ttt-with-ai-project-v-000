class TicTacToeCLI

  def call
    puts "Welcome to Tic Tac Toe! How many players are playing?"
    players = gets.chomp
    until players.to_i.between?(0, 2)
      puts "Please input 0 through 2 players"
      players = gets.chomp
    end
    puts "Does X player go first or second? (1/2)"
    xfirst = gets.chomp
    xfirst = gets.chomp until xfirst.to_i.between?(1, 2)
    if players == "0"
      Game.new(Player::Computer.new(xfirst == "1" ? "X" : "O"), Player::Computer.new(xfirst == "1" ? "O" : "X")).play
    elsif players == "1"
      puts "Would you like to make the first or second move? (1/2)"
      first_move = gets.chomp
      first_move = gets.chomp until first_move.to_i.between?(1, 2)
      first_move == "1" ? Game.new(Player::Human.new(xfirst == "1" ? "X" : "O"), Player::Computer.new(xfirst == "1" ? "O" : "X")).play : Game.new(Player::Computer.new(xfirst == "1" ? "X" : "O"), Player::Human.new(xfirst == "1" ? "O" : "X")).play
    else
      Game.new(Player::Human.new(xfirst == "1" ? "X" : "O"), Player::Human.new(xfirst == "1" ? "O" : "X")).play
    end
  end

end
