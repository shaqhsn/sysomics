class Experiment < ActiveRecord::Base
	validates :name, length: { maximum: 45 },presence: true
	validates :description, length: { maximum: 1000 },presence: true
	validates :comment, length: { maximum: 1000 }
	has_one:platform
	has-one:protocol
	has_one:sample
	has_one:disease

end
