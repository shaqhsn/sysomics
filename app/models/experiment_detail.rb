class ExperimentDetail < ActiveRecord::Base
			validates :sample,presence: true
			validates :platform,presence: true
			validates :protocol,presence: true
			validates :disease,presence: true
			validates :name, length: { maximum: 45 },presence: true
			validates :description, length: { maximum: 1000 },presence: true
			validates :comment, length: { maximum: 1000 }
	belongs_to :platform
	belongs_to :sample
	belongs_to :disease
	belongs_to :protocol

end
