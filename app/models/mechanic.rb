class Mechanic < ActiveRecord::Base
	has_many :repair, dependent: :destroy
	has_secure_password
	
	validates :name, presence: true
	validates :password, presence: true
	
	def self.search(query)
		where("name LIKE?", "%#{query}")
	end
end
