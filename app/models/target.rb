class Target < ActiveRecord::Base
	belongs_to :day
	validates :target, :presence => true

	def completed?
		!completed_at.blank?
	end
end
