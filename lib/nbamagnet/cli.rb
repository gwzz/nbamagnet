require 'thor'
require 'nbamagnet'
require 'nbamagnet/generators/star'

module Nbamagnet
  class CLI < Thor
  	desc "portray ITEM", "Determines if a player is good or not"
	def portray(name)
		puts Nbamagnet::Player.portray(name)
	end

	desc "pluralize", "Pluralizes a word"
	method_option :word, :aliases => "-w"
	def pluralize
	  puts Nbamagnet::Player.pluralize(options[:word])
	end

	desc "star", "Generates a star scaffold"
	def star(group, name)
		Nbamagnet::Generators::Star.start([group, name])
	end

  end
end