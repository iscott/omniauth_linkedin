class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  attr_accessor :linkedin_profile
  # def linkedin_profile=(hash)
  # 	@linkedin_profile = hash
  # end

  # def linkedin_profile()
  # 	@linkedin_profile
  # end

end
