class Week < ActiveRecord::Base
	has_many :days, -> { order(date: :asc) }
	has_many :reports
	belongs_to :user
end
