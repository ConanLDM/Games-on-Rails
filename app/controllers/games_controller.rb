class GamesController < ApplicationController
  def index
    @games = Game.all
    @game = Game.new
  end

  def new
    @game = Game.new
  end

  def nintendo
  end
end
