class Order < ApplicationRecord
  belongs_to :user
  belongs_to :garment
  monetize :amount_cents
end
