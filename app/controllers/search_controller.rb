class SearchController < ApplicationController

  def new
  end

  def create
    query = "%#{params[:query]}%"
    @results = Game.where("title LIKE ? OR description LIKE ?", query, query)
    render :new
  end

  def index
    if params[:query].present?
      @games = game.where("name LIKE ?", "%#{params[:query]}%")
    else
      @games = game.all
    end

    if turbo_frame_request?
      render partial: "games", locals: { games: @games }
    else
      render :index
    end
  end
end
