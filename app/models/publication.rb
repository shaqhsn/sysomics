class Publication < ActiveRecord::Base
	validates :DOI, length: { maximum: 1000 },presence: true,uniqueness: true
		has_one:public_repository
end
