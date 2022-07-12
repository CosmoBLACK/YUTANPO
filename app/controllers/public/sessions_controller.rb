# frozen_string_literal: true

class Public::SessionsController < Devise::SessionsController
  before_action :member_state, only: [:create]
  # before_action :configure_sign_in_params, only: [:create]

  # GET /resource/sign_in
  # def new
  #   super
  # end

  # POST /resource/sign_in
  # def create
  #   super
  # end

  # DELETE /resource/sign_out
  # def destroy
  #   super
  # end
  def after_sign_in_path_for(resource)
    flash[:info] = "ログインしました。"
    root_path
  end

  def after_sign_out_path_for(resource)
    root_path
  end

  def guest_sign_in
    member = Member.guest
    sign_in member
    redirect_to my_page_members_path, info: 'ゲストメンバーでログインしました。'
  end

  protected

  # 退会しているかを判別するメソッド
  def member_state
    # 入力されたemailからアカウントを1件取得
    @member = Member.find_by(email: params[:member][:email])
    # アカウントを取得できなかった場合、このメソッドを終了
    return if !@member
    # 取得したアカウントのパスワードと、入力されたパスワードが一致しているかを判別
    if @member.valid_password?(params[:member][:password]) && (@member.deleted_flag == true)
      redirect_to new_member_registration_path
    end
  end
  # If you have extra params to permit, append them to the sanitizer.
  # def configure_sign_in_params
  #   devise_parameter_sanitizer.permit(:sign_in, keys: [:attribute])
  # end
end
