class Admin::OnsensController < ApplicationController
  def new
    @onsen = Onsen.new
    @tags = Tag.all
  end

  def index
    @onsens = Onsen.page(params[:page]).per(10)
    @tag_list = Tag.all
  end

  def show
    @onsen = Onsen.find(params[:id])
    @onsen_tags = @onsen.tags
  end

  def create
    @onsen = Onsen.new(onsen_params)
    @onsen.member_id = current_member.id
    # 受け取った値を,で区切って配列にする
    # split = 1番目の引数に指定したパターンに従って文字列を分割し、分割された各部分文字列を要素とする配列を取得する
    tag_list = params[:onsen][:name].split(',')
    if @onsen.save
      @onsen.save_tag(tag_list)
      flash[:notice] = "温泉情報を登録しました！"
      redirect_to admin_onsens_path
    else
      render :new
    end
  end

  def edit
    @onsen = Onsen.find(params[:id])
    @tag_list = @post.tags.pluck(:name).join(',')
  end

  def update
    @onsen = Onsen.find(params[:id])
    tag_list = params[:onsen][:name].split(',')
    if @onsen.update(onsen_params)
      @onsen.save_tag(tag_list)
      flash[:notice] = "温泉情報を更新しました！"
      redirect_to admin_onsen_path
    else
      render :edit
    end
  end
  
  def search_tag
    # 検索結果画面でもタグ一覧表示
    @tag_list = Tag.all
　　# 検索されたタグを受け取る
    @tag = Tag.find(params[:tag_id])
　　# 検索されたタグに紐づく投稿を表示
    @onsens = @tag.onsens.page(params[:page]).per(10)
  end
  
  private

  def onsen_params
    params.require(:onsen).permit(:name, :introduction, :address, :onsen_image, :tag_id)
  end
end