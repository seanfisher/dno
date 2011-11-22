require "spec_helper"

describe AttributesController do
  describe "routing" do

    it "routes to #index" do
      get("/attributes").should route_to("attributes#index")
    end

    it "routes to #new" do
      get("/attributes/new").should route_to("attributes#new")
    end

    it "routes to #show" do
      get("/attributes/1").should route_to("attributes#show", :id => "1")
    end

    it "routes to #edit" do
      get("/attributes/1/edit").should route_to("attributes#edit", :id => "1")
    end

    it "routes to #create" do
      post("/attributes").should route_to("attributes#create")
    end

    it "routes to #update" do
      put("/attributes/1").should route_to("attributes#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/attributes/1").should route_to("attributes#destroy", :id => "1")
    end

  end
end
