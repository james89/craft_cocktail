class Bar < ActiveRecord::Base

attr_accessible :name, :address, :bar_url, :latitude, :longitude
acts_as_gmappable :process_geocoding => false

geocoded_by :address
after_validation :geocode

end
