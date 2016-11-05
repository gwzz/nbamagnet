require 'thor'
require 'nbamagnet'
require 'nbamagnet/generators/star'

module Nbamagnet
  class CLI < Thor
  	desc "portray ITEM", "Determines if a player is good or not"
	def portray(name)
		puts Nbamagnet::Player.portray(name)
	end

	desc "star", "Generates a star scaffold"
	def star(group, name)
		Nbamagnet::Generators::Star.start([group, name])
	end

	desc "player", "Get player index"
	def player
		Nbamagnet.crawl_player
	end

  end
end