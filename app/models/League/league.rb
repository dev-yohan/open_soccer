class League::League
  include Mongoid::Document
  include Mongoid::Timestamps
  include Mongoid::Slug
  
  field :name, type: String
  slug :name

  field :logo, type:String 
  mount_uploader :logo, LeagueUploader

  has_many :seasons, dependent: :destroy, :class_name => "League::Season"
  
end