class Landlord < ActiveRecord::Base
  # Include default devise modules.
  devise :database_authenticatable, :registerable,
          :recoverable, :rememberable, :trackable, :validatable
          # :confirmable
  include DeviseTokenAuth::Concerns::User

  validates :f_name, presence: true
  validates :l_name, presence: true
end
