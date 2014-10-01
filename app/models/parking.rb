class Parking < ActiveRecord::Base
  attr_accessible :address, :free_spots, :hour_fee, :latitude, :longitude, :name, :total_spots
  validates :address, :name, :presence => true
  validates :name, :uniqueness => true  
  validates :hour_fee, :numericality => {:greater_than_or_equal_to => 0.01}
  validates :free_spots, :total_spots, :numericality => {:greater_than => 0}
end
