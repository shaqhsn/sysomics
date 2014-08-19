class Disease < ActiveRecord::Base
validates :name, length: { maximum: 45 },presence: true,uniqueness: true
	has_one :experiment_detail

end
