class GenresController < ApplicationController
  def index
    @genres = Genre.all
  end

  def show
    @genre = Genre.find(params[:id])
    @games = @genre.games
    respond_to do |format|
      format.html { render 'games/index' }
      format.turbo_stream { render turbo_stream: turbo_stream.replace('games', partial: 'games_list', locals: { games: @games }) }
    end
  end
end
