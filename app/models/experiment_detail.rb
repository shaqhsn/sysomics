class ExperimentDetail < ActiveRecord::Base
			validates :sample,presence: true
			validates :platform,presence: true
			validates :protocol,presence: true
			validates :disease,presence: true
			validates :experiment,presence: true

		belongs_to :samples
		belongs_to :platforms
		belongs_to :protocols
		belongs_to :diseases
		belongs_to :experiments

end
