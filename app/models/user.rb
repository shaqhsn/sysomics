class User < ActiveRecord::Base


	before_save { self.email = email.downcase }
	has_many :projects
	validates :first_name, length: { maximum: 45 },presence: true
	validates :last_name, length: { maximum: 45 },presence: true
	validates :username, length: { maximum: 45 },presence: true ,uniqueness: true
	VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
    validates :email, presence: true, format: { with: VALID_EMAIL_REGEX },uniqueness: { case_sensitive: false }
    has_secure_password
	validates :password, length: { minimum: 6 }
	validates_confirmation_of :password

end
