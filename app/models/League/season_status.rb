class League::SeasonStatus
  include Mongoid::Document
  include Mongoid::Timestamps
  include Mongoid::Slug

  field :matches_played, type: Integer
  field :matches_won, type: Integer 
  field :matches_draw, type: Integer 
  field :matches_lost, type: Integer 
  field :goals_for, type: Integer
  field :goals_against, type: Integer
  field :goals_difference, type: Integer
  field :points, type: Integer 

  field :trend, type: Integer 

  belongs_to :team, :class_name => "Team::Team"
  belongs_to :season, :class_name => "League::Season"

end