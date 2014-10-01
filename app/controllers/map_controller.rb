class MapController < ApplicationController
  def index
    @parkings = Parking.all
    @hash = Gmaps4rails.build_markers(@parkings) do |parking, marker|
      marker.lat parking.latitude
      marker.lng parking.longitude
      marker.infowindow parking.name
    end
  end
end
