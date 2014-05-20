class User < ActiveRecord::Base
	has_many :projects
	validates :first_name, length: { maximum: 45 }
	validates :last_name, length: { maximum: 45 }
	validates :username, length: { maximum: 45 }
	validates :email, length: { maximum: 45 }
end
