class ExperimentDetail < ActiveRecord::Base
			validates :sample,presence: true
			validates :platform,presence: true
			validates :protocol,presence: true
			validates :disease,presence: true
			validates :experiment,presence: true

		belongs_to :sample
		belongs_to :platform
		belongs_to :protocol
		belongs_to :disease
		belongs_to :experiment

end
