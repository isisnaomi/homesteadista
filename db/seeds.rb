# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'
I18n.reload!

case Rails.env
when "development"
  activists = []
  category_names = [ "communityOrg",
                 "education",
                 "living",
                 "wellness",
                 "travel",
                 "policyGov",
                 "style",
                 "workMoney",
                 "environment",
                 "safety",
  ]
  categories = []
  category_counter = 0

  # Create 5 Categories
  5.times do
    categories.push Category.create!(name: category_names[category_counter],
                          description: Faker::Lorem.paragraph(2),
                          picture: Faker::LoremFlickr.image("50x60")
                          )
    category_counter = category_counter + 1

  # Create 10 Activists
  10.times do
    activists.push Activist.create!(name: Faker::Name.first_name,
                          last_name: Faker::Name.last_name,
                          email: Faker::Internet.email,
                          profile_picture: Faker::LoremFlickr.image("50x60"),
                          country: Faker::Address.country,
                          city: Faker::Address.city,
                          website: Faker::Internet.domain_name,
                          occupation: Faker::Job.title,
                          mission: Faker::Job.field,
                          story: Faker::Lorem.paragraph(2),
                          category_id: Faker::Number.between(0, 9)
                          )
  end

  end
end
