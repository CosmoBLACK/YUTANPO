class Public::OnsensController < ApplicationController
  before_action :authenticate_member!

  def index
    @onsens = Onsen.page(params[:page]).per(10)
    @tag_list = Tag.all
  end

  def show
    @onsen = Onsen.find(params[:id])
    @onsen_tags = @onsen.tags
    @comment = Comment.new
    @comments = @onsen.comments.order(created_at: :desc).page(params[:page]).per(3)
  end

  def search_tag
    @tag_list = Tag.all # 検索結果画面でもタグ一覧表示
    @tag = Tag.find(params[:tag_id]) # 検索されたタグを受け取る
    @onsens = @tag.onsens.page(params[:page]).per(10) # 検索されたタグに紐づく投稿を表示
  end
end
