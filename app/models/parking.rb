class Parking < ActiveRecord::Base
  attr_accessible :address, :free_spots, :hour_fee, :latitude, :longitude, :name, :total_spots
end
