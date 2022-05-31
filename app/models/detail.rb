class Detail < ApplicationRecord
  has_many :garments

  belongs_to :shape

  validates :name, presence: true
  validates :description, presence: true
  validates :code, presence: true
end
