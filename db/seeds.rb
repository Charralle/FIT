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

pants = Category.create({name: "Pant", code: "pants"})
top = Category.create({name: "Top", code: "top"})
dress = Category.create({name: "Dress", code: "dress"})
jacket = Category.create({name: "Jacket", code: "jacket"})

shape = Shape.create({category_id: pants.id, name: "Cargo", description: "Pantalon Cargo, bien pratique", code: "cargo"})
straight_shape = Shape.create({category_id: pants.id, name: "Jean", description: "Pantalon Jean, bien classique", code: "straight"})
top_shape = Shape.create({category_id: top.id, name: "Turtleneck top", description: "Haut turtleneck bien dirty", code: "turtleneck"})

Fabric.create({shape_id: shape.id, name: "Coton Bleu", description: "100% Coton", code: "furry"})
Fabric.create({shape_id: shape.id, name: "Coton Noir", description: "100% Coton", code: "japwhite"})
Fabric.create({shape_id: shape.id, name: "Coton Rouge", description: "100% Coton", code: "camo"})
Fabric.create({shape_id: shape.id, name: "Coton Rouge", description: "100% Coton", code: "kakifluff"})
Fabric.create({shape_id: shape.id, name: "Coton Rouge", description: "100% Coton", code: "lemonfluff"})
Fabric.create({shape_id: shape.id, name: "Coton Rouge", description: "100% Coton", code: "lightjeans"})
Fabric.create({shape_id: shape.id, name: "Coton Rouge", description: "100% Coton", code: "navyjeans"})
Fabric.create({shape_id: shape.id, name: "Coton Rouge", description: "100% Coton", code: "patchjeans"})
Fabric.create({shape_id: shape.id, name: "Coton Rouge", description: "100% Coton", code: "pinkfluff"})
Fabric.create({shape_id: shape.id, name: "Coton Rouge", description: "100% Coton", code: "whitejeans"})

Fabric.create({shape_id: straight_shape.id, name: "Coton Bleu", description: "100% Coton", code: "furry"})
Fabric.create({shape_id: straight_shape.id, name: "Coton Noir", description: "100% Coton", code: "japwhite"})
Fabric.create({shape_id: straight_shape.id, name: "Coton Rouge", description: "100% Coton", code: "camo"})
Fabric.create({shape_id: straight_shape.id, name: "Coton Rouge", description: "100% Coton", code: "kakifluff"})
Fabric.create({shape_id: straight_shape.id, name: "Coton Rouge", description: "100% Coton", code: "lemonfluff"})
Fabric.create({shape_id: straight_shape.id, name: "Coton Rouge", description: "100% Coton", code: "lightjeans"})
Fabric.create({shape_id: straight_shape.id, name: "Coton Rouge", description: "100% Coton", code: "navyjeans"})
Fabric.create({shape_id: straight_shape.id, name: "Coton Rouge", description: "100% Coton", code: "patchjeans"})
Fabric.create({shape_id: straight_shape.id, name: "Coton Rouge", description: "100% Coton", code: "pinkfluff"})
Fabric.create({shape_id: straight_shape.id, name: "Coton Rouge", description: "100% Coton", code: "whitejeans"})

Fabric.create({shape_id: top_shape.id, name: "Coton Blanc", description: "100% Coton", code: "mermaid"})
Fabric.create({shape_id: top_shape.id, name: "Coton Blanc", description: "100% Coton", code: "purplehaze"})
Fabric.create({shape_id: top_shape.id, name: "Coton Blanc", description: "100% Coton", code: "gold"})
Fabric.create({shape_id: top_shape.id, name: "Coton Blanc", description: "100% Coton", code: "silver"})
Fabric.create({shape_id: top_shape.id, name: "Coton Blanc", description: "100% Coton", code: "bluesilver"})
Fabric.create({shape_id: top_shape.id, name: "Coton Blanc", description: "100% Coton", code: "tiedie"})


Detail.create({shape_id: shape.id, name: "Detail 1", description: "Le Detail 1, donne un style incroyable", code: "glitter"})
Detail.create({shape_id: shape.id, name: "Detail 2", description: "Le Detail 1, donne un style incroyable", code: "japanese"})
Detail.create({shape_id: shape.id, name: "Detail 3", description: "Le Detail 1, donne un style incroyable", code: "papaye"})
Detail.create({shape_id: shape.id, name: "Detail 3", description: "Le Detail 1, donne un style incroyable", code: "patchwork"})
Detail.create({shape_id: shape.id, name: "Detail 3", description: "Le Detail 1, donne un style incroyable", code: "pepper"})
Detail.create({shape_id: shape.id, name: "Detail 3", description: "Le Detail 1, donne un style incroyable", code: "turquoise"})
Detail.create({shape_id: shape.id, name: "Detail 3", description: "Le Detail 1, donne un style incroyable", code: "mushroom"})

Detail.create({shape_id: straight_shape.id, name: "Detail 1", description: "Le Detail 1, donne un style incroyable", code: "glitter"})
Detail.create({shape_id: straight_shape.id, name: "Detail 2", description: "Le Detail 1, donne un style incroyable", code: "japanese"})
Detail.create({shape_id: straight_shape.id, name: "Detail 3", description: "Le Detail 1, donne un style incroyable", code: "papaye"})
Detail.create({shape_id: straight_shape.id, name: "Detail 3", description: "Le Detail 1, donne un style incroyable", code: "patchwork"})
Detail.create({shape_id: straight_shape.id, name: "Detail 3", description: "Le Detail 1, donne un style incroyable", code: "pepper"})
Detail.create({shape_id: straight_shape.id, name: "Detail 3", description: "Le Detail 1, donne un style incroyable", code: "turquoise"})
Detail.create({shape_id: straight_shape.id, name: "Detail 3", description: "Le Detail 1, donne un style incroyable", code: "mushroom"})

Detail.create({shape_id: top_shape.id, name: "Detail 3", description: "Le Detail 1, donne un style incroyable", code: "fish"})
Detail.create({shape_id: top_shape.id, name: "Detail 3", description: "Le Detail 1, donne un style incroyable", code: "flower"})
Detail.create({shape_id: top_shape.id, name: "Detail 3", description: "Le Detail 1, donne un style incroyable", code: "goldring"})
Detail.create({shape_id: top_shape.id, name: "Detail 3", description: "Le Detail 1, donne un style incroyable", code: "silverring"})

Garment.create( {user_id: 1, category_id: pants.id} )

p "Seeds created Sir !"
