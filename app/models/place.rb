class Place < ActiveRecord::Base
	paginates_per 5
	belongs_to :user
end
