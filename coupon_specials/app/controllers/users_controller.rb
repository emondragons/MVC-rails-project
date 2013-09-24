class UsersController < ApplicationController
  def index
  end

  def new
        @user = User.new

  end

  def create
    render :text => params

  end

  def edit
  end

  def show
    @user.User.all
  end

  def update
  end

  def destroy
  end
end
