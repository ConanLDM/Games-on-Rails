class GamesController < ApplicationController

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

  def edit
    @game = Game.find(params[:id])
  end

  def update
    @game = Game.find(params[:id])
    if @game.update(game_params)
      flash[:success] = "This game has been updated successfully."
      redirect_to games_path(@game)
    else
      render :edit, status: :unprocessable_entity
    end
  end

  def destroy
    @game = Game.find(params[:id])
    @game.destroy
    redirect_to games_path, status: :see_other
  end

  private

  def game_params
    params.require(:game).permit(:title, :description, :game_scores, :main_image)
  end
end
