class Customer < ActiveRecord::Base
	has_secure_password
	has_many :bikes, dependent: :destroy
	
	validates :name, presence: true, length: { maximum: 50}
	validates :email, presence: true
	validates :email, uniqueness: true
	validates :phone_number, presence: true
	validates :phone_number, length: {is: 9}
	
	validate :is_valid_dob?

  private
  def is_valid_dob?
    if((birthday.is_a?(Date) rescue ArgumentError) == ArgumentError)
      errors.add(:birthday, 'Sorry, Invalid Date of Birth Entered.')
    end
  end

	
	
	validates :password, presence: true
	validates :email, format: { with: /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i, on: :create }
end
