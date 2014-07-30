class Asset < ActiveRecord::Base
belongs_to :project
belongs_to :folder
  #set up "uploaded_file" field as attached_file (using Paperclip)  
    mount_uploader :attachment, AttachmentUploader 

#validates_attachment_size :uploaded_file, :less_than => 10.megabytes    
	#validates_attachment_presence :uploaded_file  
end

