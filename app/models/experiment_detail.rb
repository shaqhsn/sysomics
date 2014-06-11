class ExperimentDetail < ActiveRecord::Base
	
		has_many :samples
		has_many :platforms
		has_many :protocols
		has_many :diseases
		has_many :experiments

end
