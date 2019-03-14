class GamesController < ApplicationController
  # Add your GamesController code here
  def index

  end

  def create
    @game = Game.new()
    render json: @post, status: 201
  end

  def Show

  end

  def update

  end
end
