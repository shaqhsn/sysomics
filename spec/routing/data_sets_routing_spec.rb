require "spec_helper"

describe DataSetsController do
  describe "routing" do

    it "routes to #index" do
      get("/data_sets").should route_to("data_sets#index")
    end

    it "routes to #new" do
      get("/data_sets/new").should route_to("data_sets#new")
    end

    it "routes to #show" do
      get("/data_sets/1").should route_to("data_sets#show", :id => "1")
    end

    it "routes to #edit" do
      get("/data_sets/1/edit").should route_to("data_sets#edit", :id => "1")
    end

    it "routes to #create" do
      post("/data_sets").should route_to("data_sets#create")
    end

    it "routes to #update" do
      put("/data_sets/1").should route_to("data_sets#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/data_sets/1").should route_to("data_sets#destroy", :id => "1")
    end

  end
end
