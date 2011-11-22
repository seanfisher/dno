class ApplicationController < ActionController::Base
  protect_from_forgery
  
  private
  def not_authenticated
    redirect_to login_url, :alert => "Nice try, buster, but you have to be more important than you are now to access that page. :("
  end
end
