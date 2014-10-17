class DataProcessing < ActiveRecord::Base


	validates :data_processing_type_id, presence: true
	validates :software_id, presence: true
	validates :data_set_id, presence: true

	belongs_to:data_processing_type
	belongs_to:software
	belongs_to:data_set
    belongs_to:user

	has_many :assets,:as => :assetable,dependent: :destroy

end
