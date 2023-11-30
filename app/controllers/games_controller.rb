class GamesController < ApplicationController
  before_action :find_game, only: [:show, :edit, :update, :destroy]

  def create
    @game = Game.new(game_params)
    if @game.save
      flash[:success] = "Game created successfully."
      redirect_to games_path
    else
      render :new, status: :unprocessable_entity
    end
  end

  def new
    @game = Game.new
  end

  def index
    @pagy, @games = pagy(params[:query].present? ? Game.where("title LIKE ?", "%#{params[:query]}%") : Game.all, items: 5)

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
  end

  def edit
  end

  def update
    if @game.update(game_params)
      flash[:success] = "This game has been updated successfully."
      redirect_to games_path(@game)
    else
      render :edit, status: :unprocessable_entity
    end
  end

  def destroy
    @game.destroy
    redirect_to games_path, status: :see_other
  end

  private

  def game_params
    params.require(:game).permit(:title, :description, :review_scores, :main_image)
  end

  def find_game
    @game = Game.find(params[:id])
  end
end
