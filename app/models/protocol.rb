class Protocol < ActiveRecord::Base
validates :name, length: { maximum: 45 },presence: true,uniqueness: true
	has_and_belongs_to_many :experiment_details

end
