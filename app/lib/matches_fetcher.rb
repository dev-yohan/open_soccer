class MatchesFetcher

  def get_last(page, page_size)
   
    now_date = DateTime.now.in_time_zone(ActiveSupport::TimeZone.new(ENV["timezone"])).to_time.to_i
    matches = Match::Match.where(:match_date => { :$lt =>  now_date }).desc(:match_date).page(page).per(page_size)

    return matches

  end  

  def get_next(page, page_size)
   
    now_date = DateTime.now.in_time_zone(ActiveSupport::TimeZone.new(ENV["timezone"])).to_time.to_i
    matches = Match::Match.where(:match_date => { :$gte =>  now_date }).asc(:match_date).page(page).per(page_size)

    return matches

  end  

end  