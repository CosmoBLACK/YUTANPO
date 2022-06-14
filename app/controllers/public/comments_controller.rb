class Public::CommentsController < ApplicationController

  def create
    @onsen = Onsen.find(params[:onsen_id])
    @comment = current_member.comments.new(comment_params)
    @comment.onsen_id = @onsen.id
    if @comment.save
      flash.now[:notice] = "コメントを投稿しました"
      render :comments
    else
      render :error
    end
  end

  def destroy
    Comment.find(params[:id]).destroy
    flash.now[:alert] = "投稿を削除しました"
    @onsen = Onsen.find(params[:onsen_id])
    render :comments
  end

  private

  def comment_params
    params.require(:comment).permit(:comment_content, :rate)
  end
end
