class QuestionsController < ApplicationController
  def ask; end

  def answer
    @answer = params[:question]
    @message = if @answer == 'I am going to work'
                 'Great!'
               elsif @answer.last == '?'
                 'Silly question, get dressed and go to work!'
               else
                 "I don't care, get dressed and go to work!"
               end
  end
end
