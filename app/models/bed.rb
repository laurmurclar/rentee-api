class Bed < ActiveRecord::Base
	belongs_to :property

	validates :bed_type, presence: true, in: %w(single double bunk)
	validates :property_id, presence: true
end
