require 'rails_helper'

RSpec.describe Employee, type: :model do
  it { is_expected.to validate_presence_of(:name) }
  it { is_expected.to validate_presence_of(:unit) }
  it { is_expected.to define_enum_for(:unit).with_values({ it: 0, hr: 1, administration: 2 }) }

  it do
    should allow_values(' ').
      for(:restaurant)
  end
end
