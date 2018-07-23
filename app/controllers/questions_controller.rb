class QuestionsController < ApplicationController
  def ask
  end

  def answer
    @questions = params[:question]
    if @questions == "I am going to work"
      @ans = "Great"
    elsif @questions.include? "?"
      @ans = "Silly question, get dressed and go to work!"
    else
      @ans = "I don't care, get dressed and go to work!"
    end
  end
end
