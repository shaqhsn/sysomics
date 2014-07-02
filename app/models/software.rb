class Software < ActiveRecord::Base
				validates :name, length: { maximum: 100 },presence: true,uniqueness: true
				validates :version, length: { maximum: 100 },presence: true

				has_one:software_parameter
end
