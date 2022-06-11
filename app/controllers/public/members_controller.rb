class Public::MembersController < ApplicationController
  before_action :ensure_guest_user, only: [:edit]

  def show
    @member = current_member
  end

  def edit
    @member = current_member
  end

  def update
    @member = current_member
    if @member.update(member_params)
      flash[:notice] = "会員情報を更新しました！"
      redirect_to my_page_members_path
    else
      render :edit
    end
  end

  def unsubscribe
    @member = current_member
  end

  def withdraw
    @member = current_member
    @member.update(deleted_flag: true)
    reset_session
    redirect_to root_path
  end

  private

  def member_params
    params.require(:member).permit(:name, :email, :password, :profile_image)
  end

  def ensure_guest_user
    @user = User.find(params[:id])
    if @user.name == "guestuser"
      redirect_to my_page_members_path, notice: 'ゲスト会員はプロフィール編集画面へ遷移できません。'
    end
  end
end
