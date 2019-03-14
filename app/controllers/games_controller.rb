class GamesController < ApplicationController
  # Add your GamesController code here
  def index

  end

  def created
    @game = Game.create()
  end

  def Show

  end

  def update

  end
end
