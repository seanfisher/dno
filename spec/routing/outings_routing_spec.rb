require "spec_helper"

describe OutingsController do
  describe "routing" do

    it "routes to #index" do
      get("/outings").should route_to("outings#index")
    end

    it "routes to #new" do
      get("/outings/new").should route_to("outings#new")
    end

    it "routes to #show" do
      get("/outings/1").should route_to("outings#show", :id => "1")
    end

    it "routes to #edit" do
      get("/outings/1/edit").should route_to("outings#edit", :id => "1")
    end

    it "routes to #create" do
      post("/outings").should route_to("outings#create")
    end

    it "routes to #update" do
      put("/outings/1").should route_to("outings#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/outings/1").should route_to("outings#destroy", :id => "1")
    end

  end
end
