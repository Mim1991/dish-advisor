class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :reviews
  has_many :favourites
  has_one_attached :photo, dependent: :destroy

  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :first_name, uniqueness: { scope: :last_name }

  def find_emoji
    country = ISO3166::Country.find_country_by_name(nationality)
    if country
      country.emoji_flag
    else
      nationality.upcase
    end
  end
end
