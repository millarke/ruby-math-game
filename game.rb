require "./player.rb"
require "./question.rb"

class Game

  attr_accessor :current_player, :other_player

  def initialize
#   #initilize new player 1 and 2
    @player_1 = Player.new("")
    @player_2 = Player.new("")
    # need to set default first player
    @current_player = @player_1
    @other_player = @player_2
  end

#   # game logic
  def start
#   #  if both players have lives
#   #   run game
    # puts "hello"

    puts "Please enter player 1's name"
    @player_1.name = gets.chomp
    puts "Please enter player 2's name"
    @player_2.name = gets.chomp

    puts "helo #{@player_1.name} and #{@player_2.name}, welcom 2 the gam "

    while !has_lost?
      question(@current_player.name)
      
      if has_lost?
        puts "#{current_player.name} LOSER GAME OVER"
        puts "#{other_player.name} wins with a score of #{other_player.lives}!"
      end

      switch_player
    end
  end
  
  # def question
  #   puts "#{@current_player.name}... add these two numbers... GO!"
  #   num1 = rand(1..20)
  #   num2 = rand(1..20)
  #   puts "#{num1} + #{num2}"


  #   player_guess = gets.chomp
    
  #   check_answer(num1, num2, player_guess)
  # end 

  def check_answer(num1, num2, player_guess)
    correct_ans = num1 + num2
    if player_guess.to_i == correct_ans
      puts "nice work BOZO. you survive another round."
      # puts "#{@player_1.name} has #{} lives left and #{@player_2.name} has #{} lives left!"
    else
      current_player.lose_life
      puts current_player.lives
      puts "go back to preschool you fool! the answer was ackshully #{correct_ans}"
    
    end
    puts "#{@player_1.name} has #{@player_1.lives} lives left and #{@player_2.name} has #{@player_2.lives} lives left!"
  end

  def switch_player
    if @current_player == @player_1
      @current_player = @player_2
      @other_player = @player_1
    else
      @current_player = @player_1
      @other_player = @player_2
    end
  end

  def has_lost?
    @player_1.lives == 0 || @player_2.lives == 0
  end

#   # 
#   # if one player has no more lives, other player wins
#   #   
  # def question
  #   "#{@current_player}... add these two numbers wat are they? GO!"
  # end

end