# Filters added to this controller apply to all controllers in the application.
# Likewise, all the methods added will be available for all controllers.

class HomeController < ActionController::Base
  helper :all # include all helpers, all the time
  protect_from_forgery # See ActionController::RequestForgeryProtection for details

  # Scrub sensitive parameters from your log
  # filter_parameter_logging :password
  
  def index
  end
  
  def send_mail
      Emailer::deliver_contact_email(params[:email])
end
  
 end
 
 
