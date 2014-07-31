class Asset < ActiveRecord::Base
belongs_to :project
belongs_to :folder
  #set up "uploaded_file" field as attached_file (using Paperclip)  
    mount_uploader :attachment, AttachmentUploader 
	validates :attachment, presence: true
		validates :project_id, presence: true


end

