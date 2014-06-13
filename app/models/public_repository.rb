class PublicRepository < ActiveRecord::Base
	class Platform < ActiveRecord::Base
validates :name, length: { maximum: 45 },presence: true,uniqueness: true
validates :url, length: { maximum: 1000 },presence: true,uniqueness: true
validates :record_id, length: { maximum: 45 },presence: true,uniqueness: true
	belongs_to :publication
	end
end