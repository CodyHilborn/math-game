class Question 

  def initialize(player_num)
    @player_num = player_num
  end

  def start_question

    num1 = rand(1..20)
    num2 = rand(1..20)

    puts "******* NEW TURN ********"
    puts "Player #{@player_num}: What is #{num1} + #{num2}?"
    puts "Answer: "

    player_answer = gets.chomp.to_i

    if player_answer == num1 + num2
      puts "Player #{@player_num}: Woohoo! That is correct!"
      return true
    else
      puts "Player #{@player_num}: No dummy, it's #{num1 + num2}"
      return false
    end
  end

end



