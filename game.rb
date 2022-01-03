require "./player"
require "./question"

class Game

  def initialize
    @player1 = Player.new('Player 1')
    @player2 = Player.new('Player 2')
    @active_player = @player1
  end

  def switch_player
    if @active_player == @player1 
      @active_player = @player2 
    else
      @active_player = @player1
    end   
  end



  def run

    puts "The game has just begun."

    while @active_player.player_lives > 0 do
       
      puts "------ NEW TURN ------"
      @question = Question.new
      puts "#{@active_player.name}: #{@question.the_question}"
      
      if @question.the_answer(gets.chomp.to_i)
        puts "YES! You are correct."
      else  
        puts "NO! You are wrong."
        @active_player.lose_life
      end


      if @active_player.player_lives > 0
        puts "P1: #{@player1.player_lives}/3 vs P2: #{@player2.player_lives}/3"
        switch_player
      else
        puts "------ GAME OVER ------\n Good buy!"
      end


    end  

  end

end