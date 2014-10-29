class HomeController < ApplicationController

	def index
    
    matches_fetcher = MatchesFetcher.new

		@last_matches = matches_fetcher.get_last(1, 10)
    puts "LAST MATCHES"
    puts @last_matches

	end	
 

end
