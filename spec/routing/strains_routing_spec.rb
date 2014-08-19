require "spec_helper"

describe StrainsController do
  describe "routing" do

    it "routes to #index" do
      get("/strains").should route_to("strains#index")
    end

    it "routes to #new" do
      get("/strains/new").should route_to("strains#new")
    end

    it "routes to #show" do
      get("/strains/1").should route_to("strains#show", :id => "1")
    end

    it "routes to #edit" do
      get("/strains/1/edit").should route_to("strains#edit", :id => "1")
    end

    it "routes to #create" do
      post("/strains").should route_to("strains#create")
    end

    it "routes to #update" do
      put("/strains/1").should route_to("strains#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/strains/1").should route_to("strains#destroy", :id => "1")
    end

  end
end
