require 'rails_helper'

RSpec.describe MappingEmployeeTeam, type: :model do
  it { is_expected.to belong_to :team }
end
