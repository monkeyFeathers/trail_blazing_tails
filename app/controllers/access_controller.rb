class AccessController < ApplicationController
  
  before_action :confirm_logged_in, 
    :except => [:login, :attempt_login, :logout]

  def index
  	# display text and links specific to user roll
  	# AdminUser
  	# Runner
    @user = User.find(session[:user_id])
    if @user.type == "Runner"
      redirect_to(:action => 'runner_index')
    end
  end

  def runner_index
    # runner menu
    @runner = Runner.find(session[:user_id])
  end

  def login
  	# login form
  end

  def attempt_login
  	if params[:email].present? && params[:password].present?
  		found_user = User.where(:email => params[:email]).first
  		if found_user
  			authorized_user = found_user.authenticate(params[:password])
  		end
  	end
  	if authorized_user
  		# mark user as logged in
      session[:user_id] = authorized_user.id
      session[:user_type] = authorized_user.type
      flash[:notice] = 'you are now logged in'
      redirect_to(:action => 'index')
    else
      flash[:error] = "Invalid email or password"
      redirect_to(:action => 'login')
  	end
  end

  def logout
  	# mark user as logged out
    session[:user_id] = nil
    session[:user_level] = nil
  	flash[:notice] = "Logged out"
  	redirect_to(:action => "login")
  end



end
