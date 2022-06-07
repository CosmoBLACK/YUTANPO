class Admin::OnsensController < ApplicationController
  def new
    @onsen = Onsen.new
    @tags = Tag.all
  end

  def index
    @onsens = Onsen.page(params[:page])
  end

  def show
    @onsen = Onsen.find(params[:id])
  end

  def create
    @onsen = Onsen.new(onsen_params)
    if @onsen.save
      flash[:notice] = "温泉情報を登録しました！"
      redirect_to admin_onsens_path
    else
      @tags = Tag.all
      render :new
    end
  end

  def edit
    @onsen = Onsen.find(params[:id])
    @tags = Tag.all
  end

  def update
    @tag = Tag.find(params[:id])
    if @onsen.update(onsen_params)
      flash[:notice] = "温泉情報を更新しました！"
      redirect_to admin_onsen_path
    else
      @tags = Tag.all
      render :edit
    end
  end

  private

  def onsen_params
    params.require(:onsen).permit(:name, :introduction, :address, :onsen_image, :tag_id)
  end
end