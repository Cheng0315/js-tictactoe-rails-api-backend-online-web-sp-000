class GamesController < ApplicationController
  # Add your GamesController code here
  def index

  end

  def create
    binding.pry
    @game = Game.create(game_params)
    render json: @game, status: 201
  end

  def Show

  end

  def update

  end

  private

  def game_params
    params.require(:game).permit(:state.to_s)
  end
end
