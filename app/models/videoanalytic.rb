class Videoanalytic < ApplicationRecord
	#validates :noplate
	validates_uniqueness_of :noplate
end
