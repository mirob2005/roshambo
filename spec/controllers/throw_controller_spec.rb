require 'spec_helper'

describe ThrowController do
  render_views

  describe "GET random choice" do
    it "should be successful" do
      @defeat = {rock: [:scissors,:lizard], paper: [:rock,:spock],  scissors: [:paper,:lizard], spock: [:scissors,:rock], lizard: [:spock,:paper]}
  	  @throws = @defeat.keys
      @player_throw = @throws.sample
      @computer_throw = @throws.sample
      get @player_throw.to_s
      response.should have_selector("h1",
                      :content => "You Chose #{@player_throw}!")
    end
  end
  
#  describe "GET result" do
#    it "should be successful" do
#      @defeat = {rock: [:scissors,:lizard], paper: [:rock,:spock],  scissors: [:paper,:lizard], spock: [:scissors,:rock], lizard: [:spock,:paper]}
#  	  @throws = @defeat.keys
#      @player_throw = @throws.sample
#      @computer_throw = @throws.sample

#      get @player_throw.to_s
#      if @player_throw == @computer_throw
#        response.should have_selector("h1",
#                        :content => "You tied with the computer. Try again!")
#	    elsif @computer_throw == @defeat[@player_throw][0] or @computer_throw == @defeat[@player_throw][1]
#	      response.should have_selector("h1",
#                        :content => "Nicely done; #{@player_throw} beats #{@computer_throw}!")
#      else 
#	      response.should have_selector("h1",
#                        :content => "Ouch; #{@computer_throw} beats #{@player_throw}. Better luck next time!")
#      end     
#    end
#  end

  describe "GET 'rock'" do
    it "should be successful" do
      get 'rock'
      response.should be_success
    end
    it "should have the right <h1>" do
      get 'rock'
      response.should have_selector("h1",
                      :content => "You Chose rock!")
    end
  end

  describe "GET 'paper'" do
    it "should be successful" do
      get 'paper'
      response.should be_success
    end
    it "should have the right <h1>" do
      get 'paper'
      response.should have_selector("h1",
                      :content => "You Chose paper!")
    end
  end

  describe "GET 'scissors'" do
    it "should be successful" do
      get 'scissors'
      response.should be_success
    end
    it "should have the right <h1>" do
      get 'scissors'
      response.should have_selector("h1",
                      :content => "You Chose scissors!")
    end
  end

  describe "GET 'lizard'" do
    it "should be successful" do
      get 'lizard'
      response.should be_success
    end
    it "should have the right <h1>" do
      get 'lizard'
      response.should have_selector("h1",
                      :content => "You Chose lizard!")
    end
  end

  describe "GET 'spock'" do
    it "should be successful" do
      get 'spock'
      response.should be_success
    end
    it "should have the right <h1>" do
      get 'spock'
      response.should have_selector("h1",
                      :content => "You Chose spock!")
    end
  end

end
