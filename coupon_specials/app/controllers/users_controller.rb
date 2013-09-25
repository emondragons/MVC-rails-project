class UsersController < ApplicationController
  def index
  end

  def new
        @user = User.new

  end

  def create
    # render text: params[:user]
    User.create(first_name:params[:user][:first_name], 
                last_name:params[:user][:last_name],
                email:params[:user][:email], 
                user_type: params[:user][:user_type], 
                zipcode: params[:user][:zipcode], 
                password:params[:user][:password], 
                password_confirmation:params[:user][:password_confirmation])
    # render :text => params[:post]["first_name"]

    redirect_to "/session_user/new"


  end

  def edit
  end

  def show
    @users = User.all

  end

  def update
  end

  def destroy
  end
  private
    # Using a private method to encapsulate the permissible parameters is just a good pattern
    # since you'll be able to reuse the same permit list between create and update. Also, you
    # can specialize this method with per-user checking of permissible attributes.
    def user_params
      params.require(:user).permit(:first_name, :last_name, :email, :zipcode, :password, :password_confirmation)
    end
end
