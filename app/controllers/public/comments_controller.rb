class Public::CommentsController < ApplicationController
  def create
    onsen = Onsen.find(params[:onsen_id])
    comment = current_member.comments.new(comment_params)
    comment.onsen_id = onsen.id
    comment.save
    redirect_to onsen_path(onsen)
  end

  def destroy
    Comment.find(params[:id]).destroy
    redirect_to request.referer
  end

  private

  def comment_params
    params.require(:comment).permit(:comment_content, :rate)
  end
end
