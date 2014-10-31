class HomeController < ApplicationController

	def index
    
    matches_fetcher = MatchesFetcher.new
    leagues_fetcher = LeaguesFetcher.new
    seasons_fetcher = SeasonsFetcher.new
    season_status_fetcher = SeasonStatusFetcher.new

    @premier_league = leagues_fetcher.get_league("Barclays Premier League")
    @premier_league_current_season = seasons_fetcher.get_current_by_league(@premier_league)		
    @premier_league_statuses = season_status_fetcher.get_season_statuses(@premier_league_current_season)

    @postobon_league = leagues_fetcher.get_league("Liga Postobon")
    @postobon_league_current_season = seasons_fetcher.get_current_by_league(@postobon_league)     
    @postobon_league_statuses = season_status_fetcher.get_season_statuses(@postobon_league_current_season)

    @last_matches = matches_fetcher.get_last(1, 5)
    @next_matches = matches_fetcher.get_next(1, 5)

	end	
 

end
