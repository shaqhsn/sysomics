class DataSetType < ActiveRecord::Base
		validates :name, length: { maximum: 100 },presence: true,uniqueness: true
	    belongs_to :data_set
end
