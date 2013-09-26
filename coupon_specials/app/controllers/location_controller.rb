class LocationController < ApplicationController
  def create
  end

  def new
  end

  def show
  end

  def index
  	@locations=Location.all
  end
end
