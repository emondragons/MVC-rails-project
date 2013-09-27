class SessionUserController < ApplicationController

require 'rest-open-uri'
require 'json'
require 'httparty'
  def new
  end

  def create
    user = User.find_by_email(params[:session][:email])

    if user.authenticate(params[:session][:password])

  		if user.user_type == "user"
  			@@login_data = user
          	redirect_to "/session_user/show_user"
        else
        	@@login_data = user
          	redirect_to "/session_user/show_vendor"
        end

  	end

  end

  def destroy
  end

  def show_user
  	@user = @@login_data

  	locations_near = @user.locations.last.nearbys(10)

  	@vendors_near = locations_near

  	my_client_id = "YXH5VK34KPYPVD4NMEGMQFJROHTHPVHWYV3YOKTKZLRMJWYY"
  	my_client_secret = "A3M0WXOJGH1WCHHQI1C0JHXTFJWRJXSDNDDEISRS0C5HI3Z2"

  	foursquare_root = "https://api.foursquare.com/v2/venues/"
  	search_location = "trending?ll=" + @user.locations.last.latitude.to_s + "," + @user.locations.last.longitude.to_s 
  	authenticate = "&client_id=" + my_client_id + "&client_secret=" + my_client_secret +"&radius2000"

  	foursquare_call = foursquare_root + search_location + authenticate

  	result = HTTParty.get(foursquare_call)
  	json_obj = JSON.parse(result.body)

    venues_array = json_obj["response"]["venues"]

    if venues_array.count
  			@count_venues.each  { |venues=json_obj["response"]["venues"][0]["hereNow"]["count"]
  		end

  	# ind(x.user_id).user_type == "vendor"	}
    
  end

  def show_vendor
  	@vendor= @@login_data

  	locations_near = @vendor.locations.last.nearbys(10)

  	@users_near = locations_near

  	# locations_near.each { |x| @users_near << User.find(x.user_id) if User.find(x.user_id).user_type == "user"}


  end

  def update_locations
  	address = params[:update_locations][:location]


  	@@login_data.locations.create( address: address)

  	redirect_to "/session_user/show_user"
  end

  def update_specials

  	@@login_data.specials.create( 	title: params[:update_specials][:title], 
  									description: params[:update_specials][:description],
  									photo: params[:update_specials][:photo]
  									)


  	redirect_to "/session_user/show_vendor"
  end

end
