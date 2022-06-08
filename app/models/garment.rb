class Garment < ApplicationRecord
  belongs_to :user

  belongs_to :category
  belongs_to :shape, optional: true
  belongs_to :fabric, optional: true
  belongs_to :detail, optional: true
  monetize :price_cents

  # need to create a second method more close than this one
  # and a second one for the image of the clothe to match with the chosen detail
  # Here and now, we're sending on /edit_shape all image "garments/#{category.code}.jpg" instead of all shapes !
  # So we have to chose fabrics twice :(

  def image_name
    if shape.nil?
      "garments/#{category.code}.png"
    elsif fabric.nil?
      "garments/#{category.code}_#{shape.code}.png"
    elsif detail.nil?
      "garments/#{category.code}_#{shape.code}_#{fabric.code}.png"
    else
      "garments/#{category.code}_#{shape.code}_#{fabric.code}_#{detail.code}.png"
    end
  end

  def price_garment
    if category.name == "Pant"
      self.price_cents = 150
    elsif category.name == "Dress"
      self.price_cents = 250
    elsif category.name == "Jacket"
      self.price_cents = 200
    elsif category.name == "Top"
      self.price_cents = 100
    end
  end
  # def items_name
  #  if shape.nil?
  #    "shapes/#{category.code}_#{???.code}.jpg"
  #  elsif fabric.nil?
  #    "fabric_name/#{fabric.code}.jpg"
  #  elsif detail.nil?
  #    "details_name/#{detail.code}.jpg"
  #  end
  # end
end
