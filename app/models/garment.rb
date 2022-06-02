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
      "garments/#{category.code}_#{shape.code}.jpg"
    elsif detail.nil?
      "garments/#{category.code}_#{shape.code}_#{fabric.code}.jpg"
    else
      "garments/#{category.code}_#{shape.code}_#{fabric.code}_#{detail.code}.jpg"
    end
  end
end
