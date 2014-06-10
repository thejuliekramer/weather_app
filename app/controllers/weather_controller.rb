class WeatherController < ApplicationController

require 'unirest'

  def index
  	@response = Unirest.get "https://george-vustrey-weather.p.mashape.com/api.php", headers: { "X-Mashape-Authorization" => "3Vl8Hk3kyx1v1oEx3hb7tWpMRnYqN4gT"}, parameters: { "location" => "Miami"}
  
  	@day_of_week = @response.body["day_of_week"=>"Mon"]
  end
end
