class WeatherController < ApplicationController

require 'unirest'



  def index

  	if params[:q] 
  		@search_for = params[:q]
  		@response = Unirest.get "https://george-vustrey-weather.p.mashape.com/api.php", 
  			headers: { "X-Mashape-Authorization" => "3Vl8Hk3kyx1v1oEx3hb7tWpMRnYqN4gT"}, 
  			parameters: { "location" => "#{@search_for}" }
  
  	end
  	

    
  end
end
