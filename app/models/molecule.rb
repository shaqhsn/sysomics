class Molecule < ActiveRecord::Base
validates :name, length: { maximum: 45 },presence: true,uniqueness: true
	has_one :sample

end
