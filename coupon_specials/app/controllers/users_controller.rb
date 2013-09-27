class UsersController < ApplicationController
  def index
  end

  def new
        @user = User.new

  end

  def create
    # render text: params[:user]
    u = User.create(first_name:params[:user][:first_name], 
                last_name:params[:user][:last_name],
                email:params[:user][:email], 
                user_type: params[:user][:user_type], 
                zipcode: params[:user][:zipcode], 
                password:params[:user][:password], 
                password_confirmation:params[:user][:password_confirmation])

    u.locations.create(address: u.zipcode)

    # render :text => params[:post]["first_name"]

    redirect_to "/session_user/new"


  end

  def edit
  end

  def show
    @users = User.all
    client = Foursquare2::Client.new(:client_id => 'YXH5VK34KPYPVD4NMEGMQFJROHTHPVHWYV3YOKTKZLRMJWYY', :client_secret => 'A3M0WXOJGH1WCHHQI1C0JHXTFJWRJXSDNDDEISRS0C5HI3Z2')
    client.search_venues(:ll => '36.142064,-86.816086', :query => 'Starbucks')
    #render text: @rslt
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
