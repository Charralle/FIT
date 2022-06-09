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

User.create({})

cargo_shape = Shape.create({category_id: pants.id, name: "Cargo", description: "Pantalon Cargo, bien pratique", code: "cargo"})
straight_shape = Shape.create({category_id: pants.id, name: "Jean", description: "Pantalon Jean, bien classique", code: "straight"})
turtleneck_shape = Shape.create({category_id: top.id, name: "Turtleneck top", description: "Haut turtleneck bien dirty", code: "turtleneck"})
bustier_shape = Shape.create({category_id: top.id, name: "Bustier top", description: "Haut bustier bien dirty", code: "bustier"})
circle_shape = Shape.create({category_id: dress.id, name: "Dress circle", description: "Dress Circle bien dirty", code: "circle"})
drape_shape = Shape.create({category_id: dress.id, name: "Dress drape", description: "Dress drape bien dirty", code: "drape"})
longblazer_shape = Shape.create({category_id: jacket.id, name: "Jacket longblazer", description: "Jacket longblazer bien dirty", code: "longblazer"})

Fabric.create({shape_id: cargo_shape.id, name: "Furry", description: "100% Coton", code: "furry"})
Fabric.create({shape_id: cargo_shape.id, name: "Japwhite", description: "100% Coton", code: "japwhite"})
Fabric.create({shape_id: cargo_shape.id, name: "Camo", description: "100% Coton", code: "camo"})
Fabric.create({shape_id: cargo_shape.id, name: "Kakifluff", description: "100% Coton", code: "kakifluff"})
Fabric.create({shape_id: cargo_shape.id, name: "Lemonfluff", description: "100% Coton", code: "lemonfluff"})
Fabric.create({shape_id: cargo_shape.id, name: "Lightjeans", description: "100% Coton", code: "lightjeans"})
Fabric.create({shape_id: cargo_shape.id, name: "Navyjeans", description: "100% Coton", code: "navyjeans"})
Fabric.create({shape_id: cargo_shape.id, name: "Patchjeans", description: "100% Coton", code: "patchjeans"})
Fabric.create({shape_id: cargo_shape.id, name: "Pinkfluff", description: "100% Coton", code: "pinkfluff"})
cargo_fab = Fabric.create({shape_id: cargo_shape.id, name: "Whitejeans", description: "100% Coton", code: "whitejeans"})

Fabric.create({shape_id: straight_shape.id, name: "Furry", description: "100% Coton", code: "furry"})
Fabric.create({shape_id: straight_shape.id, name: "Japwhite", description: "100% Coton", code: "japwhite"})
Fabric.create({shape_id: straight_shape.id, name: "Camo", description: "100% Coton", code: "camo"})
Fabric.create({shape_id: straight_shape.id, name: "Kakifluff", description: "100% Coton", code: "kakifluff"})
Fabric.create({shape_id: straight_shape.id, name: "Lemonfluff", description: "100% Coton", code: "lemonfluff"})
Fabric.create({shape_id: straight_shape.id, name: "Lightjeans", description: "100% Coton", code: "lightjeans"})
Fabric.create({shape_id: straight_shape.id, name: "Navyjeans", description: "100% Coton", code: "navyjeans"})
Fabric.create({shape_id: straight_shape.id, name: "Patchjeans", description: "100% Coton", code: "patchjeans"})
Fabric.create({shape_id: straight_shape.id, name: "Pinkfluff", description: "100% Coton", code: "pinkfluff"})
straight_fab = Fabric.create({shape_id: straight_shape.id, name: "Whitejeans", description: "100% Coton", code: "whitejeans"})

Fabric.create({shape_id: turtleneck_shape.id, name: "Mermaid", description: "100% Coton", code: "mermaid"})
Fabric.create({shape_id: turtleneck_shape.id, name: "Purplehaze", description: "100% Coton", code: "purplehaze"})
Fabric.create({shape_id: turtleneck_shape.id, name: "Gold", description: "100% Coton", code: "gold"})
Fabric.create({shape_id: turtleneck_shape.id, name: "Silver", description: "100% Coton", code: "silver"})
Fabric.create({shape_id: turtleneck_shape.id, name: "Bluesilver", description: "100% Coton", code: "bluesilver"})
turtle_fab = Fabric.create({shape_id: turtleneck_shape.id, name: "Tiedie", description: "100% Coton", code: "tiedie"})

