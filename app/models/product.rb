class Product < ApplicationRecord
  validates :name, presence: true, uniqueness: true
  validates :price, numericality: true, presence: true

  belongs_to :shop
end
