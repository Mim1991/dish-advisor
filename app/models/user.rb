class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :reviews
  has_many :favourite_dishes, through: :favourites, source: :dish

  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :first_name, uniqueness: { scope: :last_name }
end
