class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  before_filter :load_site

  private
  def load_site
  	@site = Site.all.first	#Make sure there's only one profile
  end
end
