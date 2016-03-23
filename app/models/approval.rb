class Approval < ActiveRecord::Base
  belongs_to :tenant
  belongs_to :property

  validates :tenant_id, uniqueness: {scope: :property_id}
end
