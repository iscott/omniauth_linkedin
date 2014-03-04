class StuffsController < ApplicationController

  def index 
    # @auth = request.env["omniauth.auth"].provider
    # @hash = linkedin_profile
    # @hash = session['linkedin']['info']['email'].to_yaml
    @hash = session['linkedin'].to_yaml

  end
end
