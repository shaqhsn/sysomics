class Publication < ActiveRecord::Base
	validates :DOI, length: { maximum: 1000 },presence: true,uniqueness: true
		belongs_to:public_repository
				belongs_to:project
				
				
				validates_format_of :url, :with => URI::regexp(%w(http https))  


end
