class Employee < ApplicationRecord
  validates :name, :unit, presence: true
  attribute :restaurant, deafult: ''

  enum unit: {
    it: 0,
    hr: 1,
    administration: 2
  }
end
