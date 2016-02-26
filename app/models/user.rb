class User < ActiveRecord::Base
  belongs_to :role
  has_many :authentication_tokens
  before_create :set_default_role

  devise :token_authenticatable, :database_authenticatable, :registerable, :validatable

 private
   def set_default_role
     self.role ||= Role.find_by_name('tenant')
   end
end
