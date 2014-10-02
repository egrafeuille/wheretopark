class MapController < ApplicationController
  def index
    @icon = {"url"=> "/images/marker0111.png",
        "width"=> 45,
        "height"=> 70
        }
#    ''
    @parkings = Parking.all
    @hash = Gmaps4rails.build_markers(@parkings) do |parking, marker|
      marker.lat parking.latitude
      marker.lng parking.longitude
      marker.infowindow parking.hour_fee
      marker.picture @icon 
    end
  end
end
