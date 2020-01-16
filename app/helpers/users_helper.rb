module UsersHelper
  def authenticate_user
    if current_user.nil?
      redirect_to new_session_url, notice: "ログインが必要です"
    end
  end

  def forbid_login_user
    if current_user.present?
      redirect_to pictures_url, notice: "すでにログインしています"
    end
  end
end
