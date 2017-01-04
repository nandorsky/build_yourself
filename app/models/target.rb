class Target < ActiveRecord::Base
	belongs_to :day
	validates :target, :presence => true
end
