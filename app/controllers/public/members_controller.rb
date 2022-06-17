class Public::MembersController < ApplicationController
  before_action :authenticate_member!
  before_action :ensure_guest_member, only: [:edit]

  def show
    @member = current_member
  end

  def edit
    @member = current_member
  end

  def update
    @member = current_member
    if @member.update(member_params)
      redirect_to my_page_members_path, success: "会員情報を更新しました！"
    else
      flash.now[:danger] = "未入力の項目があります。"
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
    params.require(:member).permit(:name, :email, :profile_image)
  end

  def ensure_guest_member
    if current_member.name == "guestmember"
      redirect_to my_page_members_path, notice: 'ゲストメンバーはプロフィール編集画面へ遷移できません。'
    end
  end
end
