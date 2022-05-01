require "rails_helper"

RSpec.describe BlindDatesController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(get: "/blind_dates").to route_to("blind_dates#index")
    end

    it "routes to #new" do
      expect(get: "/blind_dates/new").to route_to("blind_dates#new")
    end

    it "routes to #show" do
      expect(get: "/blind_dates/1").to route_to("blind_dates#show", id: "1")
    end

    it "routes to #create" do
      expect(post: "/blind_dates").to route_to("blind_dates#create")
    end
  end
end
