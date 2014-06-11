require "spec_helper"

describe TissuesController do
  describe "routing" do

    it "routes to #index" do
      get("/tissues").should route_to("tissues#index")
    end

    it "routes to #new" do
      get("/tissues/new").should route_to("tissues#new")
    end

    it "routes to #show" do
      get("/tissues/1").should route_to("tissues#show", :id => "1")
    end

    it "routes to #edit" do
      get("/tissues/1/edit").should route_to("tissues#edit", :id => "1")
    end

    it "routes to #create" do
      post("/tissues").should route_to("tissues#create")
    end

    it "routes to #update" do
      put("/tissues/1").should route_to("tissues#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/tissues/1").should route_to("tissues#destroy", :id => "1")
    end

  end
end
