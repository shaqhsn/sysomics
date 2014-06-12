class DataSet < ActiveRecord::Base
		validates :name, length: { maximum: 100 },presence: true,uniqueness: true
	    validates :comment, length: { maximum: 1000 }
		validates :create_date, length: { maximum: 100 },presence: true

	has_one :data_set_type
	has_one:file
	has_one:project
end
