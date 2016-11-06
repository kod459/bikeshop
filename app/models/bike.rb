class Bike < ActiveRecord::Base
	has_many :repairs
	
	
	validates :name, presence: true
	validates :maker, presence: true
	validates :price, presence: true
	validates :picture, presence: true
	


	has_many :repairs, dependent: :destroy
	belongs_to :category
	belongs_to :customer
	
end
