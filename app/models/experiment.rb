class Experiment < ActiveRecord::Base
	validates :name, length: { maximum: 45 },presence: true
	validates :description, length: { maximum: 1000 },presence: true
	validates :comment, length: { maximum: 1000 }
	belongs_to :platform
	belongs_to :sample
	belongs_to :disease
	belongs_to:protocol
	has_one:project


end
