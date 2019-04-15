class SecretController < ApplicationController
  def home
    render :home
  end

  def result
    @random_number = (1..10).sample
    @num = params[:guess].to_i
    if @num == @random_number
      render :result
    else
      render :home
    end
  end
end
