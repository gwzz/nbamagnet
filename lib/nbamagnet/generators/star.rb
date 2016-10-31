require 'thor/group'

module Nbamagnet
	module Generators
		class Star < Thor::Group
			include Thor::Actions

			argument :group, :type => :string
			argument :name, :type => :string

			def create_group
				empty_directory(group)
			end

			def copy_star
				template("star.txt", "#{group}/#{name}.txt")
			end

			def self.source_root
			  File.dirname(__FILE__) + "/star"
			end
		end
	end
end
