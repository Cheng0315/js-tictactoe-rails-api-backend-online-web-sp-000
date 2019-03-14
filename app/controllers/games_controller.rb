class GamesController < ApplicationController
  # Add your GamesController code here
  def index
    @games = Game.all
    binding.pry
    render json: @game
  end

  def create
    @game = Game.new
    @game.state = params[:state]
    @game.save
    render json: @game, status: 201
  end

  def show
    @game = Game.find(params[:id])
    render json: @game
  end

  def update
    @game = Game.find(params[:id])
    @game.state = params[:state]
    @game.save
    render json: @game
  end

  private

  def game_params
    params.require(:game).permit(:state)
  end
end
