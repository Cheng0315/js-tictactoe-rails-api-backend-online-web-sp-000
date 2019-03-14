class GamesController < ApplicationController
  # Add your GamesController code here
  def index

  end

  def create
    state = {state: params[:state].to_s}
    @game = Game.create(state)
    render json: @game, status: 201
  end

  def Show

  end

  def update

  end

  private

  def game_params
    params.require(:game).permit(:state)
  end
end
