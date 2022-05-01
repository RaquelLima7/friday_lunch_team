FactoryBot.define do
  factory :employee do
    name { Faker::Name.name }
    unit { %i[it hr administration].sample }
    restaurant { Faker::Restaurant.name }
  end
end
