class Sample < ActiveRecord::Base
validates :name, length: { maximum: 45 },presence: true,uniqueness: true
	has_one :tissue
	has_one :organism
	has_one :cell_type
	has_one :molecule

end
