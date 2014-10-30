class SeasonsFetcher

  def get_current_by_league(league)

     season = League::Season.where(:league => league).desc(:start_date).first
     return season

  end  

end