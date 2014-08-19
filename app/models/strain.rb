class Strain < ActiveRecord::Base
 has_one :sample
 validates :name, length: { maximum: 45 },presence: true,uniqueness: true
 
end
