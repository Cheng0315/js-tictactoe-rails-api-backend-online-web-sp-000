class GamesController < ApplicationController
  # Add your GamesController code here
  def index

  end

  def create

    @game = Game.create()
    render json: @game, status: 201
  end

  def show

  end

  def update

  end

  private

  def game_params
    params.require(:game).permit(:state)
  end
end
