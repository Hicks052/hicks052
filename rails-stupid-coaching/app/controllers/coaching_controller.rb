class CoachingController < ApplicationController
  def answer
    @query = params[:query]
    @answer = message(@query)
  end

  def message(response)
    if response == "i am going to work right now!"
      ''
    elsif response.end_with?("?")
      "Silly question, get dressed and go to work!"
    else
      "I don't care, get dressed and go to work!"
    end
  end

  def ask
  end

end

