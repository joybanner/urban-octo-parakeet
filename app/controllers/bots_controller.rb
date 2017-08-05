class BotsController < ApplicationController
  def index
    @bots = current_user.bots
  end

  def new
    @bot = Bot.new
  end
  
  def create
    @bot = Bot.new(bot_params)
    @bot.user_id = current_user.id
    if @bot.save
      redirect_to bot_path(@bot)
    else
      render :new
    end
  end

  def show
    @bot = Bot.find(params[:id])
  end

private
  def bot_params
    params.require(:bot).permit(:name)
  end

end
