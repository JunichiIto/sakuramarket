module ApplicationHelper
  def current_user
    @current_user
  end

  def user_signed_in?
    not current_user.nil?
  end
end
