class SeasonStatusFetcher

  def get_season_statuses(season)

    statuses = League::SeasonStatus.where(:season => season).desc(:points)

    return statuses
   
  end  

end  