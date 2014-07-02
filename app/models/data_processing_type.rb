class DataProcessingType < ActiveRecord::Base
	validates :name, length: { maximum: 100 },presence: true,uniqueness: true
	has_one :data_processing
end
