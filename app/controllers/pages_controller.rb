require 'open-uri'

class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :home ]

  def home
  end

  def discover

    # @ip = request.remote_ip
    # @user_location = JSON.parse(open("http://iplocate.io/api/lookup/#{@ip}").read)
    # @coordinates = [@user_location['latitude'], @user_location['longitude']]
    # @restaurants = Restaurant.near(@coordinates, 5)
    # @markers = @restaurants.geocoded.map do |restaurant|
    #   {
    #     lat: restaurant.latitude,
    #     lng: restaurant.longitude,
    #     infoWindow: render_to_string(partial: "info_window", locals: { restaurant: restaurant }),
    #     image_url: helpers.asset_url('372_36_1440760950.jpg')
    #   }
    # end
    @ip = request.remote_ip
    @user_location = JSON.parse(open("http://iplocate.io/api/lookup/#{@ip}").read)
    @coordinates = [@user_location['latitude'], @user_location['longitude']]
    @coordinates = [51.529, -0.06]
    @restaurants = Restaurant.near(@coordinates, 10)
    @dishes = @restaurants.map { |r| r.dishes }.flatten
    @markers = @restaurants.geocoded.map do |restaurant|
      {
        lat: restaurant.latitude,
        lng: restaurant.longitude
      }
    end
  end
end
