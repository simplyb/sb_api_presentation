class Event
  include Mongoid::Document
  include Mongoid::Timestamps
  include ::GeoLocation
  field :tweet, :type => String
  field :activity_time, :type => String
  field :activity_type, :type => String
  field :username
  
  embeds_many :users
end
