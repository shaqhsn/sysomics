class Organism < ActiveRecord::Base
    validates :name, length: { maximum: 45 },presence: true,uniqueness: true
	has_one :sample
    
    def self.to_csv(options = {})
        CSV.generate(options) do |csv|
            csv << column_names
            all.each do |product|
                csv << product.attributes.values_at(*column_names)
            end
        end
    end

end
