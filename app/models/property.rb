class Property < ActiveRecord::Base
  belongs_to :landlord
  has_many :amenities
  has_many :beds

  validates :landlord_id, presence: true
  validates :street, presence: true, length: { minimum: 4, maximum: 200 }
  validates :town, presence: true, length: { minimum: 4, maximum: 70 }
  validates :county, presence: true, length: { minimum: 4, maximum: 10 }
  validates :rent, numericality: { greater_than: 0 }
  validates :n_baths, numericality: { greater_than_or_equal_to: 0 }

end
