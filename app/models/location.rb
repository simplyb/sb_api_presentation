class Location
  include Mongoid::Document
  include Mongoid::Timestamps
  include ::GeoLocation
end