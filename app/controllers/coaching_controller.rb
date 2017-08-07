class CoachingController < ApplicationController
  def ask
  end

  def answer
  	@ask = params[:query]
  	@answer = coaching
  end

private 

  def coaching
  	if @ask.include? "?" 
	   "Silly question, get dressed and go to work!"
	 elsif @ask == "I am going to work right now."
	  return "Good son !"
	 else
	   "I don't care, get dressed and go to work!"
	 end
  end
end
