class DataProcessingType < ActiveRecord::Base
	validates :name, length: { maximum: 100 },presence: true,uniqueness: true
	belongs_to :data_processing
end
