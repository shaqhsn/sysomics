class Project < ActiveRecord::Base
	  belongs_to :user
	validates :title, length: { maximum: 150 } ,uniqueness: true
	validates :summary, length: { maximum: 1000 },uniqueness: true
end
