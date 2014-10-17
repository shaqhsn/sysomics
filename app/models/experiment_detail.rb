class ExperimentDetail < ActiveRecord::Base
			validates :samples,presence: true
			validates :platforms,presence: true
			validates :protocols,presence: true
			validates :disease,presence: true
			validates :name, length: { maximum: 45 },presence: true
			validates :description, length: { maximum: 1000 },presence: true
			validates :comment, length: { maximum: 1000 }
	has_and_belongs_to_many :platforms
	has_and_belongs_to_many :samples
	belongs_to :disease
	has_and_belongs_to_many :protocols
    belongs_to :user


end
