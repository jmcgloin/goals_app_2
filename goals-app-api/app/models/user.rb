class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable,
         :jwt_authenticatable , jwt_revocation_strategy: JwtBlacklist
  # validates_uniqueness_of :username
  # validates_uniqueness_of :email
  validates :username, uniqueness: true
  validates :email, uniqueness: true

  has_many :goals, dependent: :destroy

end
