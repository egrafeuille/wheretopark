class MapController < ApplicationController
  def index
    @parkings = Parking.all
    @hash = Gmaps4rails.build_markers(@parkings) do |parking, marker|
      marker.lat parking.latitude
      marker.lng parking.longitude
      marker.title parking.hour_fee
      marker.picture build_icon(parking.hour_fee)
      marker.infowindow render_to_string(:partial => "infowindow", :locals => { :parking => parking})
    end
  end
  def build_icon(hour_fee)
    icons = {"cheap"=> "images/wtp_marker_bst.png",
            "middle"=> "images/wtp_marker_ost.png",
            "expensive"=> "images/wtp_marker_pst.png"
            }
    case hour_fee
    when 0 .. 30
        icon = icons["cheap"]
    when 31 .. 65
        icon = icons["middle"]
    else
        icon = icons["expensive"]
    end
    return {"url"=> icon,
            "width"=> 45,
            "height"=> 57
            }
  end
  
end
