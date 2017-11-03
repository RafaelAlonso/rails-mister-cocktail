class Cocktail < ApplicationRecord
  has_many :reviews, dependent: :destroy
  has_many :doses, dependent: :destroy
  has_many :ingredients, through: :doses

  validates :name, uniqueness: true, presence: true
  validates :nationality, presence: true
  mount_uploader :photo, PhotoUploader

  def avg_rating
    self.reviews.empty? ? 0 : (self.reviews.map{ |r| r.rating }.reduce(:+) / self.reviews.length)
  end
end
