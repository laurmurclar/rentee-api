class Approval < ActiveRecord::Base
  belongs_to :tenant
  belongs_to :property
end
