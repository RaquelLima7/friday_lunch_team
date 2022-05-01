require 'rails_helper'

RSpec.describe "BlindDates", type: :request do

    let(:valid_attributes) { FactoryBot.attributes_for(:blind_date) }
    let(:invalid_attributes) { FactoryBot.attributes_for(:blind_date, event: nil) }

    describe "GET /index" do
      it "renders a successful response" do
        BlindDate.create! valid_attributes
        get blind_dates_url
        expect(response).to be_successful
    end

    describe "GET /show" do
      it "renders a successful response" do
        blind_date = BlindDate.create! valid_attributes
        get blind_date_url(blind_date)
        expect(response).to be_successful
      end
    end

    describe "GET /new" do
      it "renders a successful response" do
        get new_blind_date_url
        expect(response).to be_successful
      end
    end
  end
end
