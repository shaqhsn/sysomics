class Disease < ActiveRecord::Base
validates :name, length: { maximum: 45 },presence: true,uniqueness: true
	belongs_to :experiment

end
