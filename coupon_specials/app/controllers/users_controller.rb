class UsersController < ApplicationController
  def index
  end

  def new
        @user = User.new

  end

  def create

    User.create(first_name:params[:first_name], last_name:params[:last_name],email:params[:email])
    # render :text => params[:post]["first_name"]

    redirect_to "/users/show"


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
end
