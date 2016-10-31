require 'active_support/inflector'

module Nbamagnet
  class Player
    def self.portray(name)
      if name.downcase == "kobe"
        "Good!"
      else
        "Also Good!"
      end
    end

    def self.pluralize(word)
	  word.pluralize 	
    end
  end
end