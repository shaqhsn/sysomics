class Publication < ActiveRecord::Base
	validates :DOI, length: { maximum: 1000 },presence: true,uniqueness: true
		belongs_to:public_repository
end
