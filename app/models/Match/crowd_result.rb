class Match::CrowdResult
  include Mongoid::Document
  include Mongoid::Timestamps
  include Mongoid::Slug
  
  field :home_score, type: Integer
  field :away_score, type: Integer 


  belongs_to :match, :class_name => "Match::Match"
  belongs_to :user, :class_name => "User"
  
end