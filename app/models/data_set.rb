class DataSet < ActiveRecord::Base
		validates :name, length: { maximum: 100 },presence: true,uniqueness: true
	    validates :comment, length: { maximum: 1000 }
		validates :create_date, length: { maximum: 100 },presence: true

	belongs_to :data_set_type
	has_many :data_processings,dependent: :destroy

	belongs_to:project
	has_many :assets,:as => :assetable,dependent: :destroy

end
