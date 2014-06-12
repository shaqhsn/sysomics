class DataProcessing < ActiveRecord::Base
	belongs_to :data_set
	has_one:data_processing_type
	has_one:software
	has_one:file
	has_one:data_set
end
