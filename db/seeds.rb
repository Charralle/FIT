# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)


p "I'm creating your seeds Sir"

Garment.destroy_all
Category.destroy_all
Shape.destroy_all
Fabric.destroy_all
Detail.destroy_all

pants = Category.create({name: "Pant", code: "pant"})
shirt = Category.create({name: "Top", code: "top"})
dress = Category.create({name: "Dress", code: "dress"})
overall = Category.create({name: "Jacket", code: "jacket"})

shape = Shape.create({category_id: pants.id, name: "Cargo", description: "Pantalon Cargo, bien pratique", code: "cargo"})
Shape.create({category_id: pants.id, name: "Jean", description: "Pantalon Jean, bien classique", code: "jean"})
Shape.create({category_id: pants.id, name: "Baggie", description: "Pantalon Baggie, bien rasta", code: "baggie"})

Fabric.create({shape_id: shape.id, name: "Coton Bleu", description: "100% Coton", code: "cotonbleu"})
Fabric.create({shape_id: shape.id, name: "Coton Noir", description: "100% Coton", code: "cotonnoir"})
Fabric.create({shape_id: shape.id, name: "Coton Rouge", description: "100% Coton", code: "cotonrouge"})

Detail.create({shape_id: shape.id, name: "Detail 1", description: "Le Detail 1, donne un style incroyable", code: "detail1"})
Detail.create({shape_id: shape.id, name: "Detail 2", description: "Le Detail 1, donne un style incroyable", code: "detail2"})
Detail.create({shape_id: shape.id, name: "Detail 3", description: "Le Detail 1, donne un style incroyable", code: "detail3"})

Garment.create( {user_id: 1, category_id: pants.id} )

p "Seeds created Sir !"
