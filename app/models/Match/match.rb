class Match::Match
  include Mongoid::Document
  include Mongoid::Timestamps
  include Mongoid::Slug
  
  field :name, type: String
  slug :name
  field :match_date, type: DateTime

  has_and_belongs_to_many :home, :class_name => "Team::Team", :inverse_of => nil
  has_and_belongs_to_many :away, :class_name => "Team::Team", :inverse_of => nil
  
end