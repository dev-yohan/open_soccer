# encoding: utf-8
# encoding: utf-8

class LeagueUploader < CarrierWave::Uploader::Base

  include Cloudinary::CarrierWave


  def public_id
    return model.id
  end  


end