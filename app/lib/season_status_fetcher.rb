class SeasonStatusFetcher

  def get_season_statuses(season)

    statuses = League::SeasonStatus.where(:season => season)

    return statuses
   
  end  

end  