class Category < ActiveRecord::Base
	has_many :bikes, dependent: :destroy
	
	validates :name, presence: true
	
end
