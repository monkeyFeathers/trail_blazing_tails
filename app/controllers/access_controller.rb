class AccessController < ApplicationController
  


  def index
  	# display text and links specific to user roll
  	# AdminUser
  	# Runner
  end

  def login
  	# login form
  end

  def attempt_login
  	if params[:email].present? && params[:password].present?
  		found_user = AdminUser.where(:email => params[:email]).first
  		if found_user
  			authorized_user = found_user.authenticate(params[:password])
  		elsif(found_user = Runner.where(:email => params[:email]))
  		# 	authorized_runner = found_user.authenticate(params[:password])
      flash[:notice] = 'runner found'
      redirect_to(:action => 'login')
  		end
  	end
  	# if authorized_runner
  	# 	# TODO: mark runner as logged in
  	# 	flash[:notice] = 'you are now logged in'
  	# 	redirect_to(:controller => 'run', :action => 'new')
  	if authorized_user
  		# TODO: mark user as logged in
  		flash[:notice] = 'you are now logged in'
  		redirect_to(:action => 'index')
    else
      flash[:error] = "Invalid email or password"
      redirect_to(:action => 'login')
  	end
  end

  def logout
  	# TODO: mark user as logged out
  	flash[:notice] = "Logged out"
  	redirect_to(:action => "login")
  end

end
