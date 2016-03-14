class Amenity < ActiveRecord::Base
	belongs_to :property

	validates :name, presence: true, length: { minimum: 5, maximum: 20 }
	validates :property_id. presence: true
end
