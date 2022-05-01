require 'rails_helper'

RSpec.describe BlindDate, type: :model do
  let(:valid_attributes) { FactoryBot.attributes_for(:blind_date) }

  it { is_expected.to validate_presence_of(:event) }
  it 'The event date must be a later date' do
    blind_date = BlindDate.create! valid_attributes
    expect(blind_date.event).to be > Time.now
  end

  it "can't have past event" do
    subject.event = 1.day.ago
    subject.valid?
    expect(subject.errors.keys).to include :event
  end
end
