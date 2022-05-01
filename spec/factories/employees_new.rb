FactoryBot.define do
  factory :employees do
    20.times do |i|
      name { Faker::Name.name }
      unit { %i[it hr administration].sample }
      restaurant { Faker::Restaurant.name }
    end
  end
end