class League::SeasonStatus
  include Mongoid::Document
  include Mongoid::Timestamps
  include Mongoid::Slug


  belongs_to :team, :class_name => "Team::Team"
  belongs_to :season, :class_name => "League::Season"

end