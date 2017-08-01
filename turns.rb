module MathGame
  class Turn

    attr_reader :result

    def initialize(player)
      @player = player
      @result = false
    end

    def just_one_turn
        puts "---NEW TURN---"
        puts "#{@player.name}'s turn"
        question = MathGame::Questions.new
        if question.ask_question == true
          puts "correct! the answer is #{question.num1 + question.num2}"
          @result = true
        else
          puts "You lose a life!"
        end
    end
  end
end
