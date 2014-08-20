
CarrierWave.configure do |config|


  config.remove_previously_stored_files_after_update = false

    config.storage = :sftp
    config.sftp_user = "username"
    config.sftp_host = "glenn.c3se.chalmers.se"
   # config.sftp_base_path = ":Rails_root/projects/:id/:basename.:extension"
  config.sftp_folder = "/uploads_from_sysomics"
   config.sftp_url = "/projects/get/:id"
   config.sftp_options = {
        :password => 'password',
        :port     => 22}
    # Or use SSH keys instead (recommended):
    # config.ssh_options = { :keys => ['/path/to/your/id_rsa'] }
    
    
end

