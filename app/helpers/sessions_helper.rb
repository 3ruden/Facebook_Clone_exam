module SessionsHelper
  def current_user
    @current_user ||= User.find_by(id: session[:user_id])
  end

  def logged_in?
    current_user.present?
  end

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

  def ensure_correct_user
    unless current_user.pictures.ids.include?(params[:id].to_i)
      redirect_to pictures_url, notice: "権限がありあせん"
    end
  end
end
