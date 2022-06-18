class Public::SearchesController < ApplicationController
  def search
    @range = params[:range] # 検索モデルの情報を受け取る
    @onsens = Onsen.looks(params[:search], params[:word]).page(params[:page]).per(8) # 検索方法,検索ワードの情報を検索し,モデル内の検索結果を代入
    @tag_list = Tag.all
  end
end