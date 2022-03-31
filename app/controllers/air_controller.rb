class AirController < ApplicationController
  def index
    response = HTTP.get("http://api.airvisual.com/v2/nearest_city?key=#{Rails.application.credentials.air_key}")
    render json: response.parse(:json)
  end
end
