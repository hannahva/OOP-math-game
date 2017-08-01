# require "./questions.rb"
# require "./players.rb"

module MathGame

  class Turn

    def just_one_turn
      po = Players.new("Player 1")
      pt = Players.new("Player 2")
      i = 0
      while (po.lives > 0 && pt.lives > 0) do
        if i.even?
          active_player = po
          active_player_name = po.name
        else
          active_player = pt
          active_player_name = pt.name
        end
        puts "---NEW TURN---"
        puts "#{active_player_name}'s turn"
        question = Questions.new
        if question.ask_question == true
          puts "correct! the answer is #{question.num1 + question.num2}"
          i += 1
        else
          puts "You lose a life!"
          active_player.lives -= 1
          i += 1
        end
        puts "P1: #{po.lives}/3 vs P2: #{pt.lives}/3"
      end
      if po.lives > 0
        puts "game over! #{po.name} wins!"
      else
        puts "game over! #{pt.name} wins!"
       end
    end
  end
 Turn.new.just_one_turn

end