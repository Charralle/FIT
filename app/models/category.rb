class Category < ApplicationRecord
  has_many :garments
  has_many :shapes

  validates :name, presence: true
  validates :code, presence: true
end
