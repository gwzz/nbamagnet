require "nbamagnet/version"
require "nbamagnet/player"
require 'mechanize'
require 'json'
module Nbamagnet
  # NBA player stats API
  # player intex
  URL_PLAYER_INDEX = "http://stats.nba.com/stats/commonallplayers?IsOnlyCurrentSeason=1&LeagueID=00&Season=2016-17"
	URL_PLAYER_STATS = "http://stats.nba.com/stats/playercareerstats?LeagueID=00&PlayerID=%s&PerMode=%s"
	def self.crawl_player
		agent = Mechanize.new
		agent.user_agent = 'Chrome/53.0.2785.143'
		agent.max_history = 1
		search_page = agent.get("#{URL_PLAYER_INDEX}")
		doc = JSON.parse(search_page.body)
	end

end
