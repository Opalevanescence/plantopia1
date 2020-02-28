# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
# User.destroy_all
require "open-uri"

User.destroy_all
Plant.destroy_all

puts '-------Creating Users-------'

file = URI.open('https://i.imgur.com/F9G16oJ.png')
jess = User.new(username: 'Jessica DeWitt', email: 'jess@gmail.com', password: 'password')
  jess.photo.attach(io: file, filename: '', content_type: 'image/png')
  jess.save
file = URI.open('https://avatars0.githubusercontent.com/u/56324000?v=4')
dee = User.new(username: 'Dee Lye', email: 'dee@gmail.com', password: 'password')
  dee.photo.attach(io: file, filename: '', content_type: 'image/png')
  dee.save
file = URI.open('https://avatars1.githubusercontent.com/u/50817798?v=4')
agis = User.new(username: 'Agisilaos Karkalos', email: 'agis@gmail.com', password: 'password')
  agis.photo.attach(io: file, filename: '', content_type: 'image/png')
  agis.save
file = URI.open('https://avatars3.githubusercontent.com/u/57145417?v=4')
ja = User.new(username: 'Jahaira Castaneda', email: 'jahaira@gmail.com', password: 'password')
  ja.photo.attach(io: file, filename: '', content_type: 'image/png')
  ja.save

puts '------Creating Plants-------'

puts '-------creating trees-------'
file = URI.open('https://res.cloudinary.com/dilq1zbdq/image/upload/v1582812736/tree_amur_maple_guagmi.jpg')
one = Plant.new(
  name: 'Amur Maple',
  # remote_photo_url:'https://res.cloudinary.com/dilq1zbdq/image/upload/v1582812736/tree_amur_maple_guagmi.jpg',
  category: 'tree',
  price: (20..100).to_a.sample,
  description: 'The Amur maple is a low-growing tree excellent for small yards and other small-scale landscapes. It can be grown as a multistemmed clump or be trained into a small tree with a single trunk up to 6 feet tall.',
  user_id: jess.id)
  one.photo.attach(io: file, filename: 'nes.png', content_type: 'image/png')
  one.save!

