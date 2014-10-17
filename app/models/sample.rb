class Sample < ActiveRecord::Base


   validates :name, length: { maximum: 45 },presence: true,uniqueness: true
	belongs_to :tissue
	belongs_to :organism
	belongs_to :cell_type
	belongs_to :molecule
	belongs_to :strain
    belongs_to :user
	belongs_to:project
	has_and_belongs_to_many:experiment_detail

end
