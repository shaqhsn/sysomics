class DataSet < ActiveRecord::Base
		validates :name, length: { maximum: 100 },presence: true,uniqueness: true
	    validates :comment, length: { maximum: 1000 }
		validates :create_date, length: { maximum: 100 },presence: true

	belongs_to :data_set_type
	belongs_to:file
	belongs_to:project
end
