class League::Season
  include Mongoid::Document
  include Mongoid::Timestamps
  include Mongoid::Slug
  
  field :name, type: String
  slug :name

  belongs_to :league, :class_name => "League::League"
  
end