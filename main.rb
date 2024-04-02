require "./players"
require "./math_questions"

player_one = Players.new(1, 3)
player_two = Players.new(2, 3)


while player_one.player_lives > 0 && player_two.player_lives > 0
  p_one_math_question = MathQuestion.new
  p_two_math_question = MathQuestion.new

  puts "Player 1:"
  p_one_right_answer = p_one_math_question.ask_question

  p_one_math_answer = gets.chomp.to_i

  if p_one_math_answer == p_one_right_answer
    puts "Player 1: Good job! You are correct!"
    puts "P1: #{player_one.player_lives} P2: #{player_two.player_lives}"
  else
    puts "Player 1: Seriously? No!!!"
    player_one.decrement_lives
    puts "P1: #{player_one.player_lives} P2: #{player_two.player_lives}"
  end

  puts "Player 2:"
  p_two_right_answer = p_two_math_question.ask_question

  p_two_math_answer = gets.chomp.to_i

  if p_two_math_answer == p_two_right_answer
    puts "Player 2: Good job! You are correct!"
    puts "P1: #{player_one.player_lives} P2: #{player_two.player_lives}"
  else
    puts "Player 2: Seriously? No!!!"
    player_two.decrement_lives
    puts "P1: #{player_one.player_lives} P2: #{player_two.player_lives}"
  end

end

if player_one.player_lives == 0 && player_two.player_lives == 0
  puts "It's a tie!"
elsif player_one.player_lives == 0
  puts "Player 2 wins!"
elsif player_two.player_lives == 0
  puts "Player 1 wins!"
end