Fabric.create({shape_id: bustier_shape.id, name: "Mermaid", description: "100% Coton", code: "mermaid"})
Fabric.create({shape_id: bustier_shape.id, name: "Purplehaze", description: "100% Coton", code: "purplehaze"})
Fabric.create({shape_id: bustier_shape.id, name: "Gold", description: "100% Coton", code: "gold"})
Fabric.create({shape_id: bustier_shape.id, name: "Silver", description: "100% Coton", code: "silver"})
Fabric.create({shape_id: bustier_shape.id, name: "Bluesilver", description: "100% Coton", code: "bluesilver"})
bustier_fab = Fabric.create({shape_id: bustier_shape.id, name: "Tiedie", description: "100% Coton", code: "tiedie"})

Fabric.create({shape_id: circle_shape.id, name: "Mermaid", description: "100% Coton", code: "mermaid"})
Fabric.create({shape_id: circle_shape.id, name: "Purplehaze", description: "100% Coton", code: "purplehaze"})
Fabric.create({shape_id: circle_shape.id, name: "Gold", description: "100% Coton", code: "gold"})
Fabric.create({shape_id: circle_shape.id, name: "Ruby", description: "100% Coton", code: "ruby"})
Fabric.create({shape_id: circle_shape.id, name: "Silverspot", description: "100% Coton", code: "silverspot"})
Fabric.create({shape_id: circle_shape.id, name: "Azur", description: "100% Coton", code: "azur"})

Fabric.create({shape_id: drape_shape.id, name: "Mermaid", description: "100% Coton", code: "mermaid"})
Fabric.create({shape_id: drape_shape.id, name: "Purplehaze", description: "100% Coton", code: "purplehaze"})
Fabric.create({shape_id: drape_shape.id, name: "Gold", description: "100% Coton", code: "gold"})
Fabric.create({shape_id: drape_shape.id, name: "ruby", description: "100% Coton", code: "ruby"})
Fabric.create({shape_id: drape_shape.id, name: "silverspot", description: "100% Coton", code: "silverspot"})
Fabric.create({shape_id: drape_shape.id, name: "azur", description: "100% Coton", code: "azur"})

Fabric.create({shape_id: longblazer_shape.id, name: "Greenlines", description: "100% Coton", code: "greenlines"})
Fabric.create({shape_id: longblazer_shape.id, name: "Goldtweed", description: "100% Coton", code: "goldtweed"})
Fabric.create({shape_id: longblazer_shape.id, name: "Patchwork2", description: "100% Coton", code: "patchwork2"})
Fabric.create({shape_id: longblazer_shape.id, name: "Limefluff", description: "100% Coton", code: "limefluff"})
Fabric.create({shape_id: longblazer_shape.id, name: "Purplefluff", description: "100% Coton", code: "purplefluff"})

Detail.create({shape_id: cargo_shape.id, name: "Glitter", description: "Le Detail 1, donne un style incroyable", code: "glitter"})
Detail.create({shape_id: cargo_shape.id, name: "Japanese", description: "Le Detail 1, donne un style incroyable", code: "japanese"})
Detail.create({shape_id: cargo_shape.id, name: "Papaye", description: "Le Detail 1, donne un style incroyable", code: "papaye"})
Detail.create({shape_id: cargo_shape.id, name: "Patchwork", description: "Le Detail 1, donne un style incroyable", code: "patchwork"})
Detail.create({shape_id: cargo_shape.id, name: "Pepper", description: "Le Detail 1, donne un style incroyable", code: "pepper"})
Detail.create({shape_id: cargo_shape.id, name: "Turquoise", description: "Le Detail 1, donne un style incroyable", code: "turquoise"})
Detail.create({shape_id: cargo_shape.id, name: "None", description: "Le Detail 1, donne un style incroyable", code: "none"})
cargo_det = Detail.create({shape_id: cargo_shape.id, name: "Mushroom", description: "Le Detail 1, donne un style incroyable", code: "mushroom"})

Detail.create({shape_id: straight_shape.id, name: "Glitter", description: "Le Detail 1, donne un style incroyable", code: "glitter"})
Detail.create({shape_id: straight_shape.id, name: "Japanese", description: "Le Detail 1, donne un style incroyable", code: "japanese"})
Detail.create({shape_id: straight_shape.id, name: "Papaye", description: "Le Detail 1, donne un style incroyable", code: "papaye"})
Detail.create({shape_id: straight_shape.id, name: "Patchwork", description: "Le Detail 1, donne un style incroyable", code: "patchwork"})
Detail.create({shape_id: straight_shape.id, name: "Pepper", description: "Le Detail 1, donne un style incroyable", code: "pepper"})
Detail.create({shape_id: straight_shape.id, name: "Turquoise", description: "Le Detail 1, donne un style incroyable", code: "turquoise"})
Detail.create({shape_id: straight_shape.id, name: "None", description: "Le Detail 1, donne un style incroyable", code: "none"})
straight_det = Detail.create({shape_id: straight_shape.id, name: "Mushroom", description: "Le Detail 1, donne un style incroyable", code: "mushroom"})

