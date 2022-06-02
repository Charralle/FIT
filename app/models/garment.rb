class Garment < ApplicationRecord
  belongs_to :user

  belongs_to :category
  belongs_to :shape, optional: true
  belongs_to :fabric, optional: true
  belongs_to :detail, optional: true

  def image_name
    if shape.nil?
      "garments/#{category.code}.jpg"
    elsif fabric.nil?
      "garments/#{category.code}_#{shape.code}.png"
    elsif detail.nil?
      "garments/#{category.code}_#{shape.code}_#{fabric.code}.png"
    else
      "garments/#{category.code}_#{shape.code}_#{fabric.code}_#{detail.code}.png"
    end
  end
end