# two = Plant.create!(name: 'Crab Apple', # picture: 'https://source.unsplash.com/random',
#               category: 'tree', price: (20..100).to_a.sample,
#               description: 'Crab apples are best grown in sunny locations with good air circulation. They have no particular soil preferences, although the soil should be well-drained. Prune the roots to transplant crab apples most easily. Tree size, flower color, fruit color, growth, and branching habit vary considerably with the specific cultivar, but many grow about 20 feet tall and are wide-spreading.',
#               user_id: jess.id)
# three = Plant.create!(name: 'Eastern Redbud', # picture: 'https://source.unsplash.com/random',
#               category: 'tree', price: (20..100).to_a.sample,
#               description: 'The Eastern ​redbud is a moderate to a rapid grower, reaching 20 to 30 feet in height. It grows red twigs and beautiful, shimmering, purple/red new leaves in spring that fade to purple/green during the summer in its southern range (USDA hardiness zones 7, 8, and 9). The purple/pink flowers appear all over the tree in spring, just before the leaves emerge.',
#               user_id: agis.id)
# four = Plant.create!(name: 'Flowering Dogwood', # picture: 'https://source.unsplash.com/random',
#               category: 'tree', price: (20..100).to_a.sample,
#               description: 'The state tree of Virginia, the flowering dogwood grows 20 to 35 feet tall and spreads 25 to 30 feet wide. It can be trained to grow with one central trunk or as a multi-trunked tree. The flowers consist of four bracts that subtend the small head of yellow flowers. The bracts can be white, pink, or red, depending on cultivar.',
#               user_id: ja.id)
# puts '------creating flowers-------'
# five = Plant.create!(name: 'African Lily', # picture: 'https://source.unsplash.com/random',
#               category: 'flower', price: (5..30).to_a.sample,
#               description: 'This long-flowering plant is very tolerant of sun and heat, and doesn\'t need to be watered often.',
#               user_id: dee.id)
# six = Plant.create!(name: 'Alstroemeria', # picture: 'https://source.unsplash.com/random',
#               category: 'flower', price: (5..30).to_a.sample,
#               description: 'Once cut, these blooms will last for weeks in a vase',
#               user_id: ja.id)
# seven = Plant.create!(name: 'Aster', # picture: 'https://source.unsplash.com/random',
#               category: 'flower', price: (5..30).to_a.sample,
#               description: 'It\'s one of our favorite perennials for a reason! Aster blooms throughout the fall, adding a bright pop of summery color to your yard when all your other flowers aren\'t quite as visible.',
#               user_id: dee.id)
# eight = Plant.create!(name: 'Azalea', # picture: 'https://source.unsplash.com/random',
#               category: 'flower', price: (5..30).to_a.sample,
#               description: 'Some consider these the flower of the South, and you can find them in many a backyard or garden south of the Mason-Dixon line.',
#               user_id: dee.id)
# nine = Plant.create!(name: 'Bluebell', # picture: 'https://source.unsplash.com/random',
#               category: 'flower', price: (5..30).to_a.sample,
#               description: 'Bluebells are a species of deciduous woodland over much of their range, flowering and leafing early before the canopy closes in late spring. They may also be found growing under bracken or Japanese knotweed, perennial plants which also form stands with a dense summer canopy.',
#               user_id: dee.id)
# ten = Plant.create!(name: 'Buttercup', # picture: 'https://source.unsplash.com/random',
#               category: 'flower', price: (5..30).to_a.sample,
#               description: 'Buttercups usually flower in the spring, but flowers may be found throughout the summer, especially where the plants are growing as opportunistic colonizers, as in the case of garden weeds.',
#               user_id: dee.id)
# eleven = Plant.create!(name: 'Carnation', # picture: 'https://source.unsplash.com/random',
#               category: 'flower', price: (5..30).to_a.sample,
#               description: 'Their different hues have varying meanings: Red signifies admiration, purple is for capriciousness, and white means good luck.',
#               user_id: dee.id)
# puts '-------creating bushes--------'
# twelve = Plant.create!(name: 'Dwarf Alberta Spruce', # picture: 'https://source.unsplash.com/random',
#               category: 'bush', price: (5..50).to_a.sample,
#               description: 'According to to horticultural expert Marianne Binetti of Planter\'s Place, this evergreen shrub grows slowly into a cone shape, even without any pruning. "It’s a great shrub for front yards," she adds of its formal look.',
#               user_id: agis.id)
# thirteen = Plant.create!(name: 'Heather', # picture: 'https://source.unsplash.com/random',
#               category: 'bush', price: (5..50).to_a.sample,
#               description: 'This evergreen perennial totes white or purple coloring, and earns points in the low-maintenance shrub department for its adaptability in acidic soil. Plus, as one of the first early spring bloomers, the plant welcomes pollinators.',
#               user_id: jess.id)
# fourteen = Plant.create!(name: 'Heather', # picture: 'https://source.unsplash.com/random',
#               category: 'bush', price: (5..50).to_a.sample,
#               description: 'For the heather lover in the North, these are the plants of choice, as opposed to the true heaths, which offer more colors but are generally less hardy. Calluna are typically hardy in Zones 5-7 but may thrive as far north as Zone 3 with adequate winter protection or snow cover. These low, mounding shrubs are the king of Scotland, the famous heather of the Highlands.',
#               user_id: dee.id)
# fifteen = Plant.create!(name: 'Skyrocket Juniper', # picture: 'https://source.unsplash.com/random',
#               category: 'bush', price: (5..50).to_a.sample,
#               description: 'As the name suggests, this evergreen grows tall and skinny, which makes it "good at creating screens or giving some height to a landscape," Binetti explains.',
#               user_id: agis.id)
# puts '------creating cacti-------'
# sixteen = Plant.create!(name: 'Angel Wings Cactus', # picture: 'https://source.unsplash.com/random',
#               category: 'cactus', price: (2..20).to_a.sample,
#               description: 'The Opunta albispina cactus or angel wings cactus is a member of the prickly pear family that grows evenly spaced clusters of hairs rather than sharp spines. The Mexican native grows clusters of pads that get no larger than two feet tall but can grow up to five feet across over time. Pale yellow blooms are followed by red, edible fruits on plants that receive a full day of sun.',
#               user_id: ja.id)
# seventeen = Plant.create!(name: 'Rat Tail Cactus', # picture: 'https://source.unsplash.com/random',
#               category: 'cactus', price: (2..20).to_a.sample,
#               description: 'If your sunniest window does not have the space to accommodate a container, consider a hanging basket with the fantastic Aporocactus flagelliformis or rat tail cactus. This plant is indigenous to Mexico, where its vibrant magenta blooms have been used in traditional medicines for heart problems. Choose a generously sized hanging basket for this fast-growing cactus—the thick stems can trail for three feet.',
#               user_id: ja.id)
# eighteen = Plant.create!(name: 'African Milk Tree', # picture: 'https://source.unsplash.com/random',
#               category: 'cactus', price: (2..20).to_a.sample,
#               description: 'Euphorbia trigona is one of those easy cactus specimens that make every grower feel like an expert. Also known as the cathedral plant, this cactus can grow more than eight feet tall, but it is a slow grower and is unlikely to grow much past four feet indoors. Small green leaves grow between thorns on the ridged stems, and if you grow the Rubra variety, the leaves are reddish-purple. If you plant it in soil with good drainage and water it twice a month, then your African milk tree may live for decades.',
#               user_id: ja.id)
# ninteen = Plant.create!(name: 'Saguaro Cactus', # picture: 'https://source.unsplash.com/random',
#               category: 'cactus', price: (2..20).to_a.sample,
#               description: 'Anyone who has visited the Sonoran desert will not soon forget the sight of a 40-foot saguaro cactus punctuating the landscape. These majestic plants may live for two centuries, and it can take up to 40 years for flowering to occur. The slow growth rate of this cactus makes it possible to grow one for many years as an indoor houseplant as well.',
#               user_id: agis.id)
# twenty = Plant.create!(name: 'Old Lady Cactus', # picture: 'https://source.unsplash.com/random',
#               category: 'cactus', price: (2..20).to_a.sample,
#               description: 'This cactus variety is as full of personality as its name suggests. Mammillaria hahniana forms small colonies of 10-inch tall spheres, which feature white hairs and spines. Healthy plants may feature a halo of pink blooms like a crown atop a head. Plant this cactus in sandy potting mix, water every other week, and in winter, water it monthly.',
#               user_id: ja.id)
# twenty_one = Plant.create!(name: 'Bishop\'s Cap', # picture: 'https://source.unsplash.com/random',
#               category: 'cactus', price: (2..20).to_a.sample,
#               description: 'The simple, sphere shape of Astrophytum ornatum looks striking with decorative gravel mulch and a substantial ceramic pot. Stiff spikes cover deeply ridged spheres, which can attain several feet in height. The plants often develop a white frosty coating that may look like a disease but is a defense mechanism to protect the plant from the sun.',
#               user_id: ja.id)

puts '----Creating Transactions---'

# Transaction.create!(
#   user_id: jess.id,
#   plant_id: nine.id)
# Transaction.create!(
#   user_id: jess.id,
#   plant_id: twenty_one.id,)
# Transaction.create!(
#   user_id: jess.id,
#   plant_id: eighteen.id,)
# Transaction.create!(
#   user_id: ja.id,
#   plant_id: twelve.id)
# Transaction.create!(
#   user_id: agis.id,
#   plant_id: six.id)
Transaction.create!(
  user_id: agis.id,
  plant_id: one.id)

puts '--------Done Creating--------'
