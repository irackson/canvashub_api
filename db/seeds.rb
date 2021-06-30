# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# def create_seed_image1a(height, width)
#   arr_length = height * width
#   bytes = []
#   arr_length.times do |_n|
#     bytes.push(0)
#     bytes.push(190)
#     bytes.push(0)
#     bytes.push(255)
#   end
#   bytes
# end

# def create_seed_image1b(height, width)
#   arr_length = height * width
#   bytes = []
#   arr_length.times do |_n|
#     bytes.push(0)
#     bytes.push(190)
#     bytes.push(0)
#     bytes.push(100)
#   end
#   bytes
# end

# def create_seed_image1c(height, width)
#   arr_length = height * width
#   bytes = []
#   arr_length.times do |_n|
#     bytes.push(0)
#     bytes.push(80)
#     bytes.push(0)
#     bytes.push(100)
#   end
#   bytes
# end

# def create_seed_image2a(height, width)
#   arr_length = height * width
#   bytes = []
#   arr_length.times do |_n|
#     bytes.push(35)
#     bytes.push(255)
#     bytes.push(rand(0..255))
#     bytes.push(100)
#   end
#   bytes
# end

# image1a = create_seed_image1a(50, 200)
# image1b = create_seed_image1b(50, 200)
# image1c = create_seed_image1c(50, 200)
# image2a = create_seed_image2a(100, 100)

# Drawing.create([
#                  { title: 'First Drawing', creator: 'First Creator', height: 50, width: 200, checked_out: false },
#                  { title: 'Second Drawing', creator: 'Second Creator', height: 100, width: 100, checked_out: false }
#                ])

# Image.create([{ bytes: image1a, drawing_id: 1 },
#               { bytes: image1b, drawing_id: 1 },
#               { bytes: image1c, drawing_id: 1 },
#               { bytes: image2a, drawing_id: 2 }])
