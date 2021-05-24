class QuestionsController < ApplicationController
  def ask
  end

  def answer
    @response = params[:answer]
    if @response == "I am going to work"
      @resp = "Great!"
    elsif @response.end_with?("?")
      @resp = "Silly question, get dressed and go to work!"
    else
      @resp = "I don't care, get dressed and go to work!"
    end
  end
end
