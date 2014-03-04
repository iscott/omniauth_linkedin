class OmniauthCallbacksController < Devise::OmniauthCallbacksController   
  def linkedin
      auth = env["omniauth.auth"]
      @user = User.connect_to_linkedin(request.env["omniauth.auth"],current_user)
      if @user.persisted?
        flash[:notice] = I18n.t "devise.omniauth_callbacks.success"
        linkedin_hash = request.env['omniauth.auth']
        session['linkedin'] = linkedin_hash
        linkedin_profile = linkedin_hash
        sign_in_and_redirect @user, :event => :authentication
      else
        session["devise.twitter_uid"] = request.env["omniauth.auth"]
        redirect_to new_user_registration_url
      end
  end
end