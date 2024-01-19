class PagesController < ApplicationController
  # skip_before_action :authenticate_user!, only: :home

  def home
    @featured_games = Game.order("RANDOM()").limit(10)
    @featured_reviews = Review.order("RANDOM()").limit(2)
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
