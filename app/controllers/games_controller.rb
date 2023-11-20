class GamesController < ApplicationController

  def new
    @game = Game.new
  end

  def index
    if params[:query].present?
      @games = Game.where("title LIKE ?", "%#{params[:query]}%")
    else
      @games = Game.all
    end

    respond_to do |format|
      format.html do
        if turbo_frame_request?
          render partial: "games", locals: { games: @games }
        else
          render :index
        end
      end
    end
  end
end
