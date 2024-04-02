class MathQuestion 
  def initialize
    @first_random_number = rand(1..20)
    @second_random_number = rand(1..20)
  end

  def math_question(first_random_number, second_random_number)
  puts "What does #{first_random_number} plus #{second_random_number} equal?"
  end
end
