class Event
  include Mongoid::Document
  field :activity_time, :type => String
  field :activity_type, :type => String
  
  embeds_one :location
  embeds_many :users
end
