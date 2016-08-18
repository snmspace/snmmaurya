class Users::OmniauthCallbacksController < Devise::OmniauthCallbacksController

  def github
    @user = User.from_omniauth(request.env["omniauth.auth"])
    if @user.present?
      sign_in_and_redirect @user
    else
      flash[:error] = "Something went wrong please try later!"
      redirect_to root_path
    end
  end

  def twitter
    flash[:message] = "Signin/Signup with twitter under development"
    redirect_to root_path
    @user = User.from_omniauth(request.env["omniauth.auth"])
    sign_in_and_redirect @user
  end

  def facebook
    @user = User.from_omniauth(request.env["omniauth.auth"])
    if @user.present?
      sign_in_and_redirect @user
    else
      flash[:error] = "Something went wrong please try later!"
      redirect_to root_path
    end
  end

  def google
    flash[:message] = "Signin/Signup with google under development"
    redirect_to root_path
    @user = User.from_omniauth(request.env["omniauth.auth"])
    sign_in_and_redirect @user
  end

  def linkedin
    @user = User.from_omniauth(request.env["omniauth.auth"])
    sign_in_and_redirect @user
  end

  def amazon
    flash[:message] = "Signin/Signup with amazon under development"
    redirect_to root_path
    @user = User.from_omniauth(request.env["omniauth.auth"])
    sign_in_and_redirect @user
  end

  def passthru
    super
  end

  def failure
    super
  end

protected
  # The path used when OmniAuth fails
  def after_omniauth_failure_path_for(scope)
    super(scope)
  end
end
