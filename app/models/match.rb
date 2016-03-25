class Match < ActiveRecord::Base
  belongs_to :tenant, dependent: :destroy
  belongs_to :property, dependent: :destroy

  validates :tenant_id, uniqueness: { scope: :property_id }
end
