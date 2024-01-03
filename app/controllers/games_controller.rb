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

  def preview
    # params.dig(:game, :description)
    @preview = Game.new(game_params)

    respond_to(&:turbo_stream)
  end

  def index
    @pagy, @games = pagy(params[:query].present? ? Game.where("title LIKE ?", "%#{params[:query]}%") : Game.all, items: 10)
    @games = Game.includes(:genre).all

    if params[:query].present?
      @games = Game.where("title LIKE ?", "%#{params[:query]}%")
    else
      @games = Game.all
      @game = Game.new
    end

    respond_to do |format|
      format.turbo_stream
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
    @game = Game.friendly.find(params[:id])
  end

  def edit
    @game = Game.friendly.find(params[:id])
  end

  def update
    @game = Game.friendly.find(params[:id])
    if @game.update(game_params)
      flash[:success] = "This game has been updated successfully."
      redirect_to @game
    else
      render :edit, status: :unprocessable_entity
    end
  end

  def destroy
    game = Game.friendly.find(params[:id])
    game.destroy
    if params[:from] == 'list'
      redirect_to games_path, status: :see_other
    else
      redirect_to root_path, status: :see_other
    end
  end

  private

  def game_params
    params.require(:game).permit(:title, :description, :review_scores, :main_image, :genre_id)
  end

  def find_game
    @game = Game.friendly.find(params[:id])
  rescue ActiveRecord::RecordNotFound
    redirect_to games_path
  end
end
