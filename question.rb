def question(cur_player)
  puts "#{cur_player}... add these two numbers... GO!"
  num1 = rand(1..20)
  num2 = rand(1..20)
  puts "#{num1} + #{num2}"


  player_guess = gets.chomp
  
  check_answer(num1, num2, player_guess)
end 