class Asset < ActiveRecord::Base

belongs_to :project
belongs_to :data_set

belongs_to :user

belongs_to :assetable, :polymorphic => true

    mount_uploader :attachment, AttachmentUploader 
	#validates :attachment, presence: true
	#validates :project_id, presence: true
   # validates :assetable_type, presence: true





end


