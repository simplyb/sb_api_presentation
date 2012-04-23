class Location < Base
  include Mongoid::Document
  include Mongoid::Timestamps
  include ::GeoLocation
end