# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

def create_seed_image1a(height, width)
  arr_length = height * width
  reds = []
  greens = []
  blues = []
  alphas = []
  arr_length.times do |_n|
    reds.push(0)
    greens.push(190)
    blues.push(0)
    alphas.push(255)
  end

  { reds: reds, greens: greens, blues: blues, alphas: alphas }
end

def create_seed_image1b(height, width)
  arr_length = height * width
  reds = []
  greens = []
  blues = []
  alphas = []
  arr_length.times do |_n|
    reds.push(0)
    greens.push(190)
    blues.push(0)
    alphas.push(100)
  end

  { reds: reds, greens: greens, blues: blues, alphas: alphas }
end

def create_seed_image1c(height, width)
  arr_length = height * width
  reds = []
  greens = []
  blues = []
  alphas = []
  arr_length.times do |_n|
    reds.push(0)
    greens.push(80)
    blues.push(0)
    alphas.push(100)
  end

  { reds: reds, greens: greens, blues: blues, alphas: alphas }
end

def create_seed_image2a(height, width)
  arr_length = height * width
  reds = []
  greens = []
  blues = []
  alphas = []
  arr_length.times do |_n|
    reds.push(35)
    greens.push(35)
    blues.push(rand(0..255))
    alphas.push(200)
  end

  { reds: reds, greens: greens, blues: blues, alphas: alphas }
end

image1a = create_seed_image1a(50, 200)
image1b = create_seed_image1b(50, 200)
image1c = create_seed_image1c(50, 200)
image2a = create_seed_image2a(100, 100)

Drawing.create([
                 { title: 'First Drawing', creator: 'First Creator', height: 50, width: 200, checked_out: false },
                 { title: 'Second Drawing', creator: 'Second Creator', height: 100, width: 100, checked_out: false }
               ])

Image.create([{ reds: image1a[:reds], greens: image1a[:greens], blues: image1a[:blues], alphas: image1a[:alphas], drawing_id: 1 }, { reds: image1b[:reds], greens: image1b[:greens], blues: image1b[:blues], alphas: image1b[:alphas], drawing_id: 1 }, { reds: image1c[:reds], greens: image1c[:greens], blues: image1c[:blues], alphas: image1c[:alphas], drawing_id: 1 }, { reds: image2a[:reds], greens: image2a[:greens], blues: image2a[:blues], alphas: image2a[:alphas], drawing_id: 2 }])
