class PublicRepository < ActiveRecord::Base
	class Platform < ActiveRecord::Base
validates :name, length: { maximum: 45 },presence: true,uniqueness: true
validates :url, length: { maximum: 1000 },presence: true,uniqueness: true
validates_format_of :url, :with => URI::regexp(%w(http https))  

validates :record_id, length: { maximum: 45 },presence: true,uniqueness: true
	has_one :publication
	end
end