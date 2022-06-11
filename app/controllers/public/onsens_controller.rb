class Public::OnsensController < ApplicationController
  def index
    @onsens = Onsen.latest.page(params[:page]).per(10)
    @tag_list = Tag.all
  end

  def show
    @onsen = Onsen.find(params[:id])
    @onsen_tags = @onsen.tags
  end

  def search_tag
    @tag_list = Tag.all # 検索結果画面でもタグ一覧表示
    @tag = Tag.find(params[:tag_id]) # 検索されたタグを受け取る
    @onsens = @tag.onsens.page(params[:page]).per(10) # 検索されたタグに紐づく投稿を表示
  end
end
