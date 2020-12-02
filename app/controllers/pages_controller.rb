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
        lng: restaurant.longitude,
        image_url: helpers.asset_url('forkok copy.png')
      }
    end
  end
end
