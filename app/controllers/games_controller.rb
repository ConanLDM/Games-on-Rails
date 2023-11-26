class GamesController < ApplicationController

  def create
    @game = Game.new(game_params)
    if @game.save
      flash[:success] = "Game created successfully."
      redirect_to games_path
    else
      render 'new'
    end
  end

  def new
    @game = Game.new
  end

  def edit
    @restaurant = Restaurant.find(params[:id])
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

  def show
    @game = Game.find(params[:id])
  end

  private

  def game_params
    params.require(:game).permit(:title, :description, :review_scores, :main_image)
  end
end
