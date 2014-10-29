class League::Season
  include Mongoid::Document
  include Mongoid::Timestamps
  include Mongoid::Slug
  
  field :name, type: String
  slug :name

  field :start_date, type: DateTime
  field :end_date, type: DateTime

  belongs_to :league, :class_name => "League::League"
  
end