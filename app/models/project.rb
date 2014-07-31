class Project < ActiveRecord::Base

	belongs_to :user
	has_many :assets ,dependent: :destroy
	belongs_to :directories
	belongs_to :experiment
	has_many :data_set
	has_many :folders
	validates :title, length: { maximum: 150 } ,uniqueness: true, presence: true

	validates :summary, presence: true
	

	validates :user_id, presence: true

end
