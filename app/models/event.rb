class Event < Base
  include Mongoid::Document
  include Mongoid::Timestamps
  include ::GeoLocation
  field :tweet, :type => String
  field :activity_time, :type => String
  field :activity_type, :type => String
  field :username, :type => String
  
  attr_accessible :tweet, :activity_time, :activity_type, :username
  
  embeds_many :users
end