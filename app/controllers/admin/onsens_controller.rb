class Admin::OnsensController < ApplicationController
  before_action :authenticate_admin!

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
    @comments = @onsen.comments.order(created_at: :desc).page(params[:page]).per(2)
  end

  def create
    @onsen = Onsen.new(onsen_params)
    # 受け取った値を,で区切って配列にする
    # split = 1番目の引数に指定したパターンに従って文字列を分割し、分割された各部分の文字列を要素とする配列を取得する
    tag_list = params[:onsen][:tag_name].split(',')
    if @onsen.save
      @onsen.save_tag(tag_list)
      redirect_to admin_onsens_path, success: "温泉情報を登録しました！"
    else
      flash.now[:danger] = "未入力の項目があります。"
      render :new
    end
  end

  def edit
    @onsen = Onsen.find(params[:id])
    @tag_list = @onsen.tags.pluck(:tag_name).join(',')
  end

  def update
    # onsenのid持ってくる
    @onsen = Onsen.find(params[:id])
    # 入力されたタグを受け取る
    tag_list = params[:onsen][:tag_name].split(',')
    if @onsen.update(onsen_params)
      # このonsen_idに紐づいていたタグを@old_relationsに入れる
      @old_relations = OnsenTag.where(onsen_id: @onsen.id)
      # それらを取り出し、消去する
      @old_relations.each do |relation|
        relation.delete
      end
      @onsen.save_tag(tag_list)
      redirect_to admin_onsen_path, success: "温泉情報を更新しました！"
    else
      flash.now[:danger] = "未入力の項目があります。"
      render :edit
    end
  end

  def search_tag
    @tag_list = Tag.all # 検索結果画面でもタグ一覧表示
    @tag = Tag.find(params[:tag_id]) # 検索されたタグを受け取る
    @onsens = @tag.onsens.page(params[:page]).per(10) # 検索されたタグに紐づく投稿を表示
  end

  private

  def onsen_params
    params.require(:onsen).permit(:name, :introduction, :postal_code, :address, :onsen_image, :tag_ids)
  end
end