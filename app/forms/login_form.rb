class LoginForm
  include ActiveModel::Model

  attr_accessor :email, :password

  def authenticate
    User.find_by(email: email).try(:authenticate, password)
  end
end
