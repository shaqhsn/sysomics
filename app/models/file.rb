class File < ActiveRecord::Base
  	mount_uploader :attachment, AttachmentUploader # Tells rails to use this uploader for this model.
	has_one:project

end

