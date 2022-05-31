class Garment < ApplicationRecord
  belongs_to :user

  belongs_to :category
  belongs_to :shape, optional: true
  belongs_to :fabric, optional: true
  belongs_to :detail, optional: true
end
