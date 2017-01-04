class Grateful < ActiveRecord::Base
	belongs_to :day
	validates :comment, :presence => true
end
