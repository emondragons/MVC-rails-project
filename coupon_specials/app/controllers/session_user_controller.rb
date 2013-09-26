class SessionUserController < ApplicationController
  def new
  end

  def create
    user = User.find_by_email(params[:session][:email])

    if user.authenticate(params[:session][:password])

  		redirect_to "/session_user/show"

  		# redirect_to user
  	end

  end

  def destroy
  end

  def show
    
  end

end
