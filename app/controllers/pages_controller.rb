class PagesController < ActionController::Base
  def home
    @user = User.first
  end
end
