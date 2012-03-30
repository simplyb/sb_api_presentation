class Location
  include Mongoid::Document
  field :zip, :type => String
  field :lat, :type => String
  field :long, :type => String
  field :street, :type => String
  field :city, :type => String
  field :state, :type => String
  field :country, :type => String
  
  
  attr_accessor
  attr_accessible :zip, :lat, :long, :street, :city, :state, :country
  
  embedded_in :user
  embedded_in :event
end
