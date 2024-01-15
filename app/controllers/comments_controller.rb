class CommentsController < ApplicationController
  def create
    @game = Game.friendly.find(params[:game_id])
    @comment = @game.comments.new(comment_params)
    respond_to do |format|
      if @comment.save
        format.turbo_stream
        format.html { redirect_to @game }
      else
        format.turbo_stream { render turbo_stream: turbo_stream.replace(@comment, partial: "comments/form", locals: { comment: @comment }) }
        format.html { render "games/show" }
      end
    end
  end

  def show
    @comment = Comment.find(params[:id])
    redirect_to game_path(@comment.game)
  end

  def destroy
    @comment = Comment.find(params[:id])
    @comment.destroy
    respond_to do |format|
      format.turbo_stream
      format.html { redirect_to game_path(@comment.game) }
    end
  end

  private

  def comment_params
    params.require(:comment).permit(:body)
  end
end
