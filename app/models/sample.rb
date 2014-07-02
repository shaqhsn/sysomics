class Sample < ActiveRecord::Base
validates :name, length: { maximum: 45 },presence: true,uniqueness: true
	belongs_to :tissue
	belongs_to :organism
	belongs_to :cell_type
	belongs_to :molecule

end
