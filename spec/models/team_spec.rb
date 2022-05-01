require 'rails_helper'

RSpec.describe Team, type: :model do
  it { is_expected.to have_many(:mapping_employee_teams) }
end
