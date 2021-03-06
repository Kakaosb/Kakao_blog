module SessionsHelper
	 def sign_in(user)
    remember_token = Admin.new_remember_token
    cookies.permanent[:remember_token] = remember_token
    user.update_attribute(:remember_token, Admin.encrypt(remember_token))
    self.current_user = user
  end

  def signed_in?
    !current_user.nil?
  end

  def current_user=(user)
    @current_user = user
  end

  def current_user
    remember_token = Admin.encrypt(cookies[:remember_token])
    @current_user ||= Admin.find_by(remember_token: remember_token)
  end

 def sign_out
    current_user.update_attribute(:remember_token,
    Admin.encrypt(Admin.new_remember_token))
    cookies.delete(:remember_token)
    self.current_user = nil
  end

  def signed_in_user
    unless signed_in?
      redirect_to login_url, notice: "Please sign in."
    end
  end
end
