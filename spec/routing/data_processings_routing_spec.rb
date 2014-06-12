require "spec_helper"

describe DataProcessingsController do
  describe "routing" do

    it "routes to #index" do
      get("/data_processings").should route_to("data_processings#index")
    end

    it "routes to #new" do
      get("/data_processings/new").should route_to("data_processings#new")
    end

    it "routes to #show" do
      get("/data_processings/1").should route_to("data_processings#show", :id => "1")
    end

    it "routes to #edit" do
      get("/data_processings/1/edit").should route_to("data_processings#edit", :id => "1")
    end

    it "routes to #create" do
      post("/data_processings").should route_to("data_processings#create")
    end

    it "routes to #update" do
      put("/data_processings/1").should route_to("data_processings#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/data_processings/1").should route_to("data_processings#destroy", :id => "1")
    end

  end
end
