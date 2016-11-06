class Repair < ActiveRecord::Base

	belongs_to :bike
	belongs_to :mechanic
end
