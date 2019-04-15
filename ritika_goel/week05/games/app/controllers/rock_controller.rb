class RockController < ApplicationController
  def home
    render :home
  end

  def rock_play
    options = [
      "rock",
      "scissors",
      "paper"
    ]
    @throw = params[:throw]
    @ai = options.sample
    @win = 0
    if @ai == @throw
      @win = -1
    elsif @throw == "rock"
      @win = 1 if @ai == "scissors"
    elsif @throw == "paper"
      @win = 1 if @ai == "rock"
    elsif @throw == "scissors"
      @win = 1 if @ai == "paper"
    end
    render :result
  end
end
