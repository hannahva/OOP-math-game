module MathGame
  class Game

    def initialize
      @p1 = MathGame::Players.new("Player 1")
      @p2 = MathGame::Players.new("Player 2")
      @i = 0
    end

    def game
      while (@p1.score > 0 && @p2.score > 0) do
        if @i.even?
          active_player = @p1
          active_player_name = @p1.name
        else
          active_player = @p2
          active_player_name = @p2.name
        end
        turn = MathGame::Turn.new(active_player)
        turn.just_one_turn
        if turn.result == true

        else
          active_player.lose_life
        end
        @i += 1
        puts "P1: #{@p1.score}/3 vs P2: #{@p2.score}/3"
      end
      if @p1.score > 0
        puts "game over! #{@p1.name} wins!"
      else
        puts "game over! #{@p2.name} wins!"
      end
    end
  end
end

