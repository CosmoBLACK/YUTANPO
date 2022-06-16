class Public::CommentsController < ApplicationController

  def create
    @onsen = Onsen.find(params[:onsen_id])
    @comment = current_member.comments.new(comment_params)
    @comments = @onsen.comments.order(created_at: :desc).page(params[:page]).per(3)
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
    @onsen = Onsen.find(params[:onsen_id])
    @comment = Comment.new
    @comments = @onsen.comments.order(created_at: :desc).page(params[:page]).per(3)
    flash.now[:alert] = "投稿を削除しました"
    render :comments
  end

  private

  def comment_params
    params.require(:comment).permit(:comment_content, :rate)
  end
end
