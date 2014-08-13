class DataSetType < ActiveRecord::Base
		validates :name, length: { maximum: 100 },presence: true,uniqueness: true
	    has_many :data_sets
end
