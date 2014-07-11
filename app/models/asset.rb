class Asset < ActiveRecord::Base
belongs_to :user  
  
  has_attached_file :uploaded_file,
  :url => "/assets/get/:id", 
   :path => "/c3se/users/seyeho/uploads_from_sysomics/assets/:id/:basename.:extension",
    storage: :sftp,
    sftp_options: {
      host: "glenn.c3se.chalmers.se",
      user: "dum",
      password: "dum"
    }
  #set up "uploaded_file" field as attached_file (using Paperclip)  
  
validates_attachment_size :uploaded_file, :less_than => 10.megabytes    
	#validates_attachment_presence :uploaded_file  
end

