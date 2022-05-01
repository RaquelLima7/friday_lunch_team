FactoryBot.define do
  factory :blind_date do
    event { Faker::Date.between(from: Date.today, to: 7.days.from_now) }
    teams { ['Team 1', 'Team 2', 'Team 3', 'Team 4', 'Team 5'] }
    employees { [['Rep. Ivory Little', 'Otis Bogisich III', 'Msgr. Lucius Robel', 'Kacy Muller'],
                ['Janessa Zieme', 'Pinkie Will', 'Prof. Eleanore Moore', 'Jennefer Kerluke DO'],
                ['Dwain VonRueden DO', 'Robert Jacobson', 'Kay Stehr', 'Isaac Abshire'],
                ['Celena Nicolas Ret.', 'Rosia Mills', 'The Hon. Maryetta Miller', 'Nova Hand LLD'],
                ['Aurelia Langworth', 'Nick Goodwin', 'Shayne Hickle', 'Sidney King']]
              }
    restaurants { ['HWN Pizza', '168 Eats', 'Sugar Juice Bar', 'Spice Coffee', 'Fat Bar & Grill'] }
    leaders { ['Otis Bogisich III', 'Pinkie Will', 'Kay Stehr', 'Celena Nicolas Ret.', 'Aurelia Langworth'] }
  end
end
