class Day < ActiveRecord::Base
	belongs_to :week
	has_many :gratefuls
	has_many :targets
end
