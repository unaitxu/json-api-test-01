FactoryGirl.define do
  factory :starwars, class: User do
    name { Faker::StarWars.character }
    email { Faker::Internet.email(name) }
    superhero false
  end

  factory :superhero, class: User do
    name { Faker::Superhero.name }
    email { Faker::Internet.email(name) }
    superhero true
  end
end
