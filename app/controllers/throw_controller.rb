class ThrowController < ApplicationController
  def index
  end
  def rock
  	@defeat = {rock: [:scissors,:lizard], paper: [:rock,:spock],  scissors: [:paper,:lizard], spock: [:scissors,:rock], lizard: [:spock,:paper]}
  	@throws = @defeat.keys
 		session[:player_score] = session[:player_score] ? session[:player_score]+0 : 0
		session[:computer_score] = session[:computer_score] ? session[:computer_score]+0 : 0
    @player_throw = :rock
    computer_throw = @throws.sample
    if @player_throw == computer_throw
    	@result = "You tied with the computer. Try again!"
	  elsif computer_throw == @defeat[@player_throw][0] or computer_throw == @defeat[@player_throw][1]
		  session[:player_score] = session[:player_score] ? session[:player_score]+1 : 1
		  @result = "Nicely done; #{@player_throw} beats #{computer_throw}!"
	  else
		  session[:computer_score] = session[:computer_score] ? session[:computer_score]+1 : 1
		  @result = "Ouch; #{computer_throw} beats #{@player_throw}. Better luck next time!"
	  end
	  @score = "Player Score: #{session[:player_score]}, Computer Score: #{session[:computer_score]}"
  end

  def paper
  	@defeat = {rock: [:scissors,:lizard], paper: [:rock,:spock],  scissors: [:paper,:lizard], spock: [:scissors,:rock], lizard: [:spock,:paper]}
  	@throws = @defeat.keys
 		session[:player_score] = session[:player_score] ? session[:player_score]+0 : 0
		session[:computer_score] = session[:computer_score] ? session[:computer_score]+0 : 0
    @player_throw = :paper
    computer_throw = @throws.sample
    if @player_throw == computer_throw
    	@result = "You tied with the computer. Try again!"
	  elsif computer_throw == @defeat[@player_throw][0] or computer_throw == @defeat[@player_throw][1]
		  session[:player_score] = session[:player_score] ? session[:player_score]+1 : 1
		  @result = "Nicely done; #{@player_throw} beats #{computer_throw}!"
	  else
		  session[:computer_score] = session[:computer_score] ? session[:computer_score]+1 : 1
		  @result = "Ouch; #{computer_throw} beats #{@player_throw}. Better luck next time!"
	  end
 	  @score = "Player Score: #{session[:player_score]}, Computer Score: #{session[:computer_score]}"
  end

  def scissors
  	@defeat = {rock: [:scissors,:lizard], paper: [:rock,:spock],  scissors: [:paper,:lizard], spock: [:scissors,:rock], lizard: [:spock,:paper]}
  	@throws = @defeat.keys
 		session[:player_score] = session[:player_score] ? session[:player_score]+0 : 0
		session[:computer_score] = session[:computer_score] ? session[:computer_score]+0 : 0
    @player_throw = :scissors
    computer_throw = @throws.sample
    if @player_throw == computer_throw
    	@result = "You tied with the computer. Try again!"
	  elsif computer_throw == @defeat[@player_throw][0] or computer_throw == @defeat[@player_throw][1]
		  session[:player_score] = session[:player_score] ? session[:player_score]+1 : 1
		  @result = "Nicely done; #{@player_throw} beats #{computer_throw}!"
	  else
		  session[:computer_score] = session[:computer_score] ? session[:computer_score]+1 : 1
		  @result = "Ouch; #{computer_throw} beats #{@player_throw}. Better luck next time!"
	  end
	  @score = "Player Score: #{session[:player_score]}, Computer Score: #{session[:computer_score]}"
  end

  def lizard
  	@defeat = {rock: [:scissors,:lizard], paper: [:rock,:spock],  scissors: [:paper,:lizard], spock: [:scissors,:rock], lizard: [:spock,:paper]}
  	@throws = @defeat.keys
 		session[:player_score] = session[:player_score] ? session[:player_score]+0 : 0
		session[:computer_score] = session[:computer_score] ? session[:computer_score]+0 : 0
    @player_throw = :lizard
    computer_throw = @throws.sample
    if @player_throw == computer_throw
    	@result = "You tied with the computer. Try again!"
	  elsif computer_throw == @defeat[@player_throw][0] or computer_throw == @defeat[@player_throw][1]
		  session[:player_score] = session[:player_score] ? session[:player_score]+1 : 1
		  @result = "Nicely done; #{@player_throw} beats #{computer_throw}!"
	  else
		  session[:computer_score] = session[:computer_score] ? session[:computer_score]+1 : 1
		  @result = "Ouch; #{computer_throw} beats #{@player_throw}. Better luck next time!"
	  end
	  @score = "Player Score: #{session[:player_score]}, Computer Score: #{session[:computer_score]}"
  end

  def spock
  	@defeat = {rock: [:scissors,:lizard], paper: [:rock,:spock],  scissors: [:paper,:lizard], spock: [:scissors,:rock], lizard: [:spock,:paper]}
  	@throws = @defeat.keys
 		session[:player_score] = session[:player_score] ? session[:player_score]+0 : 0
		session[:computer_score] = session[:computer_score] ? session[:computer_score]+0 : 0
    @player_throw = :spock
    computer_throw = @throws.sample
    if @player_throw == computer_throw
    	@result = "You tied with the computer. Try again!"
	  elsif computer_throw == @defeat[@player_throw][0] or computer_throw == @defeat[@player_throw][1]
		  session[:player_score] = session[:player_score] ? session[:player_score]+1 : 1
		  @result = "Nicely done; #{@player_throw} beats #{computer_throw}!"
	  else
		  session[:computer_score] = session[:computer_score] ? session[:computer_score]+1 : 1
		  @result = "Ouch; #{computer_throw} beats #{@player_throw}. Better luck next time!"
	  end
	  @score = "Player Score: #{session[:player_score]}, Computer Score: #{session[:computer_score]}"
  end

  def stats
 		session[:player_score] = session[:player_score] ? session[:player_score]+0 : 0
		session[:computer_score] = session[:computer_score] ? session[:computer_score]+0 : 0
    @result = "Player Score: #{session[:player_score]}, Computer Score: #{session[:computer_score]}"
  end
end
