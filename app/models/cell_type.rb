class CellType < ActiveRecord::Base
validates :name, length: { maximum: 45 },presence: true,uniqueness: true
	belongs_to :sample

end
