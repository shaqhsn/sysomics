class Project < ActiveRecord::Base
	  belongs_to :user
	validates :title, length: { maximum: 150 }
	validates :summary, length: { maximum: 1000 }
end
