class QuestionsController < ApplicationController
  def ask
    @answer = params[:answer]
  end

  def answer
    @question = params[:question]
    @answer = coach_answer(@question)
  end

  def coach_answer(question)
    if @question.blank?
      "I can't hear you!"
    elsif question =~ /i am going to work/i
      'Great!'
    elsif question.end_with?('?')
      'Silly question, get dressed and go to work!'
    else
      "I don't care, get dressed and go to work!"
    end
  end
end
