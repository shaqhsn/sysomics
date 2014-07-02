class Project < ActiveRecord::Base

	mount_uploader :attachment, AttachmentUploader # Tells rails to use this uploader for this model.
	belongs_to :user
	belongs_to :directories
	belongs_to :experiment
	has_many :data_set
	

	validates :title, length: { maximum: 150 } ,uniqueness: true, presence: true

	validates :summary, length: { maximum: 1000 },uniqueness: true, presence: true

	validates :user_id, presence: true

end
