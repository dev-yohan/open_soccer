class LeaguesFetcher

  def get_league(name)

     league = League::League.where(:name => name).first

     return league

  end  

end  