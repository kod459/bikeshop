class Customer < ActiveRecord::Base
	has_secure_password
	has_many :bikes, dependent: :destroy
	has_many :orders
	
	
	validates :name, presence: true, length: { maximum: 50}
	validates :email, presence: true
	##validates :email, uniqueness: true
	validates :phone_number, presence: true
	validates :phone_number, length: {is: 9}
	
	geocoded_by :address
	after_validation :geocode, :if => :address_changed?

	


	
	
	validates :password, presence: true
	validates :email, format: { with: /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i, on: :create }
end
