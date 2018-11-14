# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts 'Cleaning database...'
Restaurant.destroy_all

puts 'Creating restaurants...'
restaurants_attributes = [
  {
    name:         'Dishoom',
    address:      '7 Boundary St, London E2 7JE',
    category:  'Buzzy destination for Indian street food in Bombay-style vintage decor.',
    phone_number:  "2131362131"
  },
  {
    name:         'Pizza East',
    address:      '56A Shoreditch High St, London E1 6PQ',
    category:  'Pizzeria with industrial looks, serving rustic pizza and antipasti.',
    phone_number:        "2131362131",
  },
  {
    name:         'Takao Takano',
    address:      '33 Rue Malesherbes',
    category:  'Une cuisine française sophistiquée servie dans un cadre épuré, chic et contemporain aux tons clairs et boisés.',
    phone_number:       "2131362131",
  },
  {
    name:         'Les Terrasses de Lyon',
    address:      '25 Montée Saint-Barthélémy',
    category:  'Gastronomie fine et vue panoramique sur la ville pour le chic restaurant de l\'hôtel la Villa Florentine.',
    phone_number:        "2131362131",
  },
    {
    name:         'Burgundy Lounge',
    address:      '24 Quai Saint-Antoine',
    category:  'Cuisine gastronomique autour des vins de Bourgogne dans un cadre intimiste et élégant aux matériaux bruts.',
    phone_number:        "2131362131",
  },
    {
    name:         'L\'Inattendu',
    address:      '95 Rue Bossuet',
    category:  'Des plats traditionnels français servis dans un cadre simple ornés de tableaux modernes.',
    phone_number:        "2131362131",
  },
    {
    name:         'Au Petit Bouchon Chez Georges',
    address:      '8 Rue du Garet',
    category:  'Bouchon lyonnais convivial au cadre rustique proposant des plats typiques comme le gratin d\'andouillettes.',
    phone_number:        "2131362131",
  },
    {
    name:         'Danton',
    address:      '8 Rue Danton',
    category:  'Des plats raffinés servis dans un décor de bistrot simple et soigné avec murs de pierres et grandes ardoises.',
    phone_number:        "2131362131",
  },
    {
    name:         'Brasserie Leon de Lyon Restaurant Lyon 1',
    address:      '1 Rue Pleney',
    category:  'Terroir lyonnais et classiques de saison dans une salle avec vitraux, tableaux et boiseries ou en terrasse.',
    phone_number:        "2131362131"
  }
]
Restaurant.create!(restaurants_attributes)
puts 'Finished!'
