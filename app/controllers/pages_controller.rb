class PagesController < ApplicationController
  def home
    @featured_games = Game.first(10)
  end

  def about
  end

  def nintendo
  end

  def comments
    render partial: 'pages/comments', locals: { comments: @post.comments }
  end

  def show
    @comments = Comment.all
    render "pages/show"
  end

  def update
    if @page.update(page_params)
      flash[:success] = "Page saved"
      redirect_to @page
    else
      render :edit, status: :unprocessable_entity
    end
  end

  def sort
    # ...
    flash.now[:success] = "Sorting saved"
    render turbo_stream: turbo_stream.update("flash", partial: "shared/flash")
  end
end
