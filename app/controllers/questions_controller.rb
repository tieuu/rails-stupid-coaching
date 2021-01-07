class QuestionsController < ApplicationController
  def ask; end

  def answer
    @answer = if params[:question].downcase == 'i am going to work'
                'Great!'
              elsif params[:question].downcase == ''
                'Get dressed and go to work!'
              elsif params[:question].split('')[-1] == '?'
                'Silly question, get dressed and go to work!'
              else
                "I don't care, get dressed and go to work!"
              end
  end
end