Detail.create({shape_id: turtleneck_shape.id, name: "Fish", description: "Le Detail 1, donne un style incroyable", code: "fish"})
Detail.create({shape_id: turtleneck_shape.id, name: "Flower", description: "Le Detail 1, donne un style incroyable", code: "flower"})
Detail.create({shape_id: turtleneck_shape.id, name: "Goldring", description: "Le Detail 1, donne un style incroyable", code: "goldring"})
Detail.create({shape_id: turtleneck_shape.id, name: "None", description: "Le Detail 1, donne un style incroyable", code: "none"})
turtle_det = Detail.create({shape_id: turtleneck_shape.id, name: "Silverring", description: "Le Detail 1, donne un style incroyable", code: "silverring"})

Detail.create({shape_id: bustier_shape.id, name: "Fish", description: "Le Detail 1, donne un style incroyable", code: "fish"})
Detail.create({shape_id: bustier_shape.id, name: "Flower", description: "Le Detail 1, donne un style incroyable", code: "flower"})
Detail.create({shape_id: bustier_shape.id, name: "Goldring", description: "Le Detail 1, donne un style incroyable", code: "goldring"})
Detail.create({shape_id: bustier_shape.id, name: "None", description: "Le Detail 1, donne un style incroyable", code: "none"})
bustier_det = Detail.create({shape_id: bustier_shape.id, name: "Silverring", description: "Le Detail 1, donne un style incroyable", code: "silverring"})

Detail.create({shape_id: circle_shape.id, name: "Turquoise", description: "Le Detail 1, donne un style incroyable", code: "turquoise"})
Detail.create({shape_id: circle_shape.id, name: "Japanese", description: "Le Detail 1, donne un style incroyable", code: "japanese"})
Detail.create({shape_id: circle_shape.id, name: "Tiedieblue", description: "Le Detail 1, donne un style incroyable", code: "tiedieblue"})
Detail.create({shape_id: circle_shape.id, name: "Jellyfish", description: "Le Detail 1, donne un style incroyable", code: "jellyfish"})
Detail.create({shape_id: circle_shape.id, name: "None", description: "Le Detail 1, donne un style incroyable", code: "none"})
Detail.create({shape_id: circle_shape.id, name: "Flower2", description: "Le Detail 1, donne un style incroyable", code: "flower2"})

Detail.create({shape_id: drape_shape.id, name: "Turquoise", description: "Le Detail 1, donne un style incroyable", code: "turquoise"})
Detail.create({shape_id: drape_shape.id, name: "Japanese", description: "Le Detail 1, donne un style incroyable", code: "japanese"})
Detail.create({shape_id: drape_shape.id, name: "Tiedieblue", description: "Le Detail 1, donne un style incroyable", code: "tiedieblue"})
Detail.create({shape_id: drape_shape.id, name: "Jellyfish", description: "Le Detail 1, donne un style incroyable", code: "jellyfish"})
Detail.create({shape_id: drape_shape.id, name: "None", description: "Le Detail 1, donne un style incroyable", code: "none"})
Detail.create({shape_id: drape_shape.id, name: "Flower2", description: "Le Detail 1, donne un style incroyable", code: "flower2"})

Detail.create({shape_id: longblazer_shape.id, name: "Rubywhite", description: "Le Detail 1, donne un style incroyable", code: "rubywhite"})
Detail.create({shape_id: longblazer_shape.id, name: "Golden", description: "Le Detail 1, donne un style incroyable", code: "golden"})
Detail.create({shape_id: longblazer_shape.id, name: "Turquoise", description: "Le Detail 1, donne un style incroyable", code: "turquoise"})
Detail.create({shape_id: longblazer_shape.id, name: "None", description: "Le Detail 1, donne un style incroyable", code: "none"})
Detail.create({shape_id: longblazer_shape.id, name: "Emeraud", description: "Le Detail 1, donne un style incroyable", code: "emeraud"})

p "Seeds created Sir !"
