class Users::SessionsController < Devise::SessionsController
  def guest_sign_in
    user = User.guest
    sign_in user
    redirect_to my_page_members_path, notice: 'guestuserでログインしました。'
  end
end