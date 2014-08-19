class Project < ActiveRecord::Base

	belongs_to :user
	has_one :experiment_detail
#	has_many :assets,dependent: :destroy 
	has_many :assets,:as => :assetable,dependent: :destroy
	#accepts_nested_attributes_for :assets, :reject_if => lambda { |a| a[:content].blank? }, :allow_destroy => true


	has_many :data_sets ,dependent: :destroy
    has_many :publicaions ,dependent: :destroy


	validates :title, length: { maximum: 150 } ,uniqueness: true, presence: true
	validates :summary, presence: true
	validates :user_id, presence: true

end
