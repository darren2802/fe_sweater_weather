class HomeController < ApplicationController
  def index
    if params[:location]
      location = params[:location]
    else
      location = 'london'
    end

    @weather_information = WeatherService.information(location)
    @background_img_url = BackgroundImageService.image_full_url(location)
  end
end
