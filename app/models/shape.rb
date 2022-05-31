class Shape < ApplicationRecord
  belongs_to :category

  has_many :garments
  has_many :fabrics
  has_many :details

  validates :name, presence: true
  validates :description, presence: true
  validates :code, presence: true
end
