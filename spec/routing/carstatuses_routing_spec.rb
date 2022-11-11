require "rails_helper"

RSpec.describe CarstatusesController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(get: "/carstatuses").to route_to("carstatuses#index")
    end

    it "routes to #new" do
      expect(get: "/carstatuses/new").to route_to("carstatuses#new")
    end

    it "routes to #show" do
      expect(get: "/carstatuses/1").to route_to("carstatuses#show", id: "1")
    end

    it "routes to #edit" do
      expect(get: "/carstatuses/1/edit").to route_to("carstatuses#edit", id: "1")
    end


    it "routes to #create" do
      expect(post: "/carstatuses").to route_to("carstatuses#create")
    end

    it "routes to #update via PUT" do
      expect(put: "/carstatuses/1").to route_to("carstatuses#update", id: "1")
    end

    it "routes to #update via PATCH" do
      expect(patch: "/carstatuses/1").to route_to("carstatuses#update", id: "1")
    end

    it "routes to #destroy" do
      expect(delete: "/carstatuses/1").to route_to("carstatuses#destroy", id: "1")
    end
  end
end
