class Public::MembersController < ApplicationController
  def show
    @member = current_member
  end

  def edit
    @member = current_member
  end

  def update
    @member = current_member
    if @member.update(member_params)
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
end
