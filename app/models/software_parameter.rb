class SoftwareParameter < ActiveRecord::Base
			validates :name, length: { maximum: 45 },presence: true
			validates :name, length: { maximum: 45 },presence: true
			has_one:software
end
