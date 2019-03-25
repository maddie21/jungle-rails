class Product < ActiveRecord::Base

  has_many :reviews

  monetize :price_cents, numericality: true
  mount_uploader :image, ProductImageUploader

  belongs_to :category

  validates :name, presence: true
  validates :price, presence: true
  validates :quantity, presence: true
  validates :category, presence: true

  def review_path(review)
    id.to_s + '/reviews/' + review.id.to_s
  end

  def average_rating
    if reviews.size != 0
      reviews.inject(0.0) { |sum, review| sum + review.rating } / reviews.size
    end
  end

end
