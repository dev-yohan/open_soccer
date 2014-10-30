class HomeController < ApplicationController

	def index
    
    matches_fetcher = MatchesFetcher.new
    leagues_fetcher = LeaguesFetcher.new
    seasons_fetcher = SeasonsFetcher.new
    season_status_fetcher = SeasonStatusFetcher.new

    @premier_league = leagues_fetcher.get_league("Barclays Premier League")
    @premier_league_current_season = seasons_fetcher.get_current_by_league(@premier_league)

		@last_matches = matches_fetcher.get_last(1, 10)
    @premier_league_statuses = season_status_fetcher.get_season_statuses(@premier_league_current_season)

	end	
 

end
