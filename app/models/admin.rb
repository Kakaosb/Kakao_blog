class Admin < ActiveRecord::Base
 has_secure_password

 before_save { self.login= login.downcase }
  before_create :create_remember_token
 
  def Admin.new_remember_token
    SecureRandom.urlsafe_base64
  end

  def Admin.encrypt(token)
    Digest::SHA1.hexdigest(token.to_s)
  end

  private

    def create_remember_token
      self.remember_token = Admin.encrypt(Admin.new_remember_token)
    end
end