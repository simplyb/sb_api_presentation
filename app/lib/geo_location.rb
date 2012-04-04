
module GeoLocation
  extend ActiveSupport::Concern

  included do
    field :zip, :type => String
    field :geoloc, :type => Array
    field :street, :type => String
    field :city, :type => String
    field :state, :type => String
    field :country, :type => String
    field :default, :type => Boolean

    index [[ :geoloc, Mongo::GEO2D ]]

    attr_accessible :geoloc, :zip, :street, :city, :state, :country, :default

  end

end