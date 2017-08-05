class QuestionsController < ApplicationController
  def new
    @bot = Bot.find(params[:bot_id])
    @question = Question.new
  end

  def create
    byebug
    transaction do 
      Question.create(question_params)
      Response.create(question_params)
    end
  end
  
  def show
  
  end

  def index
  
  end

private
  def question_params
    params.require(:question).permit(:text, :answer)
  end
end